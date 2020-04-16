Partial Class ucShowPixLB
    Inherits System.Web.UI.UserControl

    Public strImages As String
    Public strTooltips As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strSQL As String
        Dim ds As DataSet
        Dim x As Integer
        Dim strImage As String
        Dim strToolTip As String
        Dim strThumbnail As String
        Dim intCount As Integer
        Dim strImageURL As String

        Dim strState As String = ""
        Dim strSchool As String = ""
        Dim id As Long = 0
        Dim strText As String = ""

        'Parent.Page.Title = "Trophy Case"
        Parent.Page.Title = Session("results")
        strImageURL = System.Configuration.ConfigurationSettings.AppSettings("siteURLImages")

        If Request.QueryString("title") = "" Then
        Else
            lblTrophyCase.Text = Request.QueryString("title")
        End If

        If Request.QueryString("st") Is Nothing Then
            strState = "OK"
        Else
            strState = Request.QueryString("st")
        End If

        strSchool = Request.QueryString("sc")

        id = 0
        Try
            id = Session("id")
        Catch
            id = 0
        End Try

        If id = 0 Then
            id = Request.QueryString("id")
        End If

        'If id = 0 Then
        'id = Session("id")
        'End If

        If id = -99 Then
            strSQL = "SELECT TOP 12 * FROM viewStateChampionsImages ORDER BY id DESC"
        ElseIf id > 0 Then
            strSQL = "SELECT * FROM viewStateChampionsImages WHERE idStateChampion = " & id & " ORDER BY intSort"
        ElseIf strState = "" Then
            strSQL = "SELECT * FROM viewStateChampionsImages WHERE idStateChampion = " & id & " ORDER BY intSort"
        Else
            strSQL = "SELECT * FROM viewStateChampionsImages WHERE (strState = '" & strState & "') AND (strSchool = '" & strSchool & "' OR strSchoolRU = '" & strSchool & "') ORDER BY intSort"
        End If

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        strImages = ""
        strTooltips = ""
        strImage = ""
        strToolTip = ""
        strThumbnail = ""
        strText = ""
        intCount = 0

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To ds.Tables(0).Rows.Count - 1
                intCount = intCount + 1
                strImage = ds.Tables(0).Rows(x).Item("strImage")

                If Left(strImage, 5) = "OSSAA" Then
                    strToolTip = Left(strImage, 9) & "TN" & Mid(strImage, 10, 200)
                Else
                    strToolTip = Replace(strImage, "images", "thumbnails")
                End If
                strThumbnail = strToolTip

                If ds.Tables(0).Rows(x).Item("strAltText") Is System.DBNull.Value Then
                    strText = ""
                Else
                    strText = ds.Tables(0).Rows(x).Item("strAltText")
                    strText = strText.Replace("Class ALL", "")
                End If
                strImages = strImages & "<a class='vlightbox1' href='" & strImageURL & "data/" & strImage & "' title=''><img src='" & strImageURL & "data/" & strToolTip & "' alt=''/>" & strText & "</a>"
            Next x
        End If

        Session("strImages") = strImages
        Session("Facebook") = clsFunctions.GetFacebook(id)

    End Sub


End Class