Imports Telerik.Web.UI

Partial Class BKBUndefeated
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Me.Page.Title = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL BOYS BASKETBALL UNDEFEATED TEAMS")
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL ALL-TIME UNDEFEATED TEAMS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "BasketballBoys"

        lblOneColumnDetail.Text = "BOYS BASKETBALL" & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("BASKETBALLBOYS-0", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound

    End Sub
End Class