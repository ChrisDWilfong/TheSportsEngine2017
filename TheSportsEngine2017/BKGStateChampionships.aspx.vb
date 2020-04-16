﻿Imports Telerik.Web.UI

Partial Class BKGStateChampionships
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "BasketballGirls"

        lblOneColumnDetail.Text = "GIRLS BASKETBALL" & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Me.Title = "ALL-TIME State Champions Oklahoma High School GIRLS Basketball"

        ' Hide the Photo and State Title Talk Columns...
        If Session("globalState") = "OK" Then
            RadGrid1.MasterTableView.Columns(2).Visible = False
        Else
            RadGrid1.MasterTableView.Columns(0).Visible = False
            RadGrid1.MasterTableView.Columns(2).Visible = False
        End If

        Try
            clsLog.LogEvent("BASKETBALLGIRLS", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, Session("globalState"), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Private Sub RadDropDownListYear_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListYear.SelectedIndexChanged
        RadGrid1.Columns(1).HeaderText = RadDropDownListYear.SelectedValue & " STATE CHAMPIONS"
        lblArrow.Visible = True
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        On Error Resume Next
        Dim objControl As Object = e.Item.Controls(2).Controls(1)
        ' Turn OFF the Photo button?
        If objControl Is Nothing Then
        Else
            If objControl.CommandArgument = "" Then
                objControl.Visible = False
            Else
                ' Do nothing...
            End If
        End If
    End Sub
End Class