Imports System
Imports Telerik.Web.UI
Imports System.Web.UI.WebControls
Imports System.Collections.Generic
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Data

Partial Class FBTeamPages
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "Football"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL FOOTBALL")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        ' NOTE : change OSSAARankings.viewFootballScores...
        lblOneColumnDetail.Text = "TEAM PAGES"

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("FOOTBALLTEAMPAGES", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Protected Sub RadTileList1_TileCreated1(sender As Object, e As TileListEventArgs)
        'work with common settings for all tiles
        e.Tile.PeekTemplateSettings.ShowInterval = 0
        e.Tile.PeekTemplateSettings.CloseDelay = 0
        e.Tile.PeekTemplateSettings.ShowPeekTemplateOnMouseOver = True
        e.Tile.PeekTemplateSettings.HidePeekTemplateOnMouseOut = True
        e.Tile.PeekTemplateSettings.AnimationDuration = 800
        'using properties specific for a given tile type - check the tile type first
        Dim tile As RadImageAndTextTile = TryCast(e.Tile, RadImageAndTextTile)
        If Not Object.Equals(tile, Nothing) Then
            tile.ImageWidth = 150
        End If

    End Sub
End Class