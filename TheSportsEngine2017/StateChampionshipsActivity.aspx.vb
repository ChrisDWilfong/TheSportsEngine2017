Imports Telerik.Web.UI

Partial Class StateChampionshipsActivity
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim strURL As String = sender.Request.Url.ToString
        If strURL.ToUpper.Contains("OSSAA.IWASATTHEGAME") Or strURL.ToUpper.Contains("LOCALHOST") Then
            lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONSHIPS")
            If Session("globalState") = "" Then Session("globalState") = "OK"
            lblOneColumnDetail.Text = ""
            lblOneColumnHeader0.Text = lblOneColumnHeader.Text
            lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Else
            tblOSSAAActivities.Visible = False
        End If

    End Sub

    Private Sub RadDropDownListActivities_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListActivities.SelectedIndexChanged
        Dim ds As DataSet
        Dim strSQL As String
        Dim intYearFirst As Integer = 0
        Dim intYearLast As Integer = 0
        Dim x As Integer = 0

        strSQL = "SELECT intYearFirst, intYearLast FROM tblSports WHERE strSportGenderKey = '" & sender.SelectedValue & "'"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            intYearFirst = ds.Tables(0).Rows(0).Item("intYearFirst")
            intYearLast = ds.Tables(0).Rows(0).Item("intYearLast")
            strSQL = "SELECT intYear FROM tblYears WHERE strState = '" & Session("globalState") & "' AND strSport = 'ALL' AND (intYear >= " & intYearFirst & " AND intYear <= " & intYearLast & ") ORDER BY intYear DESC"
            Try
                RadDropDownListYear.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                RadDropDownListYear.DataBind()
            Catch
            End Try
        End If

    End Sub

    Private Sub RadDropDownListYear_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListYear.SelectedIndexChanged
        RadGrid1.Columns(0).HeaderText = RadDropDownListYear.SelectedValue & " STATE CHAMPIONS"
    End Sub
End Class