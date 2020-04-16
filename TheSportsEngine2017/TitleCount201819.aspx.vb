Imports Telerik.Web.UI

Partial Class TitleCount201819
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "ALL"
        lblOneColumnHeader.Text = "2018-2019 State Championship Count"
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnDetail.Text = "ALL SPORTS"

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Me.SqlDataSource1.SelectCommand = clsSQL.GetSQLSportsStateChampionshipsALLForYear(2019)

        Try
            clsLog.LogEvent("TitleCount", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
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
            If intValue = CLng(e.Item.Cells(3).Text) Then
                ' There is a tie, so show nothing...
            Else
                lbl.Text = (e.Item.ItemIndex + 1).ToString
            End If
            Try
                intValue = CLng(e.Item.Cells(3).Text)
            Catch
            End Try
        End If
    End Sub
End Class