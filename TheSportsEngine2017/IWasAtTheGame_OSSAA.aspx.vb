Public Class IWasAtTheGame_OSSAA
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub RadDropDownListSports_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListSports.DataBound
        Dim objListItem As New System.Web.UI.WebControls.ListItem
        objListItem.Value = ""
        objListItem.Text = "Select Activity..."
        RadDropDownListSports.Items.Insert(0, objListItem)
    End Sub

    Private Sub RadDropDownListSportsYears_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListSportsYears.DataBound
        Dim objListItem As New System.Web.UI.WebControls.ListItem
        objListItem.Value = 0
        objListItem.Text = "Select Year..."
        RadDropDownListSportsYears.Items.Insert(0, objListItem)
    End Sub

    Private Sub RadDropDownListSchools_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListSchools.DataBound
        Dim objListItem As New System.Web.UI.WebControls.ListItem
        objListItem.Value = ""
        objListItem.Text = "Select School..."
        RadDropDownListSchools.Items.Insert(0, objListItem)
    End Sub

    Private Sub RadDropDownListYears_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListYears.DataBound
        Dim objListItem As New System.Web.UI.WebControls.ListItem
        objListItem.Value = 0
        objListItem.Text = "Select Year..."
        RadDropDownListYears.Items.Insert(0, objListItem)
    End Sub

    Private Sub RadDropDownListSportsYears_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListSportsYears.SelectedIndexChanged
        If RadDropDownListSports.SelectedValue = "" Or RadDropDownListSportsYears.SelectedValue = 0 Then
            RadGrid1.Visible = False
        Else
            RadGrid1.Visible = True
            RegenerateGrid(RadDropDownListSports.SelectedValue, RadDropDownListSportsYears.SelectedValue, RadDropDownListSports.SelectedItem.Text)
        End If
    End Sub

    Private Sub RadDropDownListSchools_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListSchools.SelectedIndexChanged
        ' Selected SCHOOL's state championships...
        lblHeader.Text = UCase(RadDropDownListSchools.SelectedValue) & " STATE CHAMPIONSHIPS"
        RadGrid1.Visible = False
        Session("HTMLContentOSSAA") = clsHTML.GetSchoolContentHTML(RadDropDownListSchools.SelectedValue)
        'Session("HTMLContentOSSAA") = clsHTML.GetYearContentHTML("", RadDropDownListSchools.SelectedValue, "", "OK")
    End Sub

    Private Sub RadDropDownListYears_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListYears.SelectedIndexChanged
        ' Selected YEAR of state championships...
        lblHeader.Text = UCase(RadDropDownListYears.SelectedValue) & " LIST OF CHAMPIONS"
        RadGrid1.Visible = False
        Session("HTMLContentOSSAA") = clsHTML.GetYearContentHTML(RadDropDownListYears.SelectedValue, "", "", "OK")
    End Sub

    Private Sub RadDropDownListSports_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListSports.SelectedIndexChanged
        RadGrid1.Visible = False
        Session("HTMLContentOSSAA") = ""
    End Sub

    Private Sub RegenerateGrid(strSport As String, intYear As Integer, strSportText As String)
        ' Populate the Sport/Year HTML...
        Dim strSQL As String = ""
        Dim strSelectedSport As String = RadDropDownListSports.SelectedValue

        Session("HTMLContentOSSAA") = ""
        Select Case strSelectedSport
            Case "Baseball"
                strSQL = "SELECT * FROM IWATGview_Baseball_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "BaseballFall"
                strSQL = "SELECT * FROM IWATGview_BaseballFall_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "Basketball", "BasketballBoys", "BasketballGirls"
                strSQL = "SELECT * FROM IWATGview_Basketball_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & IIf(strSelectedSport.Contains("Boys"), " BOYS", IIf(strSelectedSport.Contains("Girls"), " GIRLS", "")) & " BASKETBALL STATE CHAMPIONS"
            Case "Cheerleading"
                strSQL = "SELECT * FROM IWATGview_Cheerleading_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "CheerleadingGD"
                strSQL = "SELECT * FROM IWATGview_CheerleadingGD_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "CrossCountry", "CrossCountryBoys", "CrossCountryGirls"
                strSQL = "SELECT * FROM IWATGview_CrossCountry_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & IIf(strSelectedSport.Contains("Boys"), " BOYS", IIf(strSelectedSport.Contains("Girls"), " GIRLS", "")) & " CROSS COUNTRY STATE CHAMPIONS"
            Case "Football"
                strSQL = "SELECT *, strDisplayResultsClass AS strDisplay FROM IWATGview_Football_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "FPSoftball", "Softball"
                strSQL = "SELECT *, strDisplayResultsClass AS strDisplay FROM IWATGview_FPSoftball_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "Golf", "GolfBoys", "GolfGirls"
                strSQL = "SELECT *, strDisplayResultsClass AS strDisplay FROM IWATGview_Golf_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & IIf(strSelectedSport.Contains("Boys"), " BOYS", IIf(strSelectedSport.Contains("Girls"), " GIRLS", "")) & " GOLF STATE CHAMPIONS"
            Case "Soccer", "SoccerBoys", "SoccerGirls"
                strSQL = "SELECT *, strDisplayResultsClass AS strDisplay FROM IWATGview_Soccer_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & IIf(strSelectedSport.Contains("Boys"), " BOYS", IIf(strSelectedSport.Contains("Girls"), " GIRLS", "")) & " SOCCER STATE CHAMPIONS"
            Case "Swimming", "SwimmingBoys", "SwimmingGirls"
                strSQL = "SELECT *, strDisplayResultsClass AS strDisplay FROM IWATGview_Swimming_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & IIf(strSelectedSport.Contains("Boys"), " BOYS", IIf(strSelectedSport.Contains("Girls"), " GIRLS", "")) & " SWIMMING STATE CHAMPIONS"
            Case "Tennis", "TennisBoys", "TennisGirls"
                strSQL = "SELECT *, strDisplayResultsClass AS strDisplay FROM IWATGview_Tennis_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & IIf(strSelectedSport.Contains("Boys"), " BOYS", IIf(strSelectedSport.Contains("Girls"), " GIRLS", "")) & " TENNIS STATE CHAMPIONS"
            Case "Track", "TrackBoys", "TrackGirls"
                strSQL = "SELECT *, strDisplayResultsClass AS strDisplay FROM IWATGview_Track_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & IIf(strSelectedSport.Contains("Boys"), " BOYS", IIf(strSelectedSport.Contains("Girls"), " GIRLS", "")) & " TRACK STATE CHAMPIONS"
            Case "Volleyball"
                strSQL = "SELECT *, strDisplayResultsClass AS strDisplay FROM IWATGview_Volleyball_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "VolleyballBoys"
                strSQL = "SELECT *, strDisplayResultsClass AS strDisplay FROM IWATGview_VolleyballBoys_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "Wrestling"
                strSQL = "SELECT *, strDisplayResultsClass AS strDisplay FROM IWATGview_Wrestling_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "WrestlingDual"
                strSQL = "SELECT *, strDisplayResultsClass AS strDisplay FROM IWATGview_WrestlingDual_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "OneAct"
                strSQL = "SELECT *, strDisplayClass AS strDisplay FROM IWATGview_NAOneAct_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "SpeechDebate"
                strSQL = "SELECT *, strDisplayClass AS strDisplay FROM IWATGview_NASpeechDebate_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "JazzBand"
                strSQL = "SELECT *, strDisplayClass AS strDisplay FROM IWATGview_NAJazzBand_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
            Case "AcademicBowl"
                strSQL = "SELECT *, strDisplayClass AS strDisplay FROM IWATGview_NAAcademicBowl_StateChampions WHERE strSportGenderKey = '" & strSport & "' AND strState = 'OK' AND intYear = " & intYear
                lblHeader.Text = intYear & " " & strSportText.ToUpper & " STATE CHAMPIONS"
        End Select

        If strSQL <> "" Then

            SqlDataSource5.SelectCommand = strSQL
            RadGrid1.DataBind()
        End If
    End Sub

End Class