Imports Telerik.Web.UI

Partial Class AllDecade2010

    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strDetailSportName As String

        Session("globalSport") = "None"
        lblOneColumnHeader.Text = "ALL-DECADE 2010-2019 STATE<br>LIST OF CHAMPIONS"
        If Session("globalState") = "" Then Session("globalState") = "OK"

        Dim strKey As String
        Dim ds As DataSet

        strKey = clsFunctions.VerifyString(Request.QueryString("sp"))
        If strKey = "FBW" Or strKey = "FBW2K" Then
            RadGrid1.Visible = True
            If strKey = "FBW2K" Then
                RadGrid1.DataSourceID = "SqlDataSource1a"
            Else
                RadGrid1.DataSourceID = "SqlDataSource1"
            End If
            RadGrid1.Rebind()
            RadGrid2.Visible = False
            RadDropDownListClass.Visible = False
        ElseIf strKey = "FBPTS" Then
            RadGrid1.Visible = False
            RadGrid2.Visible = True
            RadGrid2.DataSourceID = "SqlDataSource4"
        ElseIf strKey = "" Then
            RadGrid1.Visible = False
            RadGrid2.Visible = True
            RadDropDownListClass.Visible = False
            RadGrid2.DataSourceID = "SqlDataSource3"
            RadGrid2.Rebind()
        Else
            RadGrid1.Visible = False
            RadGrid2.Visible = True
            RadDropDownListClass.Visible = True
        End If

        Select Case strKey
            Case "BKB"
                Page.Title = "Oklahoma High School ALL DECADE BASKETBALL (BOYS) List of State Champions 2010-2019"
                strKey = "BasketballBoys"
                strDetailSportName = "Basketball (Boys)"
            Case "BKG1"
                Page.Title = "Oklahoma High School ALL DECADE BASKETBALL (GIRLS) List of State Champions 2010-2019"
                strKey = "BasketballGirls"
                strDetailSportName = "Basketball (Girls)"
            Case "Football"
                Page.Title = "Oklahoma High School ALL DECADE FOOTBALL List of State Champions 2010-2019"
                strDetailSportName = "Football"
            Case "FBW"
                Page.Title = "Oklahoma High School ALL DECADE FOOTBALL COACHING WINS 2010-2019"
                lblOneColumnHeader.Text = "Oklahoma High School ALL DECADE FOOTBALL COACHING WINS 2010-2019"
                strDetailSportName = "40+ WINS"
            Case "FBW2K"
                Page.Title = "Oklahoma High School ALL DECADE FOOTBALL COACHING WINS 2000-2009"
                lblOneColumnHeader.Text = "Oklahoma High School ALL DECADE FOOTBALL COACHING WINS 2000-2009"
                strDetailSportName = "50+ WINS"
            Case "FBPTS"
                Page.Title = "Oklahoma High School ALL DECADE FOOTBALL POINTS SCORED 2010-2019"
                lblOneColumnHeader.Text = "Oklahoma High School ALL DECADE POINTS SCORED 2010-2019"
                strDetailSportName = "MOST POINTS SCORED"
            Case "Baseball"
                Page.Title = "Oklahoma High School ALL DECADE BASEBALL List of State Champions 2010-2019"
                strDetailSportName = "Spring Baseball"
            Case "FBA"
                Page.Title = "Oklahoma High School ALL DECADE FALL BASEBALL List of State Champions 2010-2019"
                strKey = "BaseballFall"
                strDetailSportName = "Fall Baseball"
            Case "CH"
                Page.Title = "Oklahoma High School ALL DECADE CHEERLEADING List of State Champions 2010-2019"
                strKey = "Cheerleading"
                strDetailSportName = "Cheerleading"
            Case "FP"
                Page.Title = "Oklahoma High School ALL DECADE FAST PITCH SOFTBALL List of State Champions 2010-2019"
                strKey = "FPSoftball"
                strDetailSportName = "Fast Pitch Softball"
            Case "GOB"
                Page.Title = "Oklahoma High School ALL DECADE GOLF (BOYS) List of State Champions 2010-2019"
                strKey = "GolfBoys"
                strDetailSportName = "Golf (Boys)"
            Case "GOG"
                Page.Title = "Oklahoma High School ALL DECADE GOLF (GIRLS) List of State Champions 2010-2019"
                strKey = "GolfGirls"
                strDetailSportName = "Golf (Girls)"
            Case "SCB"
                Page.Title = "Oklahoma High School ALL DECADE SOCCER (BOYS) List of State Champions 2010-2019"
                strKey = "SoccerBoys"
                strDetailSportName = "Soccer (Boys)"
            Case "SCG"
                Page.Title = "Oklahoma High School ALL DECADE SOCCER (GIRLS) List of State Champions 2010-2019"
                strKey = "SoccerGirls"
                strDetailSportName = "Soccer (Girls)"
            Case "SP"
                Page.Title = "Oklahoma High School ALL DECADE SLOW PITCH SOFTBALL List of State Champions 2010-2019"
                strKey = "SPSoftball"
                strDetailSportName = "Slow Pitch Softball"
            Case "TNB"
                Page.Title = "Oklahoma High School ALL DECADE TENNIS (BOYS) List of State Champions 2010-2019"
                strKey = "TennisBoys"
                strDetailSportName = "Tennis (Boys)"
            Case "TNG"
                Page.Title = "Oklahoma High School ALL DECADE TENNIS (GIRLS) List of State Champions 2010-2019"
                strKey = "TennisGirls"
                strDetailSportName = "Tennis (Girls)"
            Case "TKB"
                Page.Title = "Oklahoma High School ALL DECADE TRACK (BOYS) List of State Champions 2010-2019"
                strKey = "TrackBoys"
                strDetailSportName = "Track (Boys)"
            Case "TKG"
                Page.Title = "Oklahoma High School ALL DECADE TRACK (GIRLS) List of State Champions 2010-2019"
                strKey = "TrackGirls"
                strDetailSportName = "Track (Girls)"
            Case "VB"
                Page.Title = "Oklahoma High School ALL DECADE VOLLEYBALL List of State Champions 2010-2019"
                strKey = "Volleyball"
                strDetailSportName = "Volleyball"
            Case "WR"
                Page.Title = "Oklahoma High School ALL DECADE WRESTLING (TOURNEY) List of State Champions 2010-2019"
                strKey = "Wrestling"
                strDetailSportName = "Wrestling (Tournament)"
            Case "WRD"
                Page.Title = "Oklahoma High School ALL DECADE WRESTLING (DUAL) List of State Champions 2010-2019"
                strKey = "WrestlingDual"
                strDetailSportName = "Wrestling (Dual)"
            Case "XRCB"
                Page.Title = "Oklahoma High School ALL DECADE CROSS COUNTRY (BOYS) List of State Champions 2010-2019"
                strKey = "CrossCountryBoys"
                strDetailSportName = "Cross Country (Boys)"
            Case "XRCG"
                Page.Title = "Oklahoma High School ALL DECADE CROSS COUNTRY (GIRLS) List of State Champions 2010-2019"
                strKey = "CrossCountryGirls"
                strDetailSportName = "Cross Country (Girls)"
            Case Else
                strDetailSportName = "ALL STATE CHAMPIONSHIPS"
                strKey = "NONE"
        End Select

        If Not IsPostBack Then
            If strKey = "" Then

            Else
                ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT DISTINCT strClass FROM tblStateChampions WHERE strSportGenderKey = '" & strKey & "' AND strState = 'OK' AND intYear = 2019 ORDER BY strClass")
                RadDropDownListClass.DataSource = ds
                RadDropDownListClass.DataBind()
            End If
        End If

        Session("globalSportGenderKey") = strKey

        lblOneColumnDetail.Text = strDetailSportName

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text.ToUpper
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text.ToUpper

    End Sub

    Private Sub RadDropDownListClass_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListClass.DataBound
        RadDropDownListClass.Items.Insert(0, "ALL CLASSES")
    End Sub

    Private Sub RadDropDownListClass_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListClass.SelectedIndexChanged
        If RadDropDownListClass.SelectedValue = "ALL CLASSES" Then
            SqlDataSource2.SelectCommand = "Select COUNT(*) As intWins, UPPER(strSchool) + '<br />(' + dbo.GetStateChampionshipYearsSport(@sport, strSchool, 2010, 2019) + ')' AS strSchool FROM tblStateChampions WHERE(intYear >= 2010 And intYear <= 2019) And strState = @state And strSportGenderKey = @sport GROUP BY strSchool ORDER BY Count(*) DESC, strSchool"
            SqlDataSource2.DataBind()
        Else
            SqlDataSource2.SelectCommand = "Select COUNT(*) As intWins, UPPER(strSchool) + '<br />(' + dbo.GetStateChampionshipYearsSport(@sport, strSchool, 2010, 2019) + ')' AS strSchool FROM tblStateChampions WHERE(intYear >= 2010 And intYear <= 2019) And strState = @state And strSportGenderKey = @sport And strClass = @cboClass GROUP BY strSchool ORDER BY Count(*) DESC, strSchool"
            SqlDataSource2.DataBind()
        End If
    End Sub
End Class