Imports Telerik.Web.UI

Partial Class BAProPlayers
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), " HIGH SCHOOL MLB BASEBALL PLAYERS")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text


        Try
            clsLog.LogEvent("BAProPlayers", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListPlayers.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadDropDownListPlayers_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListPlayers.SelectedIndexChanged
        Dim ds As DataSet
        Dim id As Long = 0

        If RadDropDownListPlayers.SelectedIndex = -1 Then
            id = 0
        Else
            id = RadDropDownListPlayers.SelectedValue
        End If
        If id > 0 Then
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT * FROM tblStatLinks WHERE Id = " & id)
            If ds Is Nothing Then
            ElseIf ds.Tables.Count = 0 Then
            ElseIf ds.Tables(0).Rows.Count = 0 Then
            Else
                lblOneColumnDetail.Text = "CAREER STATS FOR " & ds.Tables(0).Rows(0).Item("strPlayer") & " - " & ds.Tables(0).Rows(0).Item("strHighSchool") & " " & ds.Tables(0).Rows(0).Item("intYearGrad")
                lblOneColumnDetail0.Text = lblOneColumnDetail.Text
                If Not ds.Tables(0).Rows(0).Item("strPhoto") Is System.DBNull.Value Then
                    imgPlayer.ImageUrl = ds.Tables(0).Rows(0).Item("strPhoto")
                    imgPlayer.Visible = True
                Else
                    imgPlayer.Visible = False
                End If
                Session("HTMLLink") = ds.Tables(0).Rows(0).Item("strLink")
            End If
        End If

    End Sub

    Private Sub RadDropDownListPlayers_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListPlayers.DataBound
        RadDropDownListPlayers.Items.Insert(0, "Select Player...")
    End Sub
End Class