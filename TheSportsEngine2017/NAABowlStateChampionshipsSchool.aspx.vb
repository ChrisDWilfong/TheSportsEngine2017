Imports Telerik.Web.UI

Partial Class NAABowlStateChampionshipsSchool
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnDetail.Text = "ACADEMIC BOWL (BY SCHOOL)"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("NAACADEMICBOWL", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListSchool.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadDropDownListSchool_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListSchool.DataBound
        RadDropDownListSchool.Items.Insert(0, "Select School...")
    End Sub

    Private Sub RadDropDownListSchool_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListSchool.SelectedIndexChanged
        RadGrid1.Columns(0).HeaderText = RadDropDownListSchool.SelectedValue & " ACADEMIC BOWL STATE CHAMPIONS"
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        Dim strURL As String
        Dim strDisplay As String

        If TypeOf e.Item Is GridDataItem Then
            Dim item As GridDataItem = TryCast(e.Item, GridDataItem)
            strDisplay = item("strDisplaySchool").Text
            strURL = item("strURL").Text
            If strURL = "" Or strURL = "&nbsp;" Then
            Else
                strDisplay = strDisplay & "&nbsp;&nbsp;-&nbsp;<a href='" & strURL & "' target='_blank'>DETAILS</a>"
                item("strDisplaySchool").Text = strDisplay
            End If
        End If
    End Sub
End Class