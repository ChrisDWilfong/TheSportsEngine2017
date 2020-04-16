Imports Telerik.Web.UI

Partial Class StateChampionshipsSchool
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        If Session("globalState") = "" Then Session("globalState") = "OK"
        Dim strURL As String = sender.Request.Url.ToString
        'If strURL.ToUpper.Contains("OSSAA.IWASATTHEGAME") Or strURL.ToUpper.Contains("LOCALHOST") Then
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONSHIPS")
        lblOneColumnDetail.Text = ""
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        'Else
        '    tblOSSAAActivities.Visible = False
        'End If

    End Sub

    Private Sub RadDropDownListActivities_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListActivities.SelectedIndexChanged
        RadGrid1.Columns(0).HeaderText = RadDropDownListSchools.SelectedValue & " STATE CHAMPIONS"
    End Sub

    Private Sub RadDropDownListSchool_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListSchools.SelectedIndexChanged
        RadGrid1.Columns(0).HeaderText = RadDropDownListSchools.SelectedValue & " STATE CHAMPIONS"
    End Sub

    Private Sub RadDropDownListSchools_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListSchools.DataBound
        RadDropDownListSchools.Items.Insert(0, "Select School...")
    End Sub
End Class