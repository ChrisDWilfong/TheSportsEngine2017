Imports System.Security.Cryptography

Class TwitterApi

    '   var twitter = New TwitterApi(consumerKey, consumerKeySecret, accessToken, accessTokenSecret);
    '   var response = await twitter.Tweet("This is my first automated tweet!");
    '   Console.WriteLine(response);

    Const TwitterApiBaseUrl As String = "https://api.twitter.com/1.1/"
    ReadOnly consumerKey, consumerKeySecret, accessToken, accessTokenSecret As String
    ReadOnly sigHasher As HMACSHA1
    ReadOnly epochUtc As DateTime = New DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc)

    Public Sub New(ByVal consumerKey As String, ByVal consumerKeySecret As String, ByVal accessToken As String, ByVal accessTokenSecret As String)
        Me.consumerKey = consumerKey
        Me.consumerKeySecret = consumerKeySecret
        Me.accessToken = accessToken
        Me.accessTokenSecret = accessTokenSecret
        sigHasher = New HMACSHA1(New ASCIIEncoding().GetBytes(String.Format("{0}&{1}", consumerKeySecret, accessTokenSecret)))
    End Sub

    Public Function Tweet(ByVal text As String) As Task(Of String)
        Dim data = New Dictionary(Of String, String) From {
            {"status", text},
            {"trim_user", "1"}
        }
        Return SendRequest("statuses/update.json", data)
    End Function

    Private Function SendRequest(ByVal url As String, ByVal data As Dictionary(Of String, String)) As Task(Of String)
        Dim fullUrl = TwitterApiBaseUrl & url
        Dim timestamp = CInt(((DateTime.UtcNow - epochUtc).TotalSeconds))
        data.Add("oauth_consumer_key", consumerKey)
        data.Add("oauth_signature_method", "HMAC-SHA1")
        data.Add("oauth_timestamp", timestamp.ToString())
        data.Add("oauth_nonce", "a")
        data.Add("oauth_token", accessToken)
        data.Add("oauth_version", "1.0")
        data.Add("oauth_signature", GenerateSignature(fullUrl, data))
        Dim oAuthHeader As String = GenerateOAuthHeader(data)
        Dim formData = New FormUrlEncodedContent(data.Where(Function(kvp) Not kvp.Key.StartsWith("oauth_")))
        Return SendRequest(fullUrl, oAuthHeader, formData)
    End Function

    Private Function GenerateSignature(ByVal url As String, ByVal data As Dictionary(Of String, String)) As String
        Dim sigString = String.Join("&", data.Union(data).[Select](Function(kvp) String.Format("{0}={1}", Uri.EscapeDataString(kvp.Key), Uri.EscapeDataString(kvp.Value))).OrderBy(Function(s) s))
        Dim fullSigData = String.Format("{0}&{1}&{2}", "POST", Uri.EscapeDataString(url), Uri.EscapeDataString(sigString.ToString()))
        Return Convert.ToBase64String(sigHasher.ComputeHash(New ASCIIEncoding().GetBytes(fullSigData.ToString())))
    End Function

    Private Function GenerateOAuthHeader(ByVal data As Dictionary(Of String, String)) As String
        Return "OAuth " & String.Join(", ", data.Where(Function(kvp) kvp.Key.StartsWith("oauth_")).[Select](Function(kvp) String.Format("{0}=""{1}""", Uri.EscapeDataString(kvp.Key), Uri.EscapeDataString(kvp.Value))).OrderBy(Function(s) s))
    End Function

    Private Async Function SendRequest(ByVal fullUrl As String, ByVal oAuthHeader As String, ByVal formData As FormUrlEncodedContent) As Task(Of String)
        Using http = New HttpClient()
            http.DefaultRequestHeaders.Add("Authorization", oAuthHeader)
            Dim httpResp = Await http.PostAsync(fullUrl, formData)
            Dim respBody = Await httpResp.Content.ReadAsStringAsync()
            Return respBody
        End Using
    End Function
End Class

