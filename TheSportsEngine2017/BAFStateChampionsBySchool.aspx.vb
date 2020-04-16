Imports Telerik.Web.UI

Partial Class BAFStateChampionsBySchool
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONSHIPS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "BaseballFall"

        lblOneColumnDetail.Text = "FALL BASEBALL STATE CHAMPIONSHIPS GAMES (by School)"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("BAFBySchool", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListSchool.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadDropDownListSchool_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListSchool.DataBound
        RadDropDownListSchool.Items.Insert(0, "Select School...")
    End Sub

    Private Sub RadDropDownListSchool_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListSchool.SelectedIndexChanged
        RadGrid1.Columns(0).HeaderText = RadDropDownListSchool.SelectedValue & " FALL BASEBALL STATE CHAMPIONSHIP GAMES"
    End Sub
End Class