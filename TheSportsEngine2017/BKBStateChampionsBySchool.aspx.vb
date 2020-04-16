Imports Telerik.Web.UI

Partial Class BKBStateChampionsBySchool
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), " HIGH SCHOOL STATE CHAMPIONSHIPS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "BasketballBoys"

        lblOneColumnDetail.Text = "BOYS BASKETBALL STATE CHAMPIONSHIP GAMES (by School)"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("BKBBySchool", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListSchool.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadDropDownListSchool_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListSchool.DataBound
        RadDropDownListSchool.Items.Insert(0, "Select School...")
    End Sub

    Private Sub RadDropDownListSchool_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListSchool.SelectedIndexChanged
        RadGrid1.Columns(0).HeaderText = RadDropDownListSchool.SelectedValue & " BOYS BASKETBALL STATE CHAMPIONS"
    End Sub
End Class