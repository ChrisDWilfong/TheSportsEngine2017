Public Class PlayoffScores
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

		If Request.QueryString("id") = "1" Then
			Session("user") = "MADISON"
		Else
			Session("user") = "CHRIS"
		End If
	End Sub

	Private Sub RadDropDownListYear_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListYear.DataBound
		RadDropDownListYear.Items.Insert(0, "Select Year...")
	End Sub

	Protected Sub cmdSave_Click(sender As Object, e As EventArgs)
		Dim strSQL As String

		strSQL = "INSERT INTO tblBasketballPlayoffs (intYear, strClass, strLevel, intDistrictNo, strRound, strDay, "
		strSQL = strSQL & "dtmGameDate, strSportGenderKey, "
		strSQL = strSQL & "strWinner, strLoser, intWinner, intLoser, strOT, strGameLocation) VALUES ("
		strSQL = strSQL & RadDropDownListYear.SelectedText & ", '" & RadDropDownListClass.SelectedText & "', "
		strSQL = strSQL & "'" & RadDropDownListLevel.SelectedValue & "', '" & RadDropDownRegionalNumber.SelectedText & "', "
		strSQL = strSQL & "'" & RadDropDownListRound.SelectedValue & "', '" & RadDropDownListDay.SelectedText & "', "
		strSQL = strSQL & "'" & txtDate.Text & "', '" & RadDropDownListSport.SelectedValue & "', "
		strSQL = strSQL & "'" & RadAutoCompleteBoxWinner.Entries(0).Text & "', '" & RadAutoCompleteBoxLoser.Entries(0).Text & "', "
		strSQL = strSQL & "'" & txtWinnerScore.Text & "', '" & txtLoserScore.Text & "', "
		strSQL = strSQL & "'" & txtOT.Text & "', '" & RadAutoCompleteBoxLocation.Entries(0).Text & "')"

		SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

		RadGrid1.Rebind()

		' Clear values...					
		RadAutoCompleteBoxWinner.Entries.Clear()
		RadAutoCompleteBoxLoser.Entries.Clear()
		txtWinnerScore.Text = ""
		txtLoserScore.Text = ""
		txtOT.Text = ""

		lblMessage.Text = "Saved."
		RadAutoCompleteBoxWinner.Focus()

	End Sub
End Class