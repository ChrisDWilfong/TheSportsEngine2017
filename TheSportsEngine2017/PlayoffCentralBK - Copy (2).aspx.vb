Imports System
Imports Telerik.Web.UI
Imports System.Web.UI.WebControls
Imports System.Collections.Generic
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.Services

Public Class PlayoffCentralBK
    Inherits RadAjaxPage
    Shared DualArray(10, 10)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strWhereClause As String
        Dim ds As DataSet
        Dim strSQL As String
        Dim x As Integer

        If Session("globalState") Is Nothing Then
            Session("globalState") = "OK"
        End If

        If Request.QueryString("admin") = "143" Then
            Session("admin") = "143"
        Else
            Session("admin") = "0"
        End If

        strWhereClause = ""
        Select Case cboClass.SelectedValue
            Case "2A"
                strWhereClause = "(strSportGenderKey = 'BasketballBoysA' OR strSportGenderKey = 'BasketballGirlsA')"
                lblHeaderBoys.Text = "CLASS A BOYS AREA TOURNAMENTS"
                lblHeaderGirls.Text = "CLASS A GIRLS AREA TOURNAMENTS"
            Case "3A"
                strWhereClause = "(strSportGenderKey = 'BasketballBoysA' OR strSportGenderKey = 'BasketballGirlsA')"
                lblHeaderBoys.Text = "CLASS A BOYS AREA TOURNAMENTS"
                lblHeaderGirls.Text = "CLASS A GIRLS AREA TOURNAMENTS"
            Case "4A"
                strWhereClause = "(strSportGenderKey = 'BasketballBoysA' OR strSportGenderKey = 'BasketballGirlsA')"
                lblHeaderBoys.Text = "CLASS A BOYS AREA TOURNAMENTS"
                lblHeaderGirls.Text = "CLASS A GIRLS AREA TOURNAMENTS"
            Case "A"
                strWhereClause = "(strSportGenderKey = 'BasketballBoysA' OR strSportGenderKey = 'BasketballGirlsA')"
                lblHeaderBoys.Text = "CLASS A BOYS AREA TOURNAMENTS"
                lblHeaderGirls.Text = "CLASS A GIRLS AREA TOURNAMENTS"
            Case "B"
                strWhereClause = "(strSportGenderKey = 'BasketballBoysB' OR strSportGenderKey = 'BasketballGirlsB')"
                lblHeaderBoys.Text = "CLASS B BOYS AREA TOURNAMENTS"
                lblHeaderGirls.Text = "CLASS B GIRLS AREA TOURNAMENTS"
            Case Else
                strWhereClause = ""
        End Select

        If strWhereClause = "" Then

        Else
            strSQL = "SELECT * FROM __IWATGAreaAB WHERE " & strWhereClause & " ORDER BY strSportGenderKey, intSort DESC, strArea, intKey"
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)

            For x = 0 To ds.Tables(0).Rows.Count - 1
                Select Case x
                    ' BOYS...
                    Case 0
                        cellR1C2.Text = "AREA 1<br>" & ds.Tables(0).Rows(x).Item("strLocation")
                        lblR2C2.Text = ds.Tables(0).Rows(x).Item("strScore")
                        DualArray(1, 1) = ds.Tables(0).Rows(x).Item("scheduleID")
                    Case 2
                        cellR1C3.Text = "AREA 2<br>" & ds.Tables(0).Rows(x).Item("strLocation")
                        lblR2C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                        DualArray(1, 2) = ds.Tables(0).Rows(x).Item("scheduleID")
                    Case 4
                        cellR1C4.Text = "AREA 3<br>" & ds.Tables(0).Rows(x).Item("strLocation")
                        lblR2C4.Text = ds.Tables(0).Rows(x).Item("strScore")
                        DualArray(1, 3) = ds.Tables(0).Rows(x).Item("scheduleID")
                    Case 6
                        cellR1C5.Text = "AREA 4<br>" & ds.Tables(0).Rows(x).Item("strLocation")
                        lblR2C5.Text = ds.Tables(0).Rows(x).Item("strScore")
                        DualArray(1, 4) = ds.Tables(0).Rows(x).Item("scheduleID")
                    Case 8
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Then
                            lblR3C2.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(2, 1) = ds.Tables(0).Rows(x).Item("scheduleID")
                        Else
                            lblR3C2.Text = "SATURDAY"
                            lblR4C2.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(3, 1) = ds.Tables(0).Rows(x).Item("scheduleID")
                        End If
                    Case 10
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Then
                            lblR3C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(2, 2) = ds.Tables(0).Rows(x).Item("scheduleID")
                        Else
                            lblR3C3.Text = "SATURDAY"
                            lblR4C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(3, 2) = ds.Tables(0).Rows(x).Item("scheduleID")
                        End If
                    Case 12
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Then
                            lblR3C4.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(2, 3) = ds.Tables(0).Rows(x).Item("scheduleID")
                        Else
                            lblR3C4.Text = "SATURDAY"
                            lblR4C4.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(3, 3) = ds.Tables(0).Rows(x).Item("scheduleID")
                        End If
                    Case 14
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Then
                            lblR3C5.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(2, 4) = ds.Tables(0).Rows(x).Item("scheduleID")
                        Else
                            lblR3C5.Text = "SATURDAY"
                            lblR4C5.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(3, 4) = ds.Tables(0).Rows(x).Item("scheduleID")
                        End If
                    Case 16
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Or ds.Tables(0).Rows(x).Item("intSort") = 1 Then
                            lblR4C2.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(3, 1) = ds.Tables(0).Rows(x).Item("scheduleID")
                        Else
                            lblR5C2.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(4, 1) = ds.Tables(0).Rows(x).Item("scheduleID")
                        End If
                    Case 18
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Then
                            lblR4C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(3, 2) = ds.Tables(0).Rows(x).Item("scheduleID")
                        ElseIf ds.Tables(0).Rows(x).Item("intSort") = 1 Then
                            lblR5C2.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(4, 1) = ds.Tables(0).Rows(x).Item("scheduleID")
                        Else
                            lblR5C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(4, 2) = ds.Tables(0).Rows(x).Item("scheduleID")
                        End If
                    Case 20
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Then
                            lblR4C4.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(3, 3) = ds.Tables(0).Rows(x).Item("scheduleID")
                        ElseIf ds.Tables(0).Rows(x).Item("intSort") = 1 Then
                            lblR4C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(3, 2) = ds.Tables(0).Rows(x).Item("scheduleID")
                        Else
                            lblR5C4.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(4, 3) = ds.Tables(0).Rows(x).Item("scheduleID")
                        End If
                    Case 22
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Or ds.Tables(0).Rows(x).Item("intSort") = 1 Then
                            lblR4C5.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(3, 4) = ds.Tables(0).Rows(x).Item("scheduleID")
                        ElseIf ds.Tables(0).Rows(x).Item("intSort") = 1 Then
                            lblR5C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(4, 2) = ds.Tables(0).Rows(x).Item("scheduleID")
                        Else
                            lblR5C5.Text = ds.Tables(0).Rows(x).Item("strScore")
                            DualArray(4, 4) = ds.Tables(0).Rows(x).Item("scheduleID")
                        End If

                    ' GIRLS...
                    Case 24
                        cellR6C2.Text = "AREA 1<br>" & ds.Tables(0).Rows(x).Item("strLocation")
                        lblR7C2.Text = ds.Tables(0).Rows(x).Item("strScore")
                    Case 26
                        cellR6C3.Text = "AREA 2<br>" & ds.Tables(0).Rows(x).Item("strLocation")
                        lblR7C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                    Case 28
                        cellR6C4.Text = "AREA 3<br>" & ds.Tables(0).Rows(x).Item("strLocation")
                        lblR7C4.Text = ds.Tables(0).Rows(x).Item("strScore")
                    Case 30
                        cellR6C5.Text = "AREA 4<br>" & ds.Tables(0).Rows(x).Item("strLocation")
                        lblR7C5.Text = ds.Tables(0).Rows(x).Item("strScore")
                    Case 32
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Then
                            lblR8C2.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Else
                            lblR8C2.Text = "SATURDAY"
                            lblR9C2.Text = ds.Tables(0).Rows(x).Item("strScore")
                        End If
                    Case 34
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Then
                            lblR8C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Else
                            lblR8C3.Text = "SATURDAY"
                            lblR9C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                        End If
                    Case 36
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Then
                            lblR8C4.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Else
                            lblR8C4.Text = "SATURDAY"
                            lblR9C4.Text = ds.Tables(0).Rows(x).Item("strScore")
                        End If
                    Case 38
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Then
                            lblR8C5.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Else
                            lblR8C5.Text = "SATURDAY"
                            lblR9C5.Text = ds.Tables(0).Rows(x).Item("strScore")
                        End If
                    Case 40
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Or ds.Tables(0).Rows(x).Item("intSort") = 1 Then
                            lblR9C2.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Else
                            lblR10C2.Text = ds.Tables(0).Rows(x).Item("strScore")
                        End If
                    Case 42
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Or ds.Tables(0).Rows(x).Item("intSort") = 1 Then
                            lblR9C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Else
                            lblR10C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                        End If
                    Case 44
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Or ds.Tables(0).Rows(x).Item("intSort") = 1 Then
                            lblR9C4.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Else
                            lblR10C4.Text = ds.Tables(0).Rows(x).Item("strScore")
                        End If
                    Case 46
                        If ds.Tables(0).Rows(x).Item("intSort") = 3 Or ds.Tables(0).Rows(x).Item("intSort") = 1 Then
                            lblR9C5.Text = ds.Tables(0).Rows(x).Item("strScore")
                        Else
                            lblR10C5.Text = ds.Tables(0).Rows(x).Item("strScore")
                        End If
                End Select
            Next
        End If

    End Sub

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
        scheduleID = DualArray(tCol, tRow)

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

End Class
