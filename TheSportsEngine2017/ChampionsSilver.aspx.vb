﻿Imports Telerik.Web.UI

Partial Class ChampionsSilver
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), " 2018-19 TOP 2 FINISHES (GOLD/SILVER)")
        lblOneColumnDetail.Text = "126 schools finished in the Top 2. Who brought home the most GOLD or SILVER this season in Oklahoma High School Sports?"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("CHAMPIONSSilver", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
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
            Try
                If intValue = CLng(e.Item.Cells(4).Text) Then
                    ' There is a tie, so show nothing...
                Else
                    lbl.Text = (e.Item.ItemIndex + 1).ToString & " "
                End If
            Catch
            End Try
            Try
                intValue = CLng(e.Item.Cells(4).Text)
            Catch
            End Try
        End If
    End Sub
End Class