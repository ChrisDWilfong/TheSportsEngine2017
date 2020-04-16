Imports Telerik.Web.UI

Public Class BKBGameScoring2019
    Inherits RadAjaxPage
    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            clsLog.LogEvent("BASKETBALLBOYS2019", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        Dim intCount As Integer = 0
        Dim lngValue As Long = 0

        If (TypeOf e.Item Is GridDataItem AndAlso e.Item.OwnerTableView.DataSourceID = "SqlDataSource1") Then
            Dim lbl As Label = CType(e.Item.FindControl("numberLabel"), Label)
            Try
                intCount = CInt((e.Item.ItemIndex + 1).ToString)
            Catch
            End Try
            Try
                lngValue = CLng(e.Item.Cells(4).Text)
            Catch
                lngValue = 0
            End Try
            If intValue = lngValue Then
                ' There is a tie, so show nothing...
            Else
                lbl.Text = (e.Item.ItemIndex + 1).ToString
            End If
            Try
                intValue = lngValue
            Catch
            End Try
        End If
    End Sub
End Class