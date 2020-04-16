Imports Telerik.Web.UI
Imports System.Linq

Public Class StateTourney
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub RadDropDownSports_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownSports.SelectedIndexChanged
        SqlDataSource2.DataBind()
    End Sub

    Private Sub RadDropDownYear_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownYear.SelectedIndexChanged
    End Sub

    Private Sub RadDropDownClass_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownClass.SelectedIndexChanged
        SqlDataSourceWrestlingDual.DataBind()
        RadGrid1.DataBind()
    End Sub

    Private Sub RadGrid1_BatchEditCommand(sender As Object, e As GridBatchEditingEventArgs) Handles RadGrid1.BatchEditCommand
        ' Let's do the bactch update...
        Dim objCommand As New Hashtable
        Dim objCommandOld As New Hashtable
        Dim values As ICollection
        Dim strSQL As String = ""
        Dim strSQLUpdate As String = ""
        Dim strSQLInsertFields As String = ""
        Dim strSQLInsertValues As String = ""
        Dim id As Long = 0

        For Each command As GridBatchEditingCommand In e.Commands
            objCommand = command.NewValues
            objCommandOld = command.OldValues
            values = objCommand.Values
            For Each DE As DictionaryEntry In objCommand
                If DE.Key = "Id" Then
                    id = DE.Value
                ElseIf DE.Value Is System.DBNull.Value Then
                    ' skip it...
                Else
                    If id = 0 Then
                        If strSQLInsertFields = "" Then
                            strSQLInsertFields = DE.Key
                            strSQLInsertValues = "'" & DE.Value & "'"
                        Else
                            strSQLInsertFields = strSQLInsertFields & ", " & DE.Key
                            strSQLInsertValues = strSQLInsertValues & ", '" & DE.Value & "'"
                        End If
                    Else
                        If strSQLUpdate = "" Then
                            strSQLUpdate = DE.Key & " = '" & DE.Value & "'"
                        Else
                            strSQLUpdate = strSQLUpdate & ", " & DE.Key & " = '" & DE.Value & "'"
                        End If
                    End If
                End If
            Next
            If strSQLUpdate = "" And id <> 0 Then
                ' Nothing to update...
            Else
                If id = 0 Then
                    strSQLInsertFields = strSQLInsertFields & ", intYear, strClass, strSportGenderKey"
                    strSQLInsertValues = strSQLInsertValues & ", " & RadDropDownYear.SelectedValue & ", '" & RadDropDownClass.SelectedValue & "', 'WrestlingDual'"
                    strSQL = "INSERT INTO tblWrestlingDual (" & strSQLInsertFields & ") VALUES (" & strSQLInsertValues & ")"
                Else
                    strSQL = "UPDATE tblWrestlingDual SET " & strSQLUpdate & " WHERE ID = " & id
                End If
                SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                If id = 0 Then RadGrid1.Rebind()
            End If
            id = 0
            strSQLUpdate = ""
        Next
        lblMessage.Text = "Changes saved."
    End Sub

    Protected Sub RadGrid1_UpdateCommand(ByVal source As Object, ByVal e As GridCommandEventArgs) Handles RadGrid1.UpdateCommand

        Dim strSQL As String = ""
        Dim editableItem = (DirectCast(e.Item, GridEditableItem))
        Dim id = DirectCast(editableItem.GetDataKeyValue("Id"), Integer)
        Dim strRound As TextBox = TryCast((editableItem)("strRound").Controls(0), TextBox)
        Dim intGameNo As TextBox = TryCast((editableItem)("intGameNo").Controls(0), TextBox)
        Dim strWinner As TextBox = TryCast((editableItem)("strWinner").Controls(0), TextBox)
        Dim strLoser As TextBox = TryCast((editableItem)("strLoser").Controls(0), TextBox)
        Dim intWinner As TextBox = TryCast((editableItem)("intWinner").Controls(0), TextBox)
        Dim intLoser As TextBox = TryCast((editableItem)("intLoser").Controls(0), TextBox)

        strSQL = "UPDATE tblWrestlingDual SET strRound = '" & strRound.Text & "', "
        strSQL = strSQL & "intGameNo = '" & intGameNo.Text & "', "
        strSQL = strSQL & "strWinner = '" & strWinner.Text & "', "
        strSQL = strSQL & "strLoser = '" & strLoser.Text & "', "
        strSQL = strSQL & "intWinner = '" & intWinner.Text & "', "
        strSQL = strSQL & "intLoser = '" & intLoser.Text & "' "
        strSQL = strSQL & "WHERE ID = " & id
        SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        lblMessage.Text = "Saved"

    End Sub

    Private Sub ShowErrorMessage()
        RadAjaxManager1.ResponseScripts.Add(String.Format("window.radalert(""Please enter valid data!"")"))
    End Sub

    Protected Sub RadGrid1_ItemCreated(ByVal sender As Object, ByVal e As GridItemEventArgs) Handles RadGrid1.ItemCreated
        If TypeOf e.Item Is GridEditableItem AndAlso (e.Item.IsInEditMode) Then
            Dim editableItem As GridEditableItem = DirectCast(e.Item, GridEditableItem)
        End If
    End Sub

    Protected Sub RadGrid1_InsertCommand(ByVal source As Object, ByVal e As GridCommandEventArgs) Handles RadGrid1.InsertCommand
        Dim strSQL As String = ""
        Dim editableItem = (DirectCast(e.Item, GridEditableItem))
        Dim strRound As TextBox = TryCast((editableItem)("strRound").Controls(0), TextBox)
        Dim intGameNo As TextBox = TryCast((editableItem)("intGameNo").Controls(0), TextBox)
        Dim strWinner As TextBox = TryCast((editableItem)("strWinner").Controls(0), TextBox)
        Dim strLoser As TextBox = TryCast((editableItem)("strLoser").Controls(0), TextBox)
        Dim intWinner As TextBox = TryCast((editableItem)("intWinner").Controls(0), TextBox)
        Dim intLoser As TextBox = TryCast((editableItem)("intLoser").Controls(0), TextBox)
        Dim intYear As Integer = CInt(RadDropDownYear.SelectedValue)
        Dim strClass As String = RadDropDownClass.SelectedValue
        Dim strSport As String = RadDropDownSports.SelectedValue

        strSQL = "INSERT INTO tblWrestlingDual (intYear, strSportGenderKey, strClass, strRound, intGameNo, strWinner, strLoser, intWinner, intLoser) VALUES ("
        strSQL = strSQL & intYear & ", "
        strSQL = strSQL & "'" & strSport & "', "
        strSQL = strSQL & "'" & strClass & "', "
        strSQL = strSQL & "'" & strRound.Text & "', "
        strSQL = strSQL & "'" & intGameNo.Text & "', "
        strSQL = strSQL & "'" & strWinner.Text & "', "
        strSQL = strSQL & "'" & strLoser.Text & "', "
        strSQL = strSQL & "'" & intWinner.Text & "', "
        strSQL = strSQL & "'" & intLoser.Text & "') "

        Try
            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        Catch generatedExceptionName As System.Exception
            ShowErrorMessage()
        End Try
    End Sub

    Protected Sub RadGrid1_DeleteCommand(ByVal source As Object, ByVal e As GridCommandEventArgs) Handles RadGrid1.DeleteCommand

    End Sub
End Class