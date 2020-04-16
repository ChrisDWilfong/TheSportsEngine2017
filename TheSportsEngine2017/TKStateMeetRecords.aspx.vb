Imports Telerik.Web.UI

Partial Class TKStateMeetRecords
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "Track"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL TRACK STATE MEET RECORDS")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        lblOneColumnDetail.Text = "1944-2017"

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            'clsLog.LogEvent("TKRecords", Me.Page.AppRelativeVirtualPath.ToString, DropDownListType.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub DropDownListType_DataBound(sender As Object, e As EventArgs) Handles DropDownListType.DataBound
        DropDownListType.Items.Insert(0, "Select Record...")
    End Sub

End Class