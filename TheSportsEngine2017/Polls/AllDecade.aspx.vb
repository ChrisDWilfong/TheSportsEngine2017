Public Class AllDecade
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ds As DataSet
        Dim strSport As String = ""
        Dim strSQL As String = ""
        'Session("selectedClass") = GetClass(Request.QueryString("c"))

        Dim isMobileDevice As Boolean = False
        Dim strUserAgent As String = Request.UserAgent.ToString

        If strUserAgent.Contains("Android") Or strUserAgent.Contains("iPad") Or strUserAgent.Contains("iPhone") Or strUserAgent.Contains("Windows Phone") Then
            isMobileDevice = True
        End If

        If isMobileDevice Then
            lblHeader.Width = 330
            imgHeader.Width = 330
        End If

        If Not IsPostBack Then
            strSport = Request.QueryString("sp")
            If strSport = "" Then
                strSQL = "SELECT strSport1 AS strDisplay, strSportGenderKey FROM tblSports WHERE showPoll = 1 AND strState = 'OK' ORDER BY strSportGenderKey"
            Else
                strSQL = "SELECT strSport1 AS strDisplay, strSportGenderKey FROM tblSports WHERE showPoll = 1 AND strState = 'OK' AND strSportGenderKey Like '" & strSport & "%' ORDER BY strSportGenderKey"
            End If
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            cboStateChampionSport.DataSource = ds
            cboStateChampionSport.DataBind()
        End If

        If Request.QueryString("id") = "c" Then
            lblMessage.Text = "Your VOTE has been submitted."
        End If
        'Dim strGoogleAd As String
        'strGoogleAd = "<ins Class='adsbygoogle'"
        'strGoogleAd = strGoogleAd & "Style ='display:block'"
        'strGoogleAd = strGoogleAd & "Data-ad-client='ca-pub-6403098483302166'"
        'strGoogleAd = strGoogleAd & "Data-ad-slot='7074715447'"
        'strGoogleAd = strGoogleAd & "Data-ad-format='auto'></ins>"
        'strGoogleAd = strGoogleAd & "<Script>"
        'strGoogleAd = strGoogleAd & "(adsbygoogle = window.adsbygoogle || []).push({});"
        'strGoogleAd = strGoogleAd & "</script>"
        'Session("googleAd01") = strGoogleAd

        'ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ScriptManager_Decade", "$get('adsense_unit').innerHTML=$get('adsense_container').innerHTML", True)

    End Sub

    Protected Sub cboStateChampionClass_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
        PopulateDropdowns()
    End Sub

    Protected Sub cboStateChampionSport_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

        lblMessage.Text = ""
    End Sub

    Protected Sub cboTeam01_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub cboTeam02_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub cboTeam03_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub cboTeam04_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub cboTeam05_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Public Function GetClass(strClassIn As String) As String
        Dim strClass As String = ""

        Select Case strClassIn
            Case "6A-I"
                strClass = "Class 6A-I"
            Case "6A-II"
                strClass = "Class 6A-II"
            Case "5A"
                strClass = "Class 5A"
            Case "4A"
                strClass = "Class 4A"
            Case "3A"
                strClass = "Class 3A"
            Case "2A"
                strClass = "Class 2A"
            Case "A"
                strClass = "Class A"
            Case "B"
                strClass = "Class B"
            Case "C"
                strClass = "Class C"
            Case Else

        End Select

        Return strClass
    End Function
    Protected Sub PopulateDropdowns()
        Dim strSQL01 As String = ""
        Dim intGame01 As Integer = 0
        Dim intGame02 As Integer = 0

        Dim strSportGenderKey As String = cboStateChampionSport.SelectedValue
        Dim strClass As String = cboStateChampionClass.SelectedValue

        cboTeam01.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(strSportGenderKey, strClass, cboTeam01.SelectedValue))
        cboTeam01.DataBind()
        cboTeam02.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(strSportGenderKey, strClass, cboTeam01.SelectedValue))
        cboTeam02.DataBind()
        cboTeam03.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(strSportGenderKey, strClass, cboTeam01.SelectedValue))
        cboTeam03.DataBind()
        cboTeam04.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(strSportGenderKey, strClass, cboTeam01.SelectedValue))
        cboTeam04.DataBind()
        cboTeam05.DataSource = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, GetSQL(strSportGenderKey, strClass, cboTeam01.SelectedValue))
        cboTeam05.DataBind()

    End Sub

    Protected Function GetSQL(strSportGenderKey As String, strClass As String, Index As String) As String
        Dim strSQL As String = ""
        strSQL = "SELECT CAST(intYear as varchar(5)) + ' - ' + strSchool AS strDisplay, strSportGenderKey, Id FROM tblStateChampions "
        strSQL = strSQL & "WHERE strSportGenderKey = '" & strSportGenderKey & "' AND strClass = '" & strClass & "' AND (intYear >= 2010 AND intYear <= 2019) AND strState = 'OK' "

        'Select Case Index
        '    Case "1"
        '        strSQL = strSQL & " AND (Id <> '" & cboTeam02.SelectedValue & "' AND Id <> '" & cboTeam03.SelectedValue & "' AND Id <> '" & cboTeam04.SelectedValue & "' AND Id <> '" & cboTeam05.SelectedValue & "') "
        '    Case "2"
        '        strSQL = strSQL & " AND (Id <> '" & cboTeam01.SelectedValue & "' AND Id <> '" & cboTeam03.SelectedValue & "' AND Id <> '" & cboTeam04.SelectedValue & "' AND Id <> '" & cboTeam05.SelectedValue & "') "
        '    Case "3"
        '        strSQL = strSQL & " AND (Id <> '" & cboTeam01.SelectedValue & "' AND Id <> '" & cboTeam02.SelectedValue & "' AND Id <> '" & cboTeam04.SelectedValue & "' AND Id <> '" & cboTeam05.SelectedValue & "') "
        '    Case "4"
        '        strSQL = strSQL & " AND (Id <> '" & cboTeam01.SelectedValue & "' AND Id <> '" & cboTeam02.SelectedValue & "' AND Id <> '" & cboTeam03.SelectedValue & "' AND Id <> '" & cboTeam05.SelectedValue & "') "
        '    Case "5"
        '        strSQL = strSQL & " AND (Id <> '" & cboTeam01.SelectedValue & "' AND Id <> '" & cboTeam02.SelectedValue & "' AND Id <> '" & cboTeam03.SelectedValue & "' AND Id <> '" & cboTeam04.SelectedValue & "') "
        'End Select

        strSQL = strSQL & "ORDER BY intYear DESC"
        Return strSQL
    End Function

    Private Sub cboStateChampionSport_DataBound(sender As Object, e As EventArgs) Handles cboStateChampionSport.DataBound
        If sender.SelectedValue <> "Select..." Then
            sender.Items.Insert(0, New ListItem("Select...", ""))
            sender.SelectedIndex = -1
        End If
        lblMessage.Text = ""
    End Sub

    Private Sub cboStateChampionClass_DataBound(sender As Object, e As EventArgs) Handles cboStateChampionClass.DataBound
        If sender.SelectedValue <> "Select..." Then
            sender.Items.Insert(0, New ListItem("Select...", ""))
            sender.SelectedIndex = -1
        End If
    End Sub

    Private Sub cboTeam01_DataBound(sender As Object, e As EventArgs) Handles cboTeam01.DataBound
        If sender.SelectedValue <> "Select..." Then
            sender.Items.Insert(0, New ListItem("Select...", ""))
            sender.SelectedIndex = -1
        End If
    End Sub

    Private Sub cboTeam02_DataBound(sender As Object, e As EventArgs) Handles cboTeam02.DataBound
        If sender.SelectedValue <> "Select..." Then
            sender.Items.Insert(0, New ListItem("Select...", ""))
            sender.SelectedIndex = -1
        End If
    End Sub

    Private Sub cboTeam03_DataBound(sender As Object, e As EventArgs) Handles cboTeam03.DataBound
        If sender.SelectedValue <> "Select..." Then
            sender.Items.Insert(0, New ListItem("Select...", ""))
            sender.SelectedIndex = -1
        End If
    End Sub

    Private Sub cboTeam04_DataBound(sender As Object, e As EventArgs) Handles cboTeam04.DataBound
        If sender.SelectedValue <> "Select..." Then
            sender.Items.Insert(0, New ListItem("Select...", ""))
            sender.SelectedIndex = -1
        End If
    End Sub

    Private Sub cboTeam05_DataBound(sender As Object, e As EventArgs) Handles cboTeam05.DataBound
        If sender.SelectedValue <> "Select..." Then
            sender.Items.Insert(0, New ListItem("Select...", ""))
            sender.SelectedIndex = -1
        End If
    End Sub

    Private Sub cmdSubmit_Click(sender As Object, e As EventArgs) Handles cmdSubmit.Click
        Dim strVerified As String = "OK"
        Dim strSQL As String

        strVerified = VerifyEntry()

        If strVerified = "OK" Then
            strSQL = "INSERT INTO tblPolls (strSportGenderKey, strClass, intTeam01, intTeam02, intTeam03, intTeam04, intTeam05, strFirstName, strLastName, strEmail, strTwitter) VALUES ("
            strSQL = strSQL & "'" & cboStateChampionSport.SelectedValue & "', "
            strSQL = strSQL & "'" & cboStateChampionClass.SelectedValue & "', "
            strSQL = strSQL & CInt(cboTeam01.SelectedValue) & ", "
            strSQL = strSQL & CInt(cboTeam02.SelectedValue) & ", "
            strSQL = strSQL & CInt(cboTeam03.SelectedValue) & ", "
            strSQL = strSQL & CInt(cboTeam04.SelectedValue) & ", "
            strSQL = strSQL & CInt(cboTeam05.SelectedValue) & ", "
            strSQL = strSQL & "'" & clsFunctions.VerifyString(txtFirstName.Text) & "', "
            strSQL = strSQL & "'" & clsFunctions.VerifyString(txtLastName.Text) & "', "
            strSQL = strSQL & "'" & clsFunctions.VerifyString(txtEmail.Text) & "', "
            strSQL = strSQL & "'" & clsFunctions.VerifyString(txtTwitter.Text) & "') "
            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            lblMessage.Text = "Your VOTE has been submitted."
            ClearForm()
            'Response.Redirect("http://www.iwasatthegame.com/polls/AllDecade.aspx")
        Else
            lblMessage.Text = strVerified
        End If

    End Sub

    Private Sub ClearForm()
        cboStateChampionSport.SelectedIndex = -1
        cboStateChampionClass.DataBind()
        cboStateChampionClass.SelectedIndex = 0
        PopulateDropdowns()
        cboTeam01.SelectedIndex = 0
        cboTeam02.SelectedIndex = 0
        cboTeam03.SelectedIndex = 0
        cboTeam04.SelectedIndex = 0
        cboTeam05.SelectedIndex = 0
        txtFirstName.Text = ""
        txtLastName.Text = ""
        txtEmail.Text = ""
        txtTwitter.Text = ""
    End Sub

    Private Function VerifyEntry() As String
        Dim strVerified As String = "OK"

        If cboTeam01.SelectedIndex <= 0 Then
            strVerified = "You must select TEAM #1"
        ElseIf cboTeam02.SelectedIndex < 0 Then
            strVerified = "You must select TEAM #2"
        ElseIf cboTeam03.SelectedIndex < 0 Then
            strVerified = "You must select TEAM #3"
        ElseIf cboTeam04.SelectedIndex < 0 Then
            strVerified = "You must select TEAM #4"
        ElseIf cboTeam05.SelectedIndex < 0 Then
            strVerified = "You must select TEAM #5"
        ElseIf txtFirstName.Text = "" Then
            strVerified = "You must enter a FIRST NAME"
            'ElseIf txtLastName.Text = "" Then
            '    strVerified = "You must enter a LAST NAME"
        ElseIf cboTeam01.SelectedValue = cboTeam02.SelectedValue Or cboTeam01.SelectedValue = cboTeam03.SelectedValue Or cboTeam01.SelectedValue = cboTeam04.SelectedValue Or cboTeam01.SelectedValue = cboTeam05.SelectedValue Then
            strVerified = "You have selected 2 of the same teams."
        ElseIf cboTeam02.SelectedValue = cboTeam03.SelectedValue Or cboTeam02.SelectedValue = cboTeam04.SelectedValue Or cboTeam02.SelectedValue = cboTeam05.SelectedValue Then
            strVerified = "You have selected 2 of the same teams."
        ElseIf cboTeam03.SelectedValue = cboTeam04.SelectedValue Or cboTeam03.SelectedValue = cboTeam05.SelectedValue Then
            strVerified = "You have selected 2 of the same teams."
        ElseIf cboTeam04.SelectedValue = cboTeam05.SelectedValue Then
            strVerified = "You have selected 2 of the same teams."
        End If
        Return strVerified
    End Function

End Class