Imports Telerik.Web.UI

Partial Class Article
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' Get the URL...
        Dim strURL As String = "https://cwilfong.wixsite.com/iwatgblog/blog"
        Dim ds As DataSet
        Dim strSQL As String
        Dim strHeader As String = "HIGH SCHOOL ARTICLE"

        If Request.QueryString("ar") = "1" Then
            strSQL = "SELECT * FROM tblArticles WHERE Id = " & clsFunctions.VerifyString(Request.QueryString("id"))
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

            If ds Is Nothing Then
            ElseIf ds.Tables.Count = 0 Then
            ElseIf ds.Tables(0).Rows.Count = 0 Then
            Else
                If ds.Tables(0).Rows(0).Item("strLink") Is System.DBNull.Value Then

                Else
                    strURL = ds.Tables(0).Rows(0).Item("strLink")
                    strHeader = ds.Tables(0).Rows(0).Item("strSchool") & " Article - " & ds.Tables(0).Rows(0).Item("strSource") & " " & ds.Tables(0).Rows(0).Item("datDate")
                End If
            End If

        Else
            strSQL = "SELECT * FROM viewFBFlashback_Results WHERE Id = " & clsFunctions.VerifyString(Request.QueryString("id"))
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

            If ds Is Nothing Then
            ElseIf ds.Tables.Count = 0 Then
            ElseIf ds.Tables(0).Rows.Count = 0 Then
            Else
                If ds.Tables(0).Rows(0).Item("strGameLink") Is System.DBNull.Value Then

                Else
                    strURL = ds.Tables(0).Rows(0).Item("strGameLink")
                    strHeader = ds.Tables(0).Rows(0).Item("strDisplayGame") & " - Week #" & ds.Tables(0).Rows(0).Item("intWeekNo") & " " & ds.Tables(0).Rows(0).Item("intYear")
                End If
            End If
        End If

        Me.Literal1.Text = "<iframe src='" & strURL & "' width='100%' height='8500px' frameBorder='0' scrolling='no' ></iframe>"

                    Me.Page.MetaDescription = "Oklahoma High School Article"
        Me.Page.Title = "Oklahoma High School Article"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), strHeader)
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        Try
            clsLog.LogEvent("Article", Me.Page.AppRelativeVirtualPath.ToString, Request.QueryString("id"), "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

End Class