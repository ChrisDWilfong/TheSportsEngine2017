Imports Telerik.Web.UI

Public Class FBPlayoffs1st
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "Football"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL PLAYOFFS 1st ROUND RECORDS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnDetail.Text = "FOOTBALL ALL-TIME (15+ years) thru 2018 Season"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Session("streakYears") = ""

        Dim strHostName As String = Request.UserAgent
        Dim strIP As String = Request.UserHostAddress

        Try
            clsLog.LogEvent("FOOTBALLPlayoffs1st", Me.Page.AppRelativeVirtualPath.ToString, "", "", strIP, Session("globalState"), Session("globalUser"), strHostName)
        Catch
        End Try

    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        If (TypeOf e.Item Is GridDataItem AndAlso e.Item.OwnerTableView.DataSourceID = "SqlDataSource1") Then
            Dim lbl As Label = CType(e.Item.FindControl("numberLabel"), Label)
            Dim strYears As String = e.Item.Cells(4).Text
            If Session("streakYears") = e.Item.Cells(4).Text Then
                lbl.Text = "&nbsp;&nbsp;"
            Else
                lbl.Text = (e.Item.ItemIndex + 1).ToString
                Session("streakYears") = e.Item.Cells(4).Text
            End If
        End If
    End Sub
End Class