Imports Telerik.Web.UI

Partial Class BKBStateTourneyPTSInGame
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE TOURNAMENT PTS IN GAME")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "BasketballBoys"

        lblOneColumnDetail.Text = "BOYS BASKETBALL" & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        If Not IsPostBack Then
            If Session("globalUser") = "" Then
                SqlDataSource1.SelectCommand = "SELECT * FROM IWATGview_Boys_PointsScoredInTournamentGameByWTeam_ALL WHERE strState = @state AND intWinner >= 95 ORDER BY intWinner DESC"
            Else
                SqlDataSource1.SelectCommand = "SELECT * FROM IWATGview_Boys_PointsScoredInTournamentGameByWTeam_ALL WHERE strState = @state AND intWinner >= 80 ORDER BY intWinner DESC"
            End If
        End If
        Try
            clsLog.LogEvent("BASKETBALLBOYS", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
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