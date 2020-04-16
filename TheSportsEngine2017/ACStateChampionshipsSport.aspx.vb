Imports Telerik.Web.UI

Partial Class ACStateChampionshipsSport
    Inherits System.Web.UI.Page

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL<br>STATE CHAMPIONSHIPS")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        lblOneColumnDetail.Text = "ACADEMIC (BY SPORT)"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("ACADEMICSPORT", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListSport.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadDropDownListSport_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownListSport.SelectedIndexChanged
        RadGrid1.Columns(0).HeaderText = RadDropDownListSport.SelectedValue & " ACADEMIC STATE CHAMPIONS"
    End Sub
End Class