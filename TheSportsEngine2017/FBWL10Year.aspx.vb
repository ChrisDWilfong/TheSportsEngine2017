Imports Telerik.Web.UI

Partial Class FBWL10Year
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "Football"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL TEAM W-L Record 10 Seasons (" & (ConfigurationManager.AppSettings("NextYear") - 10) & "-" & (ConfigurationManager.AppSettings("NextYear") - 1) & ")")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        Dim strDetail As String
        strDetail = "FOOTBALL<br>"
        strDetail = strDetail & "<a href='FBAllTimeWL.aspx'>ALL-TIME (since 1957)</a>&nbsp;&nbsp;<a href='FBWL5Year.aspx'>5 Seasons</a>&nbsp;&nbsp;<a href='FBWL10Year.aspx'>10 Seasons</a>&nbsp;&nbsp;<a href='FBWL15Year.aspx'>15 Seasons</a>"
        lblOneColumnDetail.Text = strDetail

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("FOOTBALLWL10", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

End Class