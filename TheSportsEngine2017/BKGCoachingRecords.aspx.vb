Imports Telerik.Web.UI

Public Class BKGCoachingRecords
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If Session("globalUser") = "" Then
        'Else
        '    SqlDataSource1.SelectCommand = "SELECT CAST(intWins AS varchar(10)) + ' - ' + strFirstName + ' ' + strLastName + ' ' + strActive AS strDisplay, intWins FROM tblBasketballCoachingRecords WHERE strSportGenderKey = 'BasketballGirls' AND intWins >= 475 ORDER BY intWins DESC"
        'End If

        lblOneColumnHeader.Text = "<strong>OKLAHOMA HIGH SCHOOL ALL-TIME GIRLS COACHING WINS</strong>"
		lblOneColumnDetail.Text = "GIRLS BASKETBALL (as of 2/7/2020)"
		lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("BASKETBALLGIRLSCOACHING", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        If (TypeOf e.Item Is GridDataItem AndAlso e.Item.OwnerTableView.DataSourceID = "SqlDataSource1") Then
            Dim lbl As Label = CType(e.Item.FindControl("numberLabel"), Label)
            lbl.Text = (e.Item.ItemIndex + 1).ToString & ") "
        End If
    End Sub
End Class