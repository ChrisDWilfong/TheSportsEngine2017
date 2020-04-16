Imports Telerik.Web.UI

Partial Class BARecords
    Inherits System.Web.UI.Page

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "Baseball"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL RECORDS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnDetail.Text = "BASEBALL"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("FOOTBALL", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, RadDropDownListSchool.SelectedValue, Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Private Sub RadDropDownListSchool_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownListSchool.SelectedIndexChanged
        RadGrid1.Columns(1).HeaderText = RadDropDownListSchool.SelectedValue & " FOOTBALL SEASON GAMES"
        Session("globalSchool") = sender.SelectedValue
        Dim intYear As Integer = 0
        Try
            intYear = CInt(RadDropDownListYear.SelectedValue)
        Catch
        End Try
        lblSeasonInfo.Text = clsStateChampions.GetSeasonResults(Session("globalState"), Session("globalSport"), Session("globalSchool"), intYear, False)
    End Sub

    Private Sub RadDropDownListYear_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownListYear.SelectedIndexChanged
        RadGrid1.Columns(1).HeaderText = RadDropDownListSchool.SelectedValue & " FOOTBALL SEASON GAMES (" & RadDropDownListYear.SelectedValue & ")"
        Dim intYear As Integer = 0
        Try
            intYear = CInt(RadDropDownListYear.SelectedValue)
        Catch
        End Try
        lblSeasonInfo.Text = clsStateChampions.GetSeasonResults(Session("globalState"), Session("globalSport"), Session("globalSchool"), intYear, False)
    End Sub
End Class