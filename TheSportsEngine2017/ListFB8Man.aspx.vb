Imports Telerik.Web.UI

Partial Class ListFB8Man
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Me.Page.MetaDescription = "Oklahoma High School 8 Man Football Teams ALL-TIME"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL FOOTBALL<br>ALL-TIME 8-MAN TEAMS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        Try
            clsLog.LogEvent("LISTFB8Man", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

End Class