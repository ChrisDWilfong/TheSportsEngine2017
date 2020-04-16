Imports Telerik.Web.UI

Partial Class OBCACoachingRecords
    Inherits RadAjaxPage

    Dim intValue As Long

    ' NOTE 
    ' SelectCommand="SELECT RANK() OVER (ORDER BY intWins DESC) As Rank, *, CASE WHEN strPhoto Is Null THEN strCoach ELSE '<a href=http://www.iwasatthegame.com/images/OKBACA/' + strPhoto + ' target=_blank><strong>' + strCoach + '</strong></a>' END AS strCoachURL FROM viewBACACoachingRecordsSUM WHERE Not strCoach Is Null ORDER BY intWins DESC">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Request.UserHostAddress.ToString = "72.198.125.78" Then
            clsLog.LogEvent("OBCACoachingRecordsBLOCK", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
            Response.Redirect("http://www.iwasatthegame.com")        ' Greg Goodrich...
        End If

        Session("globalSport") = "Baseball"
		lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL BASEBALL COACHES RECORDS (Spring & Fall - thru Spring 2020)")
		If Session("globalState") = "" Then Session("globalState") = "OK"

        lblOneColumnDetail.Text = "Oklahoma Baseball Coaches Association"

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("OBCACoachingRecords", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    'Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
    '    Dim intCount As Integer

    '    If (TypeOf e.Item Is GridDataItem AndAlso e.Item.OwnerTableView.DataSourceID = "SqlDataSource1") Then
    '        Dim lbl As Label = CType(e.Item.FindControl("numberLabel"), Label)
    '        Try
    '            intCount = CInt((e.Item.ItemIndex + 1).ToString)
    '        Catch
    '        End Try
    '        If intValue = CLng(e.Item.Cells(8).Text) Then
    '            ' There is a tie, so show nothing...
    '        Else
    '            If intValue > 9 Then
    '                lbl.Text = (e.Item.ItemIndex + 1).ToString & ".&nbsp;"
    '            Else
    '                lbl.Text = (e.Item.ItemIndex + 1).ToString & ".&nbsp;"
    '            End If
    '        End If
    '        Try
    '            intValue = CLng(e.Item.Cells(8).Text)
    '        Catch
    '        End Try
    '    End If
    'End Sub

End Class