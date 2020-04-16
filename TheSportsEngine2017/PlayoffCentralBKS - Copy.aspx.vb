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

        If Session("globalState") Is Nothing Then
            Session("globalState") = "OK"
        End If

        If Not IsPostBack Then
            If Request.QueryString("sp") Is Nothing Then
            Else
                cboClass.SelectedValue = Request.QueryString("sp")
            End If
        Else
        End If

        Select Case cboClass.SelectedValue
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

        PopulateColumns(cboClass.SelectedValue)

        Session("globalTeam") = Request.QueryString("tid")

        ProcessTeamInfo(Session("globalTeam"), cboClass.SelectedValue)

        Try
            clsLog.LogEvent("PLAYOFFCENTRALBKS", Me.Page.AppRelativeVirtualPath.ToString, cboClass.SelectedValue, Session("globalTeam"), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

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
        hlState.Text = "STATE BRACKET"

        If strSportGenderKey.Contains("BoysA") Or strSportGenderKey.Contains("GirlsA") Then
            hlNews.NavigateUrl = "http://archive.newsok.com/olive/apa/oklahoman/SharedView.Article.aspx?href=DOK%2F2018%2F02%2F28&id=Ar01900&sk=21308128"
            hlNews.Text = "NEWSOK.COM 5-Minute Guide"
        Else
            hlNews.NavigateUrl = ""
            hlNews.Text = ""
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
        Else
            strValue = "<strong>STATE TOURNAMENT</strong><br>"
            strValue = strValue & clsStateChampions.GetAppearancesWL("OK", strSportGenderKey, strSelectedTeam)
            lblTeam2SeasonInfo.Text = strValue
        End If

    End Sub

    Public Sub PopulateColumns(strSportGenderKey As String)
        Dim ds As DataSet
        Dim strSQL As String = ""
        Dim strWhereClause As String = ""
        Dim intArea As Integer = 0

        strWhereClause = "(strSportGenderKey = '" & strSportGenderKey & "')"
        strSQL = "SELECT * FROM __IWATGState WHERE " & strWhereClause & " ORDER BY intGame"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)

        For x = 0 To ds.Tables(0).Rows.Count - 1
            Select Case x
                ' QUARTER FINALS...
                Case 0
                    hlR2C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR2C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR2C2.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                Case 1
                    hlR3C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR3C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR3C2.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                Case 2
                    hlR5C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR5C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR5C2.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                Case 3
                    hlR6C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR6C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR6C2.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                Case 4
                    hlR8C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR8C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR8C2.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                Case 5
                    hlR9C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR9C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR9C2.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                Case 6
                    hlR11C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR11C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR11C2.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                Case 7
                    hlR12C1.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    hlR12C1.NavigateUrl = "PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue & "&tid=" & ds.Tables(0).Rows(x).Item("SchoolName")
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR12C2.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                ' SEMIFINALS...
                Case 8
                    If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
                    Else
                        cellR3C3.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR3C4.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                Case 9
                    If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
                    Else
                        cellR5C3.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR5C4.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                Case 10
                    If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
                    Else
                        cellR9C3.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR9C4.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                Case 11
                    If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
                    Else
                        cellR11C3.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR11C4.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                ' FINALS...
                Case 12
                    If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
                    Else
                        cellR6C5.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR6C6.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                Case 13
                    If ds.Tables(0).Rows(x).Item("SchoolName") Is System.DBNull.Value Then
                    Else
                        cellR8C5.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                        If ds.Tables(0).Rows(x).Item("TotalScore") > ds.Tables(0).Rows(x).Item("oTotalScore") Then
                            cellR7C7.Text = ds.Tables(0).Rows(x).Item("SchoolName")
                        Else
                            cellR7C7.Text = ds.Tables(0).Rows(x).Item("oSchoolName")
                        End If
                    End If
                    If ds.Tables(0).Rows(x).Item("TotalScore") > 0 Then
                        cellR8C6.Text = ds.Tables(0).Rows(x).Item("TotalScore")
                    End If
                Case Else
            End Select
        Next

    End Sub

    Private Sub cboClass_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboClass.SelectedIndexChanged
        Response.Redirect("PlayoffCentralBKS.aspx?sp=" & sender.SelectedValue)
    End Sub
End Class
