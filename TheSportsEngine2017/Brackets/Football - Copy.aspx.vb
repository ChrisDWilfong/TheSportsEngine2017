Public Class Football1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            cboGame0501.Enabled = False
            cboGame0502.Enabled = False
            cboGame0601.Enabled = False
            cboGame0602.Enabled = False
            cboGame0701.Enabled = False
            cboGame0702.Enabled = False
        End If
    End Sub

    Protected Sub cboGame01_DataBound(ByVal sender As Object, ByVal e As EventArgs)
        If sender.SelectedValue <> "Select..." Then
            sender.Items.Insert(0, New ListItem("Select...", ""))
            sender.SelectedIndex = -1
        End If
    End Sub

    Protected Sub cboClass_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        PopulateDropdowns()
    End Sub

    Protected Sub cboGame01_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        cboGame0501.Items.Clear()
        cboGame0501.Items.Add(New ListItem("Select...", "Select..."))
        If cboGame0101.SelectedValue <> "Select..." Then
            cboGame0501.Items.Add(New ListItem(cboGame0101.SelectedValue, cboGame0101.SelectedValue))
        End If
        If cboGame0102.SelectedValue <> "Select..." Then
            cboGame0501.Items.Add(New ListItem(cboGame0102.SelectedValue, cboGame0102.SelectedValue))
        End If
        ' Turn ON the next game??
        If cboGame0101.SelectedIndex > 0 And cboGame0102.SelectedIndex > 0 Then
            cboGame0501.Enabled = True
        Else
            cboGame0501.Enabled = False
        End If
    End Sub

    Protected Sub cboGame02_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        cboGame0502.Items.Clear()
        cboGame0502.Items.Add(New ListItem("Select...", "Select..."))
        If cboGame0201.SelectedValue <> "Select..." Then
            cboGame0502.Items.Add(New ListItem(cboGame0201.SelectedValue, cboGame0201.SelectedValue))
        End If
        If cboGame0202.SelectedValue <> "Select..." Then
            cboGame0502.Items.Add(New ListItem(cboGame0202.SelectedValue, cboGame0202.SelectedValue))
        End If
        ' Turn ON the next game??
        If cboGame0201.SelectedIndex > 0 And cboGame0202.SelectedIndex > 0 Then
            cboGame0502.Enabled = True
        Else
            cboGame0502.Enabled = False
        End If
    End Sub

    Protected Sub cboGame03_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        cboGame0601.Items.Clear()
        cboGame0601.Items.Add(New ListItem("Select...", "Select..."))
        If cboGame0301.SelectedValue <> "Select..." Then
            cboGame0601.Items.Add(New ListItem(cboGame0301.SelectedValue, cboGame0301.SelectedValue))
        End If
        If cboGame0302.SelectedValue <> "Select..." Then
            cboGame0601.Items.Add(New ListItem(cboGame0302.SelectedValue, cboGame0302.SelectedValue))
        End If
        ' Turn ON the next game??
        If cboGame0301.SelectedIndex > 0 And cboGame0302.SelectedIndex > 0 Then
            cboGame0601.Enabled = True
        Else
            cboGame0601.Enabled = False
        End If
    End Sub

    Protected Sub cboGame04_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        cboGame0602.Items.Clear()
        cboGame0602.Items.Add(New ListItem("Select...", "Select..."))
        If cboGame0401.SelectedValue <> "Select..." Then
            cboGame0602.Items.Add(New ListItem(cboGame0401.SelectedValue, cboGame0401.SelectedValue))
        End If
        If cboGame0402.SelectedValue <> "Select..." Then
            cboGame0602.Items.Add(New ListItem(cboGame0402.SelectedValue, cboGame0402.SelectedValue))
        End If
        ' Turn ON the next game??
        If cboGame0401.SelectedIndex > 0 And cboGame0402.SelectedIndex > 0 Then
            cboGame0602.Enabled = True
        Else
            cboGame0602.Enabled = False
        End If
    End Sub

    Protected Sub cboGame05_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        cboGame0602.Items.Clear()
        cboGame0602.Items.Add(New ListItem("Select...", "Select..."))
        If cboGame0401.SelectedValue <> "Select..." Then
            cboGame0602.Items.Add(New ListItem(cboGame0401.SelectedValue, cboGame0401.SelectedValue))
        End If
        If cboGame0402.SelectedValue <> "Select..." Then
            cboGame0602.Items.Add(New ListItem(cboGame0402.SelectedValue, cboGame0402.SelectedValue))
        End If
    End Sub

    Protected Sub cboGame06_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        cboGame0602.Items.Clear()
        cboGame0602.Items.Add(New ListItem("Select...", "Select..."))
        If cboGame0401.SelectedValue <> "Select..." Then
            cboGame0602.Items.Add(New ListItem(cboGame0401.SelectedValue, cboGame0401.SelectedValue))
        End If
        If cboGame0402.SelectedValue <> "Select..." Then
            cboGame0602.Items.Add(New ListItem(cboGame0402.SelectedValue, cboGame0402.SelectedValue))
        End If
    End Sub
    Protected Sub PopulateDropdowns()
        Dim strSQL01 As String = ""
        Dim intGame01 As Integer = 0
        Dim intGame02 As Integer = 0

        Dim ds As DataSet
        Dim strClass As String = cboClass.SelectedValue

        Select Case strClass
            Case "Class 6A-I", "Class 6A-II"
            Case "Class 5A", "Class 4A"
                cboGame0101.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(1, 1, 1, cboClass.SelectedValue))
                cboGame0101.DataBind()
                cboGame0102.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(2, 2, 1, cboClass.SelectedValue))
                cboGame0102.DataBind()
                cboGame0201.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(3, 3, 1, cboClass.SelectedValue))
                cboGame0201.DataBind()
                cboGame0202.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(4, 4, 1, cboClass.SelectedValue))
                cboGame0202.DataBind()
                cboGame0301.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(5, 5, 1, cboClass.SelectedValue))
                cboGame0301.DataBind()
                cboGame0302.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(6, 6, 1, cboClass.SelectedValue))
                cboGame0302.DataBind()
                cboGame0401.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(7, 7, 1, cboClass.SelectedValue))
                cboGame0401.DataBind()
                cboGame0402.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(8, 8, 1, cboClass.SelectedValue))
                cboGame0402.DataBind()
            Case Else
        End Select



    End Sub

    Protected Function GetSQL(intGame01 As Integer, intGame02 As Integer, intRound As Integer, strClass As String) As String
        Dim strSQL As String = ""
        strSQL = "SELECT UPPER(strSchoolTop) AS strSchool, '<strong>' + UPPER(strSchoolTop) + '</strong>' AS strSchoolBold FROM tblPlayoffGames WHERE (strClass = '" & strClass & "') AND (intYear = 2018) AND (intRound = " & intRound & ") AND (intGame = " & intGame01 & " OR intGame = " & intGame02 & ") UNION "
        strSQL = strSQL & "SELECT UPPER(strSchoolBottom) AS strSchool, '<strong>' + UPPER(strSchoolTop) + '</strong>' AS strSchoolBold FROM tblPlayoffGames WHERE (strClass = '" & strClass & "') AND (intYear = 2018) AND (intRound = " & intRound & ") AND (intGame = " & intGame01 & " OR intGame = " & intGame02 & ") "
        strSQL = strSQL & "ORDER BY strSchool"
        Return strSQL
    End Function

End Class