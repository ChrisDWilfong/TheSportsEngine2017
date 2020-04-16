Imports Telerik.Web.UI

Partial Class TitleCount
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim intYear As Integer = ConfigurationManager.AppSettings("CurrentYear")

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        If Request.QueryString("y") Is Nothing Then
        ElseIf Request.QueryString("y") = "2017" Then
            intYear = 2017
        ElseIf Request.QueryString("y") = "2016" Then
            intYear = 2016
        ElseIf Request.QueryString("y") = "2015" Then
            intYear = 2015
        ElseIf Request.QueryString("y") = "2014" Then
            intYear = 2014
        ElseIf Request.QueryString("y") = "2013" Then
            intYear = 2013
        End If

        Session("globalSport") = "ALL"

        lblOneColumnHeader.Text = intYear - 1 & "-" & intYear & " State Championship Count"
        Page.Title = intYear - 1 & "-" & intYear & " High School State Championships"

        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnDetail.Text = "ALL SPORTS"

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        SqlDataSource1.SelectCommand = clsSQL.GetSQLSportsStateChampionshipsALLForYear(intYear)
        RadGrid1.DataBind()

        Try
            clsLog.LogEvent("TitleCount", Me.Page.AppRelativeVirtualPath.ToString, intYear, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        Dim intCount As Integer = 0

        If (TypeOf e.Item Is GridDataItem AndAlso e.Item.OwnerTableView.DataSourceID = "SqlDataSource1") Then
            Dim lbl As Label = CType(e.Item.FindControl("numberLabel"), Label)
            Try
                intCount = CInt((e.Item.ItemIndex + 1).ToString)
            Catch
            End Try
            If intValue = CLng(e.Item.Cells(3).Text) Then
                ' There is a tie, so show nothing...
            Else
                lbl.Text = (e.Item.ItemIndex + 1).ToString
            End If
            Try
                intValue = CLng(e.Item.Cells(3).Text)
            Catch
            End Try
        End If
    End Sub
End Class