Imports System
Imports Telerik.Web.UI
Imports System.Web.UI.WebControls
Imports System.Collections.Generic
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.Services

Public Class PlayoffCentralSP
    Inherits RadAjaxPage

    Public strSubPage As String = "PlayoffCentralSP.aspx"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Response.Redirect(ConfigurationManager.AppSettings("HomePage"))

        If Session("globalState") Is Nothing Then
            Session("globalState") = "OK"
        End If

        If Request.Browser.IsMobileDevice Then
            RadAjaxPanelMOBILE.Visible = True
            RadAjaxPanelWEB.Visible = False
            tblContentM.Visible = True
            tblHeaderm.Visible = True
            tblBKPlayoffMatchupM.Visible = True
            hlBottomM.Visible = True
            tblContent.Visible = False
            tblHeader.Visible = False
            tblBKPlayoffMatchup.Visible = False
            hlBottom.Visible = False
        Else
            RadAjaxPanelMOBILE.Visible = False
            RadAjaxPanelWEB.Visible = True
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

        Session("globalSportGenderKey") = "SPSoftball"

        Select Case cboClass.SelectedValue
            Case "SPSoftball6A"
                lblHeaderBoys.Text = "CLASS 6A SLOW PITCH STATE TOURNAMENT (May 1st @ ASA HOF)"
            Case "SPSoftball5A"
                lblHeaderBoys.Text = "CLASS 5A SLOW PITCH STATE TOURNAMENT (May 1st @ ASA HOF)"
            Case "SPSoftball4A"
                lblHeaderBoys.Text = "CLASS 4A SLOW PITCH STATE TOURNAMENT (May 1st @ ASA HOF)"
            Case "SPSoftball3A"
                lblHeaderBoys.Text = "CLASS 3A SLOW PITCH STATE TOURNAMENT (May 2nd @ ASA HOF)"
            Case "SPSoftball2A"
                lblHeaderBoys.Text = "CLASS 2A SLOW PITCH STATE TOURNAMENT (May 2nd @ ASA HOF)"
            Case "SPSoftballA"
                lblHeaderBoys.Text = "CLASS A SLOW PITCH STATE TOURNAMENT (May 2nd @ ASA HOF)"
            Case Else
                Response.Redirect(strSubPage & "?sp=" & cboClass.SelectedValue)
        End Select

        lblHeaderBoysM.Text = lblHeaderBoys.Text

        PopulateColumns(cboClass.SelectedValue)

        Session("globalTeam") = clsFunctions.VerifyString(Request.QueryString("tid"))
        Session("globalTeamTourney") = ConvertTeam(Session("globalTeam"))

        ProcessTeamInfo(Session("globalTeam"), cboClass.SelectedValue)

        Try
            clsLog.LogEvent("PLAYOFFCENTRALSP", Me.Page.AppRelativeVirtualPath.ToString, cboClass.SelectedValue, Session("globalTeam"), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Public Function ConvertTeam(strTeamIn As String) As String
        Dim strTeamOut As String = strTeamIn

        If strTeamIn = "SEQUOYAH (TAHLEQUAH)" Then
            strTeamOut = "Sequoyah Tahlequah"
        ElseIf strTeamIn = "CENTRAL HIGH" Then
            strTeamOut = "CENTRAL MARLOW"
        ElseIf strTeamIn = "MOUNT ST. MARY" Then
            strTeamOut = "Mount Saint Mary"
        ElseIf strTeamIn = "STAR-SPENCER" Then
            strTeamOut = "Star Spencer"
        ElseIf strTeamIn = "CHOUTEAU-MAZIE" Then
            strTeamOut = "Chouteau"
        ElseIf strTeamIn = "PUTNAM CITY WEST" Then
            strTeamOut = "Putnam West"
        ElseIf strTeamIn = "PUTNAM CITY NORTH" Then
            strTeamOut = "Putnam North"
        ElseIf strTeamIn = "NORTHWEST CLASSEN" Then
            strTeamOut = "Northwest"
        ElseIf strTeamIn = "FT. COBB-BROXTON" Then
            strTeamOut = "Fort Cobb-Broxton"
        ElseIf strTeamIn = "OKLAHOMA CHRISTIAN ACADEMY"
        End If

        Return strTeamOut
    End Function

    Public Sub ProcessTeamInfo(strSelectedTeam As String, strSportGenderKey As String)
        Dim strSQL As String = ""
        Dim strValue As String = ""

        hlState.NavigateUrl = clsPlayoffCentral.GetOSSAAPDF(strSportGenderKey, 0)
        hlState.Text = "STATE BRACKET"
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

        hlNews.NavigateUrl = ""
        hlNews.Text = ""

        If hlNews.Text = "" Then
        Else
            hlNewsM.NavigateUrl = hlNews.NavigateUrl
            hlNewsM.Text = hlNews.Text
        End If

        ' SEASON INFO...
        If strSelectedTeam = "" Then
            lblTeam1SeasonInfo.Text = ""
        Else
            strValue = "<strong>" & strSelectedTeam & "</strong><br>"
            strValue = strValue & UCase(clsRankings.GetHeadCoach(strSelectedTeam, strSportGenderKey)) & " (" & clsRankings.GetWLRecord(strSelectedTeam, strSportGenderKey) & " W-L)"
            lblTeam1SeasonInfo.Text = strValue
        End If

        ' PLAYOFF HISTORY...
        If strSelectedTeam = "" Then
            lblTeam2SeasonInfo.Text = ""
            lblTeam1SeasonInfoM.Text = ""
        Else
            strValue = "<strong>" & strSelectedTeam & "</strong><br>"
            strValue = strValue & "<strong>STATE TOURNAMENT</strong><br>"
            strValue = strValue & clsStateChampions.GetAppearancesWL("OK", strSportGenderKey, ConvertTeam(strSelectedTeam))
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
        strSQL = "SELECT * FROM __IWATGStateSP WHERE " & strWhereClause & " ORDER BY intGame"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)

        For x = 0 To ds.Tables(0).Rows.Count - 1
            Select Case x
                ' QUARTER FINALS...
                Case 0
                    hlR2C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR1C1m.Text = hlR2C1.Text
                    hlR2C1.NavigateUrl = strSubPage & "?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR1C1m.NavigateUrl = hlR2C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR2C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR1C2m.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                    End If
                Case 1
                    hlR3C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR2C1m.Text = hlR3C1.Text
                    hlR3C1.NavigateUrl = strSubPage & "?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR2C1m.NavigateUrl = hlR3C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR3C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR2C2m.Text = cellR3C2.Text
                    End If
                Case 2
                    hlR5C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR3C1m.Text = hlR5C1.Text
                    hlR5C1.NavigateUrl = strSubPage & "?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR3C1m.NavigateUrl = hlR5C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR5C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR3C2m.Text = cellR5C2.Text
                    End If
                Case 3
                    hlR6C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR4C1m.Text = hlR6C1.Text
                    hlR6C1.NavigateUrl = strSubPage & "?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR4C1m.NavigateUrl = hlR6C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR6C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR4C2m.Text = cellR6C2.Text
                    End If
                Case 4
                    hlR8C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR5C1m.Text = hlR8C1.Text
                    hlR8C1.NavigateUrl = strSubPage & "?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR5C1m.NavigateUrl = hlR8C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR8C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR5C2m.Text = cellR8C2.Text
                    End If
                Case 5
                    hlR9C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR6C1m.Text = hlR9C1.Text
                    hlR9C1.NavigateUrl = strSubPage & "?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR6C1m.NavigateUrl = hlR9C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR9C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR6C2m.Text = cellR9C2.Text
                    End If
                Case 6
                    hlR11C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR7C1m.Text = hlR11C1.Text
                    hlR11C1.NavigateUrl = strSubPage & "?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR7C1m.NavigateUrl = hlR11C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR11C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR7C2m.Text = cellR11C2.Text
                    End If
                Case 7
                    hlR12C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR8C1m.Text = hlR12C1.Text
                    hlR12C1.NavigateUrl = strSubPage & "?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR8C1m.NavigateUrl = hlR12C1.NavigateUrl
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR12C2.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR8C2m.Text = cellR12C2.Text
                    End If
                ' SEMIFINALS...
                Case 8
                    If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
                    Else
                        cellR3C3.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                        hlR9C1m.Text = cellR3C3.Text
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR3C4.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR9C2m.Text = cellR3C4.Text
                    End If
                Case 9
                    If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
                    Else
                        cellR5C3.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                        hlR10C1m.Text = cellR5C3.Text
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR5C4.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR10C2m.Text = cellR5C4.Text
                    End If
                Case 10
                    If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
                    Else
                        cellR9C3.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                        hlR11C1m.Text = cellR9C3.Text
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR9C4.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR11C2m.Text = cellR9C4.Text
                    End If
                Case 11
                    If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
                    Else
                        cellR11C3.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                        hlR12C1m.Text = cellR11C3.Text
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScoreShow") > 0 Then
                        cellR11C4.Text = ds.Tables(0).Rows(x).Item("TotalScoreShow")
                        cellR12C2m.Text = cellR11C4.Text
                    End If
                ' FINALS...
                Case 12
                    If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
                    Else
                        Try
                            cellR6C5.Text = ds.Tables(0).Rows(x).Item("SchoolName")
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
                        cellR8C5.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                        hlR14C1m.Text = cellR8C5.Text
                        If ds.Tables(0).Rows(x).Item("TotalScoreShow") > ds.Tables(0).Rows(x).Item("oTotalScoreShow") Then
                            Try
                                cellR7C7.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                            Catch
                                cellR7C7.Text = ""
                            End Try
                        Else
                            Try
                                cellR7C7.Text = ds.Tables(0).Rows(x).Item("oSchoolName")
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
        Response.Redirect(strSubPage & "?sp=" & sender.SelectedValue)
    End Sub

    Private Sub cboClassm_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboClassm.SelectedIndexChanged
        Response.Redirect(strSubPage & "?sp=" & sender.SelectedValue)
    End Sub
End Class
