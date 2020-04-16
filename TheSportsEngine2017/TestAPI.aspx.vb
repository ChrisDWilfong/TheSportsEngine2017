Imports System.Net.Http
Imports System.Web.Http
Imports System.Net.Http.HttpClient

Public Class TestAPI
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ds As DataSet
        'ds = GetChampionsAsync("https://locwebapi.azurewebsites.net/", "api/GetData")
    End Sub

    'Public Function GetChampionsAsync(uriURL As String, uriDetail As String) As DataSet
    '    Dim response As HttpResponseMessage = client.GetAsync("api/customer/GetAll").Result

    '    If response.IsSuccessStatusCode Then
    '        Return response
    '    End If

    'End Function

    ''Private Shared Async Function GetChampionAsync(ByVal path As String) As Task(Of DataSet)
    'Public Function GetChampionsAsync(path As String) As Object
    '    Dim ds As DataSet
    '    'Dim response As HttpResponseMessage = Await client.GetAsync(path)

    '    'If response.IsSuccessStatusCode Then
    '    '    ds = Await response.Content.ReadAsAsync(Of Product)()
    '    'End If
    '    Dim client As New HttpClient
    '    Dim objV As New Object
    '    objV = client.GetAsync(path)   
    '    Return

    'End Function

    'Public Async Function GetChampionsAsync(serverUrl As String, requestUrl As String, Optional xmlOutputFormat As Boolean = False) As Task(Of ContainerDetail)
    '    Dim result As ContainerDetail
    '    Dim client As New HttpClient
    '    Try
    '        Using client = New System.Net.Http.HttpClient()
    '            client.BaseAddress = New Uri(serverUrl)
    '            client.DefaultRequestHeaders.Accept.Clear()
    '            If xmlOutputFormat Then
    '                client.DefaultRequestHeaders.Accept.Add(New System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/xml"))
    '            Else
    '                client.DefaultRequestHeaders.Accept.Add(New System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"))
    '            End If
    '            Dim response As System.Net.Http.HttpResponseMessage = Await client.GetAsync(requestUrl)
    '            response.EnsureSuccessStatusCode()
    '            result = Await response.Content.ReadAsAsync(Of MyClass)()
    '        End Using
    '    Catch ex As System.Net.Http.HttpRequestException
    '        'LogStatus(ex.Message.ToString)
    '        Throw
    '    End Try
    '    Return result
    'End Function

End Class