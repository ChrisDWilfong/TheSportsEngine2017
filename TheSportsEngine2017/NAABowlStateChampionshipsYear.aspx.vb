Imports Telerik.Web.UI

Partial Class NAABowlStateChampionshipsYear
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnDetail.Text = "ACADEMIC BOWL (BY YEAR)"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("NAACADEMICBOWL", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadDropDownListYear_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListYear.SelectedIndexChanged
        RadGrid1.Columns(0).HeaderText = RadDropDownListYear.SelectedValue & " ACADEMIC BOWL STATE CHAMPIONS"
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        Dim strURL As String
        Dim strDisplay As String

        If TypeOf e.Item Is GridDataItem Then
            Dim item As GridDataItem = TryCast(e.Item, GridDataItem)
            strDisplay = item("strDisplayYear").Text
            strURL = item("strURL").Text
            If strURL = "" Or strURL = "&nbsp;" Then
            Else
                strDisplay = strDisplay & "&nbsp;&nbsp;-&nbsp;<a href='" & strURL & "' target='_blank'>DETAILS</a>"
                item("strDisplayYear").Text = strDisplay
            End If
        End If
    End Sub
End Class