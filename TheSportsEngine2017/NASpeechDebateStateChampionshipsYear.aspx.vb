Imports Telerik.Web.UI

Partial Class NASpeechDebateStateChampionshipsYear
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnDetail.Text = "SPEECH/DEBATE (BY YEAR)"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("NASPEECHDEBATE", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadDropDownListYear_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListYear.SelectedIndexChanged
        RadGrid1.Columns(0).HeaderText = RadDropDownListYear.SelectedValue & " SPEECH/DEBATE STATE CHAMPIONS"
    End Sub
End Class