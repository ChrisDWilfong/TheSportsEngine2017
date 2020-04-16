Imports Telerik.Web.UI

Partial Class BAStateTourneyRUNSInGame
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE TOURNAMENT RUNS IN GAME")
        Session("globalSport") = "Baseball"
        lblOneColumnDetail.Text = "BASEBALL " & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Session("globalUser") = ""

        If Not IsPostBack Then
            If Session("globalUser") = "" Then
                SqlDataSource1.SelectCommand = "SELECT * FROM IWATGview_Baseball_PointsScoredInTournamentGameByWTeam_ALL WHERE strState = @state AND intWinner >= 21 ORDER BY intWinner DESC"
            Else
                SqlDataSource1.SelectCommand = "SELECT * FROM IWATGview_Baseball_PointsScoredInTournamentGameByWTeam_ALL WHERE strState = @state AND intWinner >= 13 ORDER BY intWinner DESC"
            End If
        End If
        Try
            clsLog.LogEvent("BASEBALL", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        Dim intCount As Integer = 0

        If (TypeOf e.Item Is GridDataItem AndAlso e.Item.OwnerTableView.DataSourceID = "SqlDataSource1") Then
            Dim lbl As Label = CType(e.Item.FindControl("numberLabel"), Label)
            Try
                intCount = CInt((e.Item.ItemIndex + 1).ToString)
            Catch
            End Try
            If intValue = CLng(e.Item.Cells(4).Text) Then
                ' There is a tie, so show nothing...
            Else
                lbl.Text = (e.Item.ItemIndex + 1).ToString
            End If
            Try
                intValue = CLng(e.Item.Cells(4).Text)
            Catch
            End Try
        End If
    End Sub
End Class