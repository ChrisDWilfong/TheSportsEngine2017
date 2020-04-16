Imports Telerik.Web.UI

Partial Class WR4TimeChampions
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "Wrestling"

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL 4-TIME INDIVIDUAL STATE CHAMPIONS")
        Me.Page.Title = lblOneColumnHeader.Text

		lblOneColumnDetail.Text = "WRESTLING (1922-2020)"
		lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("WRESTLING-4TIME", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound

    End Sub
End Class