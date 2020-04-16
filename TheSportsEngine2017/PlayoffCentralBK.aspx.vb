Imports System
Imports Telerik.Web.UI
Imports System.Web.UI.WebControls
Imports System.Collections.Generic
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.Services

Public Class PlayoffCentralBK
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Response.Redirect(ConfigurationManager.AppSettings("HomePage"))

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
            'Case "BasketballBoysA"
            '    lblHeaderBoys.Text = "CLASS A BOYS STATE TOURNAMENT"
            'Case "BasketballGirlsA"
            '    lblHeaderBoys.Text = "CLASS A GIRLS STATE TOURNAMENT"
            'Case "BasketballBoysB"
            '    lblHeaderBoys.Text = "CLASS B BOYS STATE TOURNAMENT"
            'Case "BasketballGirlsB"
            '    lblHeaderBoys.Text = "CLASS B GIRLS STATE TOURNAMENT"
            Case "BasketballBoysA-A"
                lblHeaderBoys.Text = "CLASS A BOYS AREA TOURNAMENT"
            Case "BasketballGirlsA-A"
                lblHeaderBoys.Text = "CLASS A GIRLS AREA TOURNAMENT"
            Case "BasketballBoysB-A"
                lblHeaderBoys.Text = "CLASS B BOYS AREA TOURNAMENT"
            Case "BasketballGirlsB-A"
                lblHeaderBoys.Text = "CLASS B GIRLS AREA TOURNAMENT"
            Case "BasketballBoys6A"
                lblHeaderBoys.Text = "CLASS 6A BOYS AREA TOURNAMENTS"
            Case "BasketballGirls6A"
                lblHeaderBoys.Text = "CLASS 6A GIRLS AREA TOURNAMENTS"
            Case "BasketballBoys5A"
                lblHeaderBoys.Text = "CLASS 5A BOYS AREA TOURNAMENTS"
            Case "BasketballGirls5A"
                lblHeaderBoys.Text = "CLASS 5A GIRLS AREA TOURNAMENTS"
            Case "BasketballBoys4A"
                lblHeaderBoys.Text = "CLASS 4A BOYS AREA TOURNAMENTS"
            Case "BasketballGirls4A"
                lblHeaderBoys.Text = "CLASS 4A GIRLS AREA TOURNAMENTS"
            Case "BasketballBoys3A"
                lblHeaderBoys.Text = "CLASS 3A BOYS AREA TOURNAMENTS"
            Case "BasketballGirls3A"
                lblHeaderBoys.Text = "CLASS 3A GIRLS AREA TOURNAMENTS"
            Case "BasketballBoys2A"
                lblHeaderBoys.Text = "CLASS 2A BOYS AREA TOURNAMENTS"
            Case "BasketballGirls2A"
                lblHeaderBoys.Text = "CLASS 2A GIRLS AREA TOURNAMENTS"
            Case Else
                Response.Redirect("PlayoffCentralBKS.aspx?sp=" & cboClass.SelectedValue)
        End Select

        Dim strSportGenderKey As String = ""

        Select Case cboClass.SelectedValue
            Case "BasketballBoysA-A"
                strSportGenderKey = "BasketballBoysA"
            Case "BasketballBoysB-A"
                strSportGenderKey = "BasketballBoysB"
            Case "BasketballGirlsA-A"
                strSportGenderKey = "BasketballGirlsA"
            Case "BasketballGirlsB-A"
                strSportGenderKey = "BasketballGirlsB"
            Case Else
                strSportGenderKey = cboClass.SelectedValue
        End Select

        PopulateColumn(1, "I", strSportGenderKey)
        PopulateColumn(2, "II", strSportGenderKey)
        PopulateColumn(3, "III", strSportGenderKey)
        PopulateColumn(4, "IV", strSportGenderKey)

        Try
            clsLog.LogEvent("PLAYOFFCENTBKDP", Me.Page.AppRelativeVirtualPath.ToString, strSportGenderKey, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Public Sub PopulateColumn(intColumnNo As Integer, strArea As String, strSportGenderKey As String)
        Dim ds As DataSet
        Dim strSQL As String = ""
        Dim strWhereClause As String = ""
        Dim intArea As Integer

        If strSportGenderKey.Contains("6A") Or strSportGenderKey.Contains("5A") Then
            strWhereClause = "(strSportGenderKey = '" & strSportGenderKey & "' AND strArea = '" & strArea & "')"
            strSQL = "SELECT * FROM __IWATGArea6A5A WHERE " & strWhereClause & " ORDER BY strArea, gameNo DESC, intKey"
        Else
            strWhereClause = "(strSportGenderKey = '" & strSportGenderKey & "' AND strArea = '" & strArea & "')"
            strSQL = "SELECT * FROM __IWATGAreaAB WHERE " & strWhereClause & " ORDER BY strArea, gameNo DESC, intKey"
        End If
		ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)

		intArea = intColumnNo

        For x = 0 To ds.Tables(0).Rows.Count - 1
            Select Case x
                Case 0
                    row1.Visible = True
                    row0.Visible = True
                    row2.Visible = True
                    ' Top Header...
                    Select Case strArea
                        Case "I"
                            hlR0CI.NavigateUrl = clsPlayoffCentral.GetOSSAAPDF(strSportGenderKey, 1)
                            cellR1CI.Text = "AREA " & strArea & "<br>" & ds.Tables(0).Rows(x).Item("strLocation")
                        Case "II"
                            hlR0CII.NavigateUrl = clsPlayoffCentral.GetOSSAAPDF(strSportGenderKey, 2)
                            cellR1CII.Text = "AREA " & strArea & "<br>" & ds.Tables(0).Rows(x).Item("strLocation")
                        Case "III"
                            hlR0CIII.NavigateUrl = clsPlayoffCentral.GetOSSAAPDF(strSportGenderKey, 2)
                            cellR1CIII.Text = "AREA " & strArea & "<br>" & ds.Tables(0).Rows(x).Item("strLocation")
                        Case "IV"
                            hlR0CIV.NavigateUrl = clsPlayoffCentral.GetOSSAAPDF(strSportGenderKey, 2)
                            cellR1CIV.Text = "AREA " & strArea & "<br>" & ds.Tables(0).Rows(x).Item("strLocation")
                    End Select
                    Select Case strArea
                        Case "I"
                            cellR2C0.Text = ds.Tables(0).Rows(x).Item("gameTitle")
                            lblR2CI.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "II"
                            lblR2CII.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "III"
                            lblR2CIII.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "IV"
                            lblR2CIV.Text = ds.Tables(0).Rows(x).Item("strScore")
                    End Select
                'DualArray(1, intArea) = ds.Tables(0).Rows(x).Item("scheduleID")
                Case 2
                    row3.Visible = True
                    Select Case strArea
                        Case "I"
                            cellR3C0.Text = ds.Tables(0).Rows(x).Item("gameTitle")
                            lblR3CI.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "II"
                            lblR3CII.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "III"
                            lblR3CIII.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "IV"
                            lblR3CIV.Text = ds.Tables(0).Rows(x).Item("strScore")
                    End Select
                'DualArray(2, intArea) = ds.Tables(0).Rows(x).Item("scheduleID")
                Case 4
                    row4.Visible = True
                    Select Case strArea
                        Case "I"
                            cellR4C0.Text = ds.Tables(0).Rows(x).Item("gameTitle")
                            lblR4CI.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "II"
                            lblR4CII.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "III"
                            lblR4CIII.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "IV"
                            lblR4CIV.Text = ds.Tables(0).Rows(x).Item("strScore")
                    End Select
                'DualArray(3, intArea) = ds.Tables(0).Rows(x).Item("scheduleID")
                Case 6
                    row5.Visible = True
                    Select Case strArea
                        Case "I"
                            cellR5C0.Text = ds.Tables(0).Rows(x).Item("gameTitle")
                            lblR5CI.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "II"
                            lblR5CII.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "III"
                            lblR5CIII.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "IV"
                            lblR5CIV.Text = ds.Tables(0).Rows(x).Item("strScore")
                    End Select
                'DualArray(4, intArea) = ds.Tables(0).Rows(x).Item("scheduleID")
                Case 8
                    row6.Visible = True
                    Select Case strArea
                        Case "I"
                            cellR6C0.Text = ds.Tables(0).Rows(x).Item("gameTitle")
                            lblR6CI.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "II"
                            lblR6CII.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "III"
                            lblR6CIII.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Case "IV"
                            lblR6CIV.Text = ds.Tables(0).Rows(x).Item("strScore")
                    End Select
                'DualArray(5, intArea) = ds.Tables(0).Rows(x).Item("scheduleID")
                Case Else
            End Select
        Next

    End Sub

    Public Function GetOSSAAPDF(strSportGenderKey As String, intArea As Integer) As String
        Dim strPDF As String = ""
        Select Case strSportGenderKey
            Case "BasketballBoysA"
				strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_ABArea" & intArea & ".pdf?id=" & Rnd()
			Case "BasketballGirlsA"
				strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_AGArea" & intArea & ".pdf?id=" & Rnd()
			Case "BasketballBoysB"
				strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_BBArea" & intArea & ".pdf?id=" & Rnd()
			Case "BasketballGirlsB"
				strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_BGArea" & intArea & ".pdf?id=" & Rnd()
			Case "BasketballBoys4A"
				strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_4ABArea" & intArea & ".pdf?id=" & Rnd()
			Case "BasketballGirls4A"
				strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_4AGArea" & intArea & ".pdf?id=" & Rnd()
			Case "BasketballBoys3A"
				strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_3ABArea" & intArea & ".pdf?id=" & Rnd()
			Case "BasketballGirls3A"
				strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_3AGArea" & intArea & ".pdf?id=" & Rnd()
			Case "BasketballBoys2A"
				strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_2ABArea" & intArea & ".pdf?id=" & Rnd()
			Case "BasketballGirls2A"
				strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_2AGArea" & intArea & ".pdf?id=" & Rnd()

		End Select
        Return strPDF
    End Function

    <System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()>
    Public Shared Function GetDynamicContent(ByVal contextKey As String) As String
        Dim strSQL As String = ""
        Dim ds As DataSet
        Dim dsS As DataSet
        Dim dsOS As DataSet
        Dim x As Integer = 0
        Dim scheduleID As Long
        Dim tRow As Integer
        Dim tCol As Integer
        Dim objSplit() As String = Split(contextKey, "_")
        Dim teamID As Long = 0
        Dim WL As String = ""
        Dim schoolName As String = ""
        Dim oteamID As Long = 0
        Dim oWL As String = ""
        Dim oSchoolName As String = ""
        Dim strLine As String = ""

        tRow = objSplit(0)
        tCol = objSplit(1)

        ' Get the scheduleID...
        'scheduleID = DualArray(tCol, tRow)

        ' Get the Team
        strSQL = "SELECT * FROM viewScheduleWAllCoachesDetail WHERE scheduleID = " & scheduleID
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)

        teamID = ds.Tables(0).Rows(0).Item("teamID")
        oteamID = ds.Tables(0).Rows(0).Item("oteamID")
        WL = ds.Tables(0).Rows(0).Item("W") & "-" & ds.Tables(0).Rows(0).Item("L")
        oWL = ds.Tables(0).Rows(0).Item("oW") & "-" & ds.Tables(0).Rows(0).Item("oL")
        schoolName = UCase(ds.Tables(0).Rows(0).Item("SchoolName"))
        oSchoolName = UCase(ds.Tables(0).Rows(0).Item("oSchoolName"))

        Dim b As New StringBuilder()

        ' HEADER...
        b.Append("<table style='background-color:#f3f3f3; border: #336699 3px solid; ")
        b.Append("width:650px; font-size:8pt; font-family:Verdana;' cellspacing='0' cellpadding='4'>")
        b.Append("<tr><td style='background-color:Maroon; font-size:16px; font-name:Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif; color:yellow;'>")
        b.Append("<b>" & schoolName & " " & WL & "</b>")
        b.Append("</td>")
        b.Append("<td style='background-color:Maroon; font-size:16px; font-name:Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif; color:yellow;'>")
        b.Append("<b>" & oSchoolName & " " & oWL & "</b>")
        b.Append("</td>")
        b.Append("</tr>")

        ' CURRENT SCHEDULE...
        strSQL = clsSchedules.GetScheduleTeamSQL(teamID)
        dsS = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)
        strSQL = clsSchedules.GetScheduleTeamSQL(oteamID)
        dsOS = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)

        Dim sMax As Integer = dsS.Tables(0).Rows.Count
        Dim oMax As Integer = dsOS.Tables(0).Rows.Count

        If sMax < oMax Then sMax = oMax

        'For x = 0 To sMax - 1
        For x = 0 To 1
            If dsS.Tables(0).Rows(x).Item("WL") = "W" Or dsS.Tables(0).Rows(x).Item("WL") = "L" Then
                b.Append("<tr>")
                b.Append("<td>")
                Try
                    b.Append(dsS.Tables(0).Rows(x).Item("WL"))
                    b.Append("-")
                    If dsS.Tables(0).Rows(x).Item("WL") = "W" Then
                        b.Append(UCase(dsS.Tables(0).Rows(x).Item("SchoolName")) & " over " & dsS.Tables(0).Rows(x).Item("Opposing Team") & " <strong>" & dsS.Tables(0).Rows(x).Item("TotalScore") & "-" & dsS.Tables(0).Rows(x).Item("oTotalScore"))
                    Else
                        b.Append(dsS.Tables(0).Rows(x).Item("Opposing Team") & " over " & UCase(dsS.Tables(0).Rows(x).Item("SchoolName")) & " <strong>" & dsS.Tables(0).Rows(x).Item("oTotalScore") & "-" & dsS.Tables(0).Rows(x).Item("TotalScore"))
                    End If
                Catch ex As Exception
                    b.Append("&nbsp;")
                End Try
                b.Append("</td>")
                b.Append("<td>")
                Try
                    b.Append(dsOS.Tables(0).Rows(x).Item("WL"))
                    b.Append("-")
                    If dsOS.Tables(0).Rows(x).Item("WL") = "W" Then
                        b.Append(oSchoolName & " over " & dsOS.Tables(0).Rows(x).Item("Opposing Team") & " <strong>" & dsOS.Tables(0).Rows(x).Item("TotalScore") & "-" & dsOS.Tables(0).Rows(x).Item("oTotalScore"))
                    Else
                        b.Append(dsOS.Tables(0).Rows(x).Item("Opposing Team") & " over " & oSchoolName & " <strong>" & dsOS.Tables(0).Rows(x).Item("oTotalScore") & "-" & dsOS.Tables(0).Rows(x).Item("TotalScore"))
                    End If
                Catch ex As Exception
                    b.Append("&nbsp;")
                End Try
                b.Append("</td>")
                b.Append("</tr>")
            End If
        Next

        b.Append("</table>")
        Return b.ToString()

    End Function

    Private Sub cboClass_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboClass.SelectedIndexChanged

		' Clear the columns...
		'cellR1C0.Text = ""
		'cellR1CI.Text = ""
		'cellR1CII.Text = ""
		'cellR1CIII.Text = ""
		'cellR1CIV.Text = ""

		'cellR2C0.Text = ""
		'cellR2CI.Text = ""
		'cellR2CII.Text = ""
		'cellR2CIII.Text = ""
		'cellR2CIV.Text = ""

		'cellR3C0.Text = ""
		'cellR3CI.Text = ""
		'cellR3CII.Text = ""
		'cellR3CIII.Text = ""
		'cellR3CIV.Text = ""

		'cellR4C0.Text = ""
		'cellR4CI.Text = ""
		'cellR4CII.Text = ""
		'cellR4CIII.Text = ""
		'cellR4CIV.Text = ""

		'cellR5C0.Text = ""
		'      cellR5CI.Text = ""
		'      cellR5CII.Text = ""
		'      cellR5CIII.Text = ""
		'      cellR5CIV.Text = ""

		'      cellR6C0.Text = ""
		'      cellR6CI.Text = ""
		'      cellR6CII.Text = ""
		'      cellR6CIII.Text = ""
		'      cellR6CIV.Text = ""
	End Sub
End Class
