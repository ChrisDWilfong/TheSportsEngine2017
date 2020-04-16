Imports System
Imports Telerik.Web.UI
Imports System.Web.UI.WebControls
Imports System.Collections.Generic
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.Services

Public Class PlayoffCentralBKS
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Response.Redirect(ConfigurationManager.AppSettings("HomePage"))

        If Session("globalState") Is Nothing Then
            Session("globalState") = "OK"
        End If

        If Request.Browser.IsMobileDevice Then
            tblContentM.Visible = True
            tblHeaderm.Visible = True
            tblBKPlayoffMatchupM.Visible = True
            hlBottomM.Visible = True
            tblContent.Visible = False
            tblHeader.Visible = False
            tblBKPlayoffMatchup.Visible = False
            hlBottom.Visible = False
        Else
            tblContentM.Visible = False
            tblHeaderm.Visible = False
            tblBKPlayoffMatchupM.Visible = False
            hlBottomM.Visible = False
            tblContent.Visible = True
            tblHeader.Visible = True
            tblBKPlayoffMatchup.Visible = True
            hlBottom.Visible = True
        End If

		If Not IsPostBack Then
            If Request.QueryString("sp") Is Nothing Then
            Else
                cboClassm.SelectedValue = clsFunctions.VerifyString(Request.QueryString("sp"))
                cboClass.SelectedValue = clsFunctions.VerifyString(Request.QueryString("sp"))
            End If
        Else
        End If

        If tblContentM.Visible = True Then
            If cboClassm.SelectedValue.Contains("BasketballBoys") Then
				Session("globalSportGenderKey") = "BasketballBoys"
			Else
                Session("globalSportGenderKey") = "BasketballGirls"
            End If
        Else
			If cboClass.SelectedValue.Contains("BasketballBoys") Then
				Session("globalSportGenderKey") = "BasketballBoys"
			Else
				Session("globalSportGenderKey") = "BasketballGirls"
            End If
        End If

		Dim strTwitterCard As String
		Select Case cboClass.SelectedValue
			Case "BasketballBoys6A"
				lblHeaderBoys.Text = "CLASS 6A BOYS STATE TOURNAMENTS"
			Case "BasketballGirls6A"
				lblHeaderBoys.Text = "CLASS 6A GIRLS STATE TOURNAMENTS"
			Case "BasketballBoys5A"
				lblHeaderBoys.Text = "CLASS 5A BOYS STATE TOURNAMENTS"
			Case "BasketballGirls5A"
				lblHeaderBoys.Text = "CLASS 5A GIRLS STATE TOURNAMENTS"
			Case "BasketballBoys4A"
				lblHeaderBoys.Text = "CLASS 4A BOYS STATE TOURNAMENTS"
			Case "BasketballGirls4A"
				lblHeaderBoys.Text = "CLASS 4A GIRLS STATE TOURNAMENTS"
			Case "BasketballBoys3A"
				lblHeaderBoys.Text = "CLASS 3A BOYS STATE TOURNAMENTS"
			Case "BasketballGirls3A"
				lblHeaderBoys.Text = "CLASS 4A GIRLS STATE TOURNAMENTS"
			Case "BasketballBoys2A"
				lblHeaderBoys.Text = "CLASS 2A BOYS STATE TOURNAMENTS"
			Case "BasketballGirls2A"
				lblHeaderBoys.Text = "CLASS 2A GIRLS STATE TOURNAMENTS"
			Case "BasketballBoysA"
				lblHeaderBoys.Text = "CLASS A BOYS STATE TOURNAMENTS"
			Case "BasketballGirlsA"
				lblHeaderBoys.Text = "CLASS A GIRLS STATE TOURNAMENTS"
			Case "BasketballBoysB"
				lblHeaderBoys.Text = "CLASS B BOYS STATE TOURNAMENTS"
			Case "BasketballGirlsB"
				lblHeaderBoys.Text = "CLASS B GIRLS STATE TOURNAMENTS"
			Case Else
				Response.Redirect("PlayoffCentralBK.aspx?sp=" & cboClass.SelectedValue)
		End Select

		strTwitterCard = "<meta name='twitter: Description' content='" & lblHeaderBoys.Text & " Playoff Central.  Click each team for ALL-TIME Playoff History!' />"
		Session("tc") = strTwitterCard

		lblHeaderBoysM.Text = lblHeaderBoys.Text

        PopulateColumns(cboClass.SelectedValue)

        Session("globalTeam") = clsFunctions.VerifyString(Request.QueryString("tid"))
        Session("globalTeamTourney") = ConvertTeam(Session("globalTeam"))

        ProcessTeamInfo(Session("globalTeam"), cboClass.SelectedValue)

        Try
            clsLog.LogEvent("PLAYOFFCENTRALBKS", Me.Page.AppRelativeVirtualPath.ToString, cboClass.SelectedValue, Session("globalTeam"), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Public Function ConvertTeam(strTeamIn As String) As String
        Dim strTeamOut As String = strTeamIn

		If strTeamIn = "SEQUOYAH (TAHLEQUAH)" Then
			strTeamOut = "SEQUOYAH TAHLEQUAH"
		ElseIf strTeamIn = "MOUNT ST. MARY" Then
			strTeamOut = "MOUNT SAINT MARY"
		ElseIf strTeamIn = "STAR-SPENCER" Then
			strTeamOut = "STAR SPENCER"
		ElseIf strTeamIn = "CHOUTEAU-MAZIE" Then
			strTeamOut = "CHOUTEAU"
		ElseIf strTeamIn = "PUTNAM CITY WEST" Then
			strTeamOut = "PUTNAM WEST"
		ElseIf strTeamIn = "PUTNAM CITY NORTH" Then
			strTeamOut = "PUTNAM NORTH"
		ElseIf strTeamIn = "NORTHWEST CLASSEN" Then
			strTeamOut = "NORTHWEST"
		ElseIf strTeamIn = "FT. COBB-BROXTON" Then
			strTeamOut = "FORT COBB-BROXTON"
		ElseIf strTeamIn = "BOISE CITY/KEYES" Then
			strTeamOut = "BOISE CITY"
		ElseIf strTeamIn = "DEER CREEK (ED)" Then
			strTeamOut = "DEER CREEK"
		ElseIf strTeamIn = "FT. GIBSON" Then
			strTeamOut = "FORT GIBSON"
			'ElseIf strTeamIn = "OKLAHOMA CHRISTIAN SCHOOL" Then
			'	strTeamOut = "OKLAHOMA CHRISTIAN"
		ElseIf strTeamIn = "EDISON PREP" Then
			strTeamOut = "THOMAS EDISON"
		ElseIf strTeamIn = "CLASSEN SAS" Then
			strTeamOut = "CLASSEN"
		End If

        Return strTeamOut
    End Function

    Public Sub ProcessTeamInfo(strSelectedTeam As String, strSportGenderKey As String)
        Dim strSQL As String = ""
        Dim strValue As String = ""

        hlArea1.NavigateUrl = clsPlayoffCentral.GetOSSAAPDF(strSportGenderKey, 1)
        hlArea1.Text = "AREA I"
        hlArea2.NavigateUrl = clsPlayoffCentral.GetOSSAAPDF(strSportGenderKey, 2)
        hlArea2.Text = "AREA II"
        hlArea3.NavigateUrl = clsPlayoffCentral.GetOSSAAPDF(strSportGenderKey, 3)
        hlArea3.Text = "AREA III"
        hlArea4.NavigateUrl = clsPlayoffCentral.GetOSSAAPDF(strSportGenderKey, 4)
        hlArea4.Text = "AREA IV"
        hlState.NavigateUrl = clsPlayoffCentral.GetOSSAAPDF(strSportGenderKey, 0)
		hlState.Text = "OFFICIAL OSSAA STATE BRACKET"
		hlStateM.NavigateUrl = hlState.NavigateUrl
        hlStateM.Text = hlState.Text

        'If strSportGenderKey.Contains("BoysA") Or strSportGenderKey.Contains("GirlsA") Then
        '    hlNews.NavigateUrl = "http://archive.newsok.com/olive/apa/oklahoman/SharedView.Article.aspx?href=DOK%2F2018%2F02%2F28&id=Ar01900&sk=21308128"
        '    hlNews.Text = "NEWSOK.COM CLASS A 5-Minute Guide"
        'ElseIf strSportGenderKey.Contains("BoysB") Or strSportGenderKey.Contains("GirlsB") Then
        '    hlNews.NavigateUrl = "http://archive.newsok.com/olive/apa/oklahoman/SharedView.Article.aspx?href=DOK%2F2018%2F03%2F01&id=Ar01800&sk=64720002"
        '    hlNews.Text = "NEWSOK.COM CLASS B 5-Minute Guide"
        'ElseIf strSportGenderKey.Contains("Boys6A") Or strSportGenderKey.Contains("Girls6A") Then
        '    hlNews.NavigateUrl = "http://archive.newsok.com/olive/apa/oklahoman/SharedView.Article.aspx?href=DOK%2F2018%2F03%2F05&id=Ar01800&sk=E289D3C4"
        '    hlNews.Text = "NEWSOK.COM CLASS 6A 5-Minute Guide"
        'ElseIf strSportGenderKey.Contains("Boys5A") Or strSportGenderKey.Contains("Girls5A") Then
        '    hlNews.NavigateUrl = "http://archive.newsok.com/olive/apa/oklahoman/SharedView.Article.aspx?href=DOK%2F2018%2F03%2F06&id=Ar01500&sk=96169206"
        '    hlNews.Text = "NEWSOK.COM CLASS 5A 5-Minute Guide"
        'ElseIf strSportGenderKey.Contains("Boys4A") Or strSportGenderKey.Contains("Girls4A") Then
        '    hlNews.NavigateUrl = "http://archive.newsok.com/olive/apa/oklahoman/SharedView.Article.aspx?href=DOK%2F2018%2F03%2F07&id=Ar01800&sk=DFB2F0AB"
        '    hlNews.Text = "NEWSOK.COM CLASS 4A 5-Minute Guide"
        'ElseIf strSportGenderKey.Contains("Boys3A") Then
        '    hlNews.NavigateUrl = "http://archive.newsok.com/olive/apa/oklahoman/SharedView.Article.aspx?href=DOK%2F2018%2F03%2F08&id=Ar01601&sk=9CCF8D91"
        '    hlNews.Text = "NEWSOK.COM CLASS 3A 5-Minute Guide"
        'ElseIf strSportGenderKey.Contains("Girls3A") Then
        '    hlNews.NavigateUrl = "http://archive.newsok.com/olive/apa/oklahoman/SharedView.Article.aspx?href=DOK%2F2018%2F03%2F08&id=Ar01602&sk=311EEC58"
        '    hlNews.Text = "NEWSOK.COM CLASS 3A 5-Minute Guide"
        'ElseIf strSportGenderKey.Contains("Boys2A") Then
        '    hlNews.NavigateUrl = "http://archive.newsok.com/olive/apa/oklahoman/SharedView.Article.aspx?href=DOK%2F2018%2F03%2F08&id=Ar01701&sk=30384093"
        '    hlNews.Text = "NEWSOK.COM CLASS 2A 5-Minute Guide"
        'ElseIf strSportGenderKey.Contains("Girls2A") Then
        '    hlNews.NavigateUrl = "http://archive.newsok.com/olive/apa/oklahoman/SharedView.Article.aspx?href=DOK%2F2018%2F03%2F08&id=Ar01702&sk=D2344C29"
        '    hlNews.Text = "NEWSOK.COM CLASS 2A 5-Minute Guide"
        'Else
        '    hlNews.NavigateUrl = ""
        '    hlNews.Text = ""
        'End If

        If hlNews.Text = "" Then
        Else
            hlNewsM.NavigateUrl = hlNews.NavigateUrl
            hlNewsM.Text = hlNews.Text
        End If

        ' SEASON INFO...
        'If strSelectedTeam = "" Then
        '    lblTeam1SeasonInfo.Text = ""
        'Else
        '    strValue = "<strong>" & strSelectedTeam & "</strong><br>"
        '    strValue = strValue & UCase(clsRankings.GetHeadCoach(strSelectedTeam, strSportGenderKey)) & " (" & clsRankings.GetWLRecord(strSelectedTeam, strSportGenderKey) & " W-L)"
        '    lblTeam1SeasonInfo.Text = strValue
        'End If
        ' PLAYOFF HISTORY...
        If strSelectedTeam = "" Then
            lblTeam2SeasonInfo.Text = ""
            lblTeam1SeasonInfoM.Text = ""
        Else
            strValue = "<strong>" & strSelectedTeam & "</strong><br>"
            strValue = strValue & "<strong>STATE TOURNAMENT</strong><br>"
			strValue = strValue & clsStateChampions.GetAppearancesWL("OK", strSportGenderKey, ConvertTeam(strSelectedTeam))
			Dim strChampionships As String

			Dim intCount As Integer = 0
			strChampionships = "No Championships"
			If strSportGenderKey.Contains("BasketballBoys") Then
				strSQL = "SELECT TOP 1 intChampionships FROM IWATGview_Basketball_StateChampionsCOUNT WHERE strTeam = '" & ConvertTeam(strSelectedTeam) & "' AND strSportGenderKey = 'BasketballBoys' AND strState = 'OK'"
			Else
				strSQL = "SELECT TOP 1 intChampionships FROM IWATGview_Basketball_StateChampionsCOUNT WHERE strTeam = '" & ConvertTeam(strSelectedTeam) & "' AND strSportGenderKey = 'BasketballGirls' AND strState = 'OK'"
			End If
			intCount = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
				If intCount > 1 Then
					strChampionships = intCount & " Championships"
				ElseIf intCount = 1 Then
					strChampionships = "1 Championships"
				End If
				strValue = strValue & "<br>" & strChampionships
				lblTeam2SeasonInfo.Text = strValue
				lblTeam1SeasonInfoM.Text = strValue
			End If

	End Sub

    Public Sub PopulateColumns(strSportGenderKey As String)
        Dim ds As DataSet
        Dim strSQL As String = ""
        Dim strWhereClause As String = ""
        Dim intArea As Integer = 0

        strWhereClause = "(strSportGenderKey = '" & strSportGenderKey & "')"
        strSQL = "SELECT * FROM __IWATGStateBK WHERE " & strWhereClause & " ORDER BY intGame"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)

        For x = 0 To ds.Tables(0).Rows.Count - 1
            Select Case x
				' QUARTER FINALS...
				Case 0
					' Get the header...
					cellR1C1.Text = "QUARTERFINALS - " & "<br>@ " & ds.Tables(0).Rows(x).Item("strLocation")
					cellQFm.Text = cellR1C1.Text
					' Get the Gametime...
					cellR4C1.Text = Format(ds.Tables(0).Rows(x).Item("gameDate"), "MMMM d") & " @ " & ds.Tables(0).Rows(x).Item("gameTime")
					cellR2aC1m.Text = cellR4C1.Text

					hlR2C1.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
					hlR1C1m.Text = hlR2C1.Text
                    hlR2C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR1C1m.NavigateUrl = hlR2C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR2C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR1C2m.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                    End If
                Case 1
					hlR3C1.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
					hlR2C1m.Text = hlR3C1.Text
                    hlR3C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR2C1m.NavigateUrl = hlR3C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR3C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR2C2m.Text = cellR3C2.Text
                    End If
				Case 2
					' Get the Gametime...
					cellR7C1.Text = Format(ds.Tables(0).Rows(x).Item("gameDate"), "MMMM d") & " @ " & ds.Tables(0).Rows(x).Item("gameTime")
					cellR4aC1m.Text = cellR7C1.Text

					hlR5C1.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
					hlR3C1m.Text = hlR5C1.Text
                    hlR5C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR3C1m.NavigateUrl = hlR5C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR5C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR3C2m.Text = cellR5C2.Text
                    End If
                Case 3
					hlR6C1.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
					hlR4C1m.Text = hlR6C1.Text
                    hlR6C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR4C1m.NavigateUrl = hlR6C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR6C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR4C2m.Text = cellR6C2.Text
                    End If
				Case 4
					' Get the Gametime...
					cellR10C1.Text = Format(ds.Tables(0).Rows(x).Item("gameDate"), "MMMM d") & " @ " & ds.Tables(0).Rows(x).Item("gameTime")
					cellR6aC1m.Text = cellR10C1.Text

					hlR8C1.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
					hlR5C1m.Text = hlR8C1.Text
                    hlR8C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR5C1m.NavigateUrl = hlR8C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR8C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR5C2m.Text = cellR8C2.Text
                    End If
                Case 5
					hlR9C1.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
					hlR6C1m.Text = hlR9C1.Text
                    hlR9C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR6C1m.NavigateUrl = hlR9C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR9C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR6C2m.Text = cellR9C2.Text
                    End If
				Case 6
					' Get the Gametime...
					cellR13C1.Text = Format(ds.Tables(0).Rows(x).Item("gameDate"), "MMMM d") & " @ " & ds.Tables(0).Rows(x).Item("gameTime")
					cellR8aC1m.Text = cellR13C1.Text

					hlR11C1.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
					hlR7C1m.Text = hlR11C1.Text
                    hlR11C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR7C1m.NavigateUrl = hlR11C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR11C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR7C2m.Text = cellR11C2.Text
                    End If
                Case 7
					hlR12C1.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
					hlR8C1m.Text = hlR12C1.Text
                    hlR12C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR8C1m.NavigateUrl = hlR12C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR12C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR8C2m.Text = cellR12C2.Text
                    End If
				' SEMIFINALS...
				Case 8
					' Get the header...
					cellR1C3.Text = "SEMIFINALS - " & "<br>@ " & ds.Tables(0).Rows(x).Item("strLocation")
					cellSFm.Text = cellR1C3.Text
					' Get the Gametime...
					cellR6C3.Text = Format(ds.Tables(0).Rows(x).Item("gameDate"), "MMMM d") & " @ " & ds.Tables(0).Rows(x).Item("gameTime")
					hlR10C1m.Text = cellR6C3.Text

					If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
						hlR9C1m.Text = ds.Tables(0).Rows(x).Item("OtherTeam")
					Else
						cellR3C3.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
						hlR9C1m.Text = cellR3C3.Text
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR3C4.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR9C2m.Text = cellR3C4.Text
                    End If
                Case 9
					If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
					Else
						cellR5C3.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
						hlR10C1m.Text = cellR5C3.Text
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR5C4.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR10C2m.Text = cellR5C4.Text
                    End If
				Case 10
					' Get the Gametime...
					cellR12C3.Text = Format(ds.Tables(0).Rows(x).Item("gameDate"), "MMMM d") & " @ " & ds.Tables(0).Rows(x).Item("gameTime")
					hlR12C1m.Text = cellR12C3.Text

					If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
						hlR11C1m.Text = ds.Tables(0).Rows(x).Item("OtherTeam")
					Else
						cellR9C3.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
						hlR11C1m.Text = cellR9C3.Text
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR9C4.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR11C2m.Text = cellR9C4.Text
                    End If
                Case 11
					If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
					Else
						cellR11C3.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
						hlR12C1m.Text = cellR11C3.Text
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR11C4.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR12C2m.Text = cellR11C4.Text
                    End If
				' FINALS...
				Case 12
					' Get the header...
					cellR1C5.Text = "CHAMPIONSHIP - " & "<br>@ " & ds.Tables(0).Rows(x).Item("strLocation")
					cellCm.Text = cellR1C5.Text

					' Get the Gametime...
					cellR9C5.Text = Format(ds.Tables(0).Rows(x).Item("gameDate"), "MMMM d") & " @ " & ds.Tables(0).Rows(x).Item("gameTime")
					hlR14C1m.Text = cellR9C5.Text

					If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
						hlR13C1m.Text = "STATE CHAMPIONSHIP"
					Else
						Try
							cellR6C5.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
							hlR13C1m.Text = cellR6C5.Text
                        Catch
                            cellR6C5.Text = ""
                            cellR13C2m.Text = cellR6C5.Text
                            hlR13C1m.Text = ""
                        End Try
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR6C6.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR13C2m.Text = cellR6C6.Text
                    End If
                Case 13
                    If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
                    Else
						cellR8C5.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
						hlR14C1m.Text = cellR8C5.Text
                        If ds.Tables(0).Rows(x).Item("TotalScoreShow") > ds.Tables(0).Rows(x).Item("oTotalScoreShow") Then
                            Try
								cellR7C7.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("SchoolName"))
							Catch
                                cellR7C7.Text = ""
                            End Try
                        Else
                            Try
								cellR7C7.Text = ConvertTeam(ds.Tables(0).Rows(x).Item("oSchoolName"))
							Catch
                                cellR7C7.Text = ""
                            End Try
                        End If
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR8C6.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR14C2m.Text = cellR8C6.Text
                    End If
                Case Else
            End Select
        Next

    End Sub

    Private Sub cboClass_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboClass.SelectedIndexChanged
        Response.Redirect("PlayoffCentralBKS.aspx?sp=" & sender.SelectedValue)
    End Sub

    Private Sub cboClassm_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboClassm.SelectedIndexChanged
        Response.Redirect("PlayoffCentralBKS.aspx?sp=" & sender.SelectedValue)
    End Sub
End Class
