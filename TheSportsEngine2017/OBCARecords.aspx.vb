Imports Telerik.Web.UI

Partial Class OBCARecords
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If Request.UserHostAddress.ToString = "72.198.125.78" Then
        '    clsLog.LogEvent("OBCARecordsBLOCK", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        '    Response.Redirect("http://www.iwasatthegame.com")        ' Greg Goodrich...
        'End If

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        If Not IsPostBack Then
            If Request.QueryString("record") = "1" Then
                DropDownListType.SelectedValue = "Most RBIS In A Game"
            ElseIf Request.QueryString("record") = "2" Then
                DropDownListType.SelectedValue = "Most Homeruns In One Game By Player"
            ElseIf Request.QueryString("record") = "3" Then
                DropDownListType.SelectedValue = "Most Times Hit By A Pitch In A Season"
            ElseIf Request.QueryString("record") = "4" Then
                DropDownListType.SelectedValue = "Most Hits In A Season"
            ElseIf Request.QueryString("record") = "5" Then
                DropDownListType.SelectedValue = "Most Homeruns In A Season"
            ElseIf Request.QueryString("record") = "6" Then
                DropDownListType.SelectedValue = "Most Stolen Bases In A Career"
            ElseIf Request.QueryString("record") = "7" Then
                DropDownListType.SelectedValue = "Most Grand Slams In One Inning"       ' 7
            ElseIf Request.QueryString("record") = "8" Then
                DropDownListType.SelectedValue = "Most Runs Scored In A Career"         ' 8
            ElseIf Request.QueryString("record") = "9" Then
                DropDownListType.SelectedValue = "Most Homeruns In A Career"            ' 9
            ElseIf Request.QueryString("record") = "10" Then
                DropDownListType.SelectedValue = "Most Homeruns In A Career - Spring & Fall"            ' 10
            ElseIf Request.QueryString("record") = "11" Then
                DropDownListType.SelectedValue = "Most Wins In A Career"
            ElseIf Request.QueryString("record") = "12" Then
                DropDownListType.SelectedValue = "Most Stolen Bases In A Season (TEAM)"
            ElseIf Request.QueryString("record") = "13" Then
                DropDownListType.SelectedValue = "Most Stolen Bases In A Career"
            ElseIf Request.QueryString("record") = "14" Then
                DropDownListType.SelectedValue = "Most Stolen Bases Consecutive"
            End If
        End If

        Session("globalSport") = "Baseball"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL BASEBALL RECORDS")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        lblOneColumnDetail.Text = "Oklahoma Baseball Coaches Association (thru 2018-19 season)"

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("OBCARecords", Me.Page.AppRelativeVirtualPath.ToString, DropDownListType.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub DropDownListType_DataBound(sender As Object, e As EventArgs) Handles DropDownListType.DataBound
        DropDownListType.Items.Insert(0, "Select Record...")
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        Dim intCount As Integer = 0

        If (TypeOf e.Item Is GridDataItem AndAlso e.Item.OwnerTableView.DataSourceID = "SqlDataSource1") Then
            Dim lbl As Label = CType(e.Item.FindControl("numberLabel"), Label)
            Try
                intCount = CInt((e.Item.ItemIndex + 1).ToString)
            Catch
            End Try
            If intValue = CLng(e.Item.Cells(5).Text) Then
                ' There is a tie, so show nothing...
            Else
                If intValue > 9 Then
                    lbl.Text = (e.Item.ItemIndex + 1).ToString & ".&nbsp;"
                Else
                    lbl.Text = (e.Item.ItemIndex + 1).ToString & ".&nbsp;"
                End If
            End If
                Try
                intValue = CLng(e.Item.Cells(5).Text)
            Catch
            End Try
        End If
    End Sub
End Class