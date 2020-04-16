Imports Telerik.Web.UI

Partial Class NAJazzStateChampionshipsSchool
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnDetail.Text = "JAZZ BAND (BY SCHOOL)"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("NAJAZZBAND", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListSchool.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadDropDownListSchool_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListSchool.DataBound
        RadDropDownListSchool.Items.Insert(0, "Select School...")
    End Sub

    Private Sub RadDropDownListSchool_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListSchool.SelectedIndexChanged
        RadGrid1.Columns(0).HeaderText = RadDropDownListSchool.SelectedValue & " JAZZ BAND STATE CHAMPIONS"
    End Sub
End Class