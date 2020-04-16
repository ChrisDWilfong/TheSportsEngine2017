Imports Telerik.Web.UI
Public Class FBFlashback
    Inherits RadAjaxPage

    Public viewSchedule As String = "viewFBFlashback_Schedule"
    Public viewResults As String = "viewFBFlashback_Results"
    Public currentYear As Integer = 1999
    Public currentYearShort As Integer = 99

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ds As DataSet
        Dim strSQL As String
        Dim intCurrentWeekNo As Integer = 0
        Dim intSelectedWeekNo As Integer = 0
        Dim strView As String = ""
        Dim strID As String
        Dim strSelectedDate As String = ""
        Dim strCurrentDate As String = ""
        Dim strClass As String = ""
        Dim intWeekNo As Integer = 0
        Dim intDistrictNo As Integer = 0

        Response.Redirect(ConfigurationManager.AppSettings("HomePage"))     ' Added 11/14/2018...

        Session("globalState") = "OK"

        intCurrentWeekNo = ConfigurationManager.AppSettings("CurrentFlashbackWK")
        strID = clsFunctions.VerifyString(Request.QueryString("id"))

        If strID Is Nothing Then
            strID = "NONE"
        End If

        If strID = "Blog" Then
            rowSchedule.Visible = False
            rowDistricts1.Visible = False
            rowDistricts2.Visible = False
            rowDistricts3.Visible = False
            rowDistricts4.Visible = False
            rowDistricts5.Visible = False
            rowDistricts6.Visible = False
            rowDistricts7.Visible = False
            rowDistricts8.Visible = False
            imgSponsor.Visible = False
            strCurrentDate = GetCurrentDate(intCurrentWeekNo)
            lblCurrentWeek.Text = "CURRENT WEEK " & intCurrentWeekNo & " - " & strCurrentDate & " " & currentYear
            Exit Sub
        ElseIf strID.Contains("WK") Then
            imgSponsor.Visible = False
            strView = GetView(strID, intCurrentWeekNo, intSelectedWeekNo, strSelectedDate)
        ElseIf strID = "P1" Then
            imgSponsor.Visible = False
            intSelectedWeekNo = 11
            strView = GetView(strID, intCurrentWeekNo, intSelectedWeekNo, strSelectedDate)
        ElseIf strID = "P2" Then
            imgSponsor.Visible = False
            intSelectedWeekNo = 12
            strView = GetView(strID, intCurrentWeekNo, intSelectedWeekNo, strSelectedDate)
        ElseIf strID = "P3" Then
            imgSponsor.Visible = False
            intSelectedWeekNo = 13
            strView = GetView(strID, intCurrentWeekNo, intSelectedWeekNo, strSelectedDate)
        ElseIf strID = "P4" Then
            imgSponsor.Visible = False
            intSelectedWeekNo = 14
            strView = GetView(strID, intCurrentWeekNo, intSelectedWeekNo, strSelectedDate)
        ElseIf strID = "P5" Then
            imgSponsor.Visible = False
            intSelectedWeekNo = 15
            strView = GetView(strID, intCurrentWeekNo, intSelectedWeekNo, strSelectedDate)
        Else
            'imgSponsor.Visible = False
            intSelectedWeekNo = 0
            strView = GetView(strID, intCurrentWeekNo, intSelectedWeekNo, strSelectedDate)
        End If

        strCurrentDate = GetCurrentDate(intCurrentWeekNo)
        lblCurrentWeek.Text = "CURRENT WEEK " & intCurrentWeekNo & " - " & strCurrentDate & " " & currentYear

        ' Get Results...
        If strID = "D6A" Or strID = "D5A" Or strID = "D4A" Or strID = "D3A" Or strID = "D2A" Or strID = "DA" Or strID = "DB" Or strID = "DC" Then
            imgSponsor.Visible = False
            strClass = strID.Replace("D", "")
            lblScheduleHeader.Text = "CLASS " & strClass & " DISTRICT STANDINGS"

            intDistrictNo = 1
            strSQL = GetSQL(strClass, intCurrentWeekNo, intDistrictNo)
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            RadGridDistrict1.DataSource = ds
            rowDistricts1.Visible = True

            intDistrictNo = 2
            strSQL = GetSQL(strClass, intCurrentWeekNo, intDistrictNo)
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            RadGridDistrict2.DataSource = ds
            rowDistricts2.Visible = True

            intDistrictNo = 3
            strSQL = GetSQL(strClass, intCurrentWeekNo, intDistrictNo)
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            RadGridDistrict3.DataSource = ds
            rowDistricts3.Visible = True

            intDistrictNo = 4
            strSQL = GetSQL(strClass, intCurrentWeekNo, intDistrictNo)
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            RadGridDistrict4.DataSource = ds
            rowDistricts4.Visible = True

            If strID = "D2A" Or strID = "DA" Or strID = "DB" Then
                intDistrictNo = 5
                strSQL = GetSQL(strClass, intCurrentWeekNo, intDistrictNo)
                ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                RadGridDistrict5.DataSource = ds
                rowDistricts5.Visible = True

                intDistrictNo = 6
                strSQL = GetSQL(strClass, intCurrentWeekNo, intDistrictNo)
                ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                RadGridDistrict6.DataSource = ds
                rowDistricts6.Visible = True

                intDistrictNo = 7
                strSQL = GetSQL(strClass, intCurrentWeekNo, intDistrictNo)
                ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                RadGridDistrict7.DataSource = ds
                rowDistricts7.Visible = True

                intDistrictNo = 8
                strSQL = GetSQL(strClass, intCurrentWeekNo, intDistrictNo)
                ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                RadGridDistrict8.DataSource = ds
                rowDistricts8.Visible = True
            Else
                rowDistricts5.Visible = False
                rowDistricts6.Visible = False
                rowDistricts7.Visible = False
                rowDistricts8.Visible = False
            End If
            rowSchedule.Visible = False
        Else
            ' Get the schedules...
            If intSelectedWeekNo > 0 And intSelectedWeekNo <= 10 Then
                If strID.Contains("WK") Then
                    strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = '6A' AND intWeekNo = " & intSelectedWeekNo & ") ORDER BY strSchool"
                    ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                    RadGridSchedule6A.DataSource = ds
                    strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = '5A' AND intWeekNo = " & intSelectedWeekNo & ") ORDER BY strSchool"
                    ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                    RadGridSchedule5A.DataSource = ds
                    strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = '4A' AND intWeekNo = " & intSelectedWeekNo & ") ORDER BY strSchool"
                    ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                    RadGridSchedule4A.DataSource = ds
                    strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = '3A' AND intWeekNo = " & intSelectedWeekNo & ") ORDER BY strSchool"
                    ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                    RadGridSchedule3A.DataSource = ds
                    strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = '2A' AND intWeekNo = " & intSelectedWeekNo & ") ORDER BY strSchool"
                    ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                    RadGridSchedule2A.DataSource = ds
                    strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = 'A' AND intWeekNo = " & intSelectedWeekNo & ") ORDER BY strSchool"
                    ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                    RadGridScheduleA.DataSource = ds
                    strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = 'B' AND intWeekNo = " & intSelectedWeekNo & ") ORDER BY strSchool"
                    ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                    RadGridScheduleB.DataSource = ds
                    strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = 'C' AND intWeekNo = " & intSelectedWeekNo & ") ORDER BY strSchool"
                    ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                    RadGridScheduleC.DataSource = ds
                    rowSchedule.Visible = True
                    imgSponsor.Visible = False
                    rowDistricts1.Visible = False
                    rowDistricts2.Visible = False
                    rowDistricts3.Visible = False
                    rowDistricts4.Visible = False
                    rowDistricts5.Visible = False
                    rowDistricts6.Visible = False
                    rowDistricts7.Visible = False
                    rowDistricts8.Visible = False
                End If
            ElseIf intSelectedWeekNo > 10 And intSelectedWeekNo <= 15 Then
                If strID = "P1" Or strID = "P2" Or strID = "P3" Or strID = "P4" Or strID = "P5" Then
                    If intCurrentWeekNo <= 10 Then
                        rowSchedule.Visible = False
                    ElseIf intSelectedWeekNo <= intCurrentWeekNo Then
                        strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = '6A' AND intWeekNo = " & intSelectedWeekNo & ") AND (intScore > intoScore) ORDER BY strSchool"
                        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                        RadGridSchedule6A.DataSource = ds
                        strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = '5A' AND intWeekNo = " & intSelectedWeekNo & ") AND (intScore > intoScore) ORDER BY strSchool"
                        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                        RadGridSchedule5A.DataSource = ds
                        strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = '4A' AND intWeekNo = " & intSelectedWeekNo & ") AND (intScore > intoScore) ORDER BY strSchool"
                        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                        RadGridSchedule4A.DataSource = ds
                        strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = '3A' AND intWeekNo = " & intSelectedWeekNo & ") AND (intScore > intoScore) ORDER BY strSchool"
                        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                        RadGridSchedule3A.DataSource = ds
                        strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = '2A' AND intWeekNo = " & intSelectedWeekNo & ") AND (intScore > intoScore) ORDER BY strSchool"
                        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                        RadGridSchedule2A.DataSource = ds
                        strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = 'A' AND intWeekNo = " & intSelectedWeekNo & ") AND (intScore > intoScore) ORDER BY strSchool"
                        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                        RadGridScheduleA.DataSource = ds
                        strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = 'B' AND intWeekNo = " & intSelectedWeekNo & ") AND (intScore > intoScore) ORDER BY strSchool"
                        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                        RadGridScheduleB.DataSource = ds
                        strSQL = "SELECT strDisplay FROM " & strView & " WHERE (strClass = 'C' AND intWeekNo = " & intSelectedWeekNo & ") AND (intScore > intoScore) ORDER BY strSchool"
                        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                        RadGridScheduleC.DataSource = ds
                        rowSchedule.Visible = True
                        imgSponsor.Visible = False
                        rowDistricts1.Visible = False
                        rowDistricts2.Visible = False
                        rowDistricts3.Visible = False
                        rowDistricts4.Visible = False
                        rowDistricts5.Visible = False
                        rowDistricts6.Visible = False
                        rowDistricts7.Visible = False
                        rowDistricts8.Visible = False
                    Else
                        rowSchedule.Visible = False
                        imgSponsor.Visible = False
                        rowDistricts1.Visible = False
                        rowDistricts2.Visible = False
                        rowDistricts3.Visible = False
                        rowDistricts4.Visible = False
                        rowDistricts5.Visible = False
                        rowDistricts6.Visible = False
                        rowDistricts7.Visible = False
                        rowDistricts8.Visible = False
                    End If
                End If
            Else
                rowSchedule.Visible = False
                'rowSponsor.Visible = False
                rowDistricts1.Visible = False
                rowDistricts2.Visible = False
                rowDistricts3.Visible = False
                rowDistricts4.Visible = False
                rowDistricts5.Visible = False
                rowDistricts6.Visible = False
                rowDistricts7.Visible = False
                rowDistricts8.Visible = False
            End If
        End If

        'Session("footerTwitterFeed") = clsStateChampions.GetTwitterFeedFooter("1999")
        'Session("footerTwitterFeed") = "<a href='https://twitter.com/intent/tweet?button_hashtag=IWasAtTheGame1999&ref_src=twsrc%5Etfw' class='twitter-hashtag-button' data-show-count='false'>Tweet #IWasAtTheGame1999</a><script async src='https://platform.twitter.com/widgets.js' charset='utf-8'></script>"
        Session("footerTwitterFeed") = "<iframe src='https://cwilfong.wixsite.com/iwatgblog/blogtwitter' width='100%' height='3500px' frameBorder='0' scrolling='no' ></iframe>"

        Try
            clsLog.LogEvent("FB1999", Me.Page.AppRelativeVirtualPath.ToString, strID, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Public Function GetSQL(strClass As String, intWeekNo As Integer, intDistrictNo As Integer) As String
        Dim strSQL As String = ""
        strSQL = "SELECT schoolId, strState, strSchoolNameIWATG AS strSchoolName, strClass1999, strDistrict1999, intDistrict1999, dbo.getFlashbackFB_W(strSchoolNameIWATG, 1999, " & intWeekNo & ") AS W, dbo.getFlashbackFB_L(strSchoolNameIWATG, 1999, " & intWeekNo & ") AS L, dbo.getFlashbackFB_DW(strSchoolNameIWATG, 1999, " & intWeekNo & ") AS DW, dbo.getFlashbackFB_DL(strSchoolNameIWATG, 1999, " & intWeekNo & ") AS DL, dbo.getFlashbackFB_DPTSDiff(strSchoolNameIWATG, 1999, " & intWeekNo & ") AS intDPTSDiff "
        strSQL = strSQL & "FROM  dbo.tblSchoolInfo "
        strSQL = strSQL & "WHERE (strState = 'OK') AND (NOT (strDistrict1999 IS NULL)) AND intDistrict1999 = " & intDistrictNo & " AND strClass1999 = '" & strClass & "'"
        strSQL = strSQL & "ORDER BY DW DESC, intDPTSDiff DESC, W DESC, strSchoolNameIWATG"
        Return strSQL
    End Function
    Public Function GetCurrentDate(intCurrentWeekNo As Integer) As String
        Dim strCurrentDate As String = ""

        Select Case intCurrentWeekNo
            Case 1
                strCurrentDate = "Sept 3rd"
            Case 2
                strCurrentDate = "Sept 10th"
            Case 3
                strCurrentDate = "Sept 17th"
            Case 4
                strCurrentDate = "Sept 24th"
            Case 5
                strCurrentDate = "Oct 1st"
            Case 6
                strCurrentDate = "Oct 8th"
            Case 7
                strCurrentDate = "Oct 15th"
            Case 8
                strCurrentDate = "Oct 22nd"
            Case 9
                strCurrentDate = "Oct 29th"
            Case 10
                strCurrentDate = "Nov 5th"
            Case 11
                strCurrentDate = "Nov 12th"
            Case 12
                strCurrentDate = "Nov 19th"
            Case 13
                strCurrentDate = "Nov 26th"
            Case 14
                strCurrentDate = "Dec 3rd"
            Case 15
                strCurrentDate = "Dec 10th"
        End Select

        Return strCurrentDate

    End Function

    Public Function GetView(strWeek As String, intCurrentWeekNo As Integer, ByRef intSelectedWeekNo As Integer, ByRef strSelectedDate As String) As String
        Dim strResults As String = ""

        Select Case strWeek
            Case "BLOG"
                lblScheduleHeader.Text = "#IWasAtTheGame1999 BLOG"
            Case "WK1"
                strSelectedDate = GetCurrentDate(1) & ", " & currentYear
                If intCurrentWeekNo < 1 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "WEEK 1 (" & strSelectedDate & ") SCHEDULE"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "WEEK 1 (" & strSelectedDate & ") RESULTS"
                End If
                intSelectedWeekNo = 1

            Case "WK2"
                strSelectedDate = GetCurrentDate(2) & ", " & currentYear
                If intCurrentWeekNo < 2 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "WEEK 2 (" & strSelectedDate & ") SCHEDULE"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "WEEK 2 (" & strSelectedDate & ") RESULTS"
                End If
                intSelectedWeekNo = 2

            Case "WK3"
                strSelectedDate = GetCurrentDate(3) & ", " & currentYear
                If intCurrentWeekNo < 3 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "WEEK 3 (" & strSelectedDate & ") SCHEDULE"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "WEEK 3 (" & strSelectedDate & ") RESULTS"
                End If
                intSelectedWeekNo = 3

            Case "WK4"
                strSelectedDate = GetCurrentDate(4) & ", " & currentYear
                If intCurrentWeekNo < 4 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "WEEK 4 (" & strSelectedDate & ") SCHEDULE"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "WEEK 4 (" & strSelectedDate & ") RESULTS"
                End If
                intSelectedWeekNo = 4

            Case "WK5"
                strSelectedDate = GetCurrentDate(5) & ", " & currentYear
                If intCurrentWeekNo < 5 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "WEEK 5 (" & strSelectedDate & ") SCHEDULE"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "WEEK 5 (" & strSelectedDate & ") RESULTS"
                End If
                intSelectedWeekNo = 5

            Case "WK6"
                strSelectedDate = GetCurrentDate(6) & ", " & currentYear
                If intCurrentWeekNo < 6 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "WEEK 6 (" & strSelectedDate & ") SCHEDULE"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "WEEK 6 (" & strSelectedDate & ") RESULTS"
                End If
                intSelectedWeekNo = 6

            Case "WK7"
                strSelectedDate = GetCurrentDate(7) & ", " & currentYear
                If intCurrentWeekNo < 7 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "WEEK 7 (" & strSelectedDate & ") SCHEDULE"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "WEEK 7 (" & strSelectedDate & ") RESULTS"
                End If
                intSelectedWeekNo = 7

            Case "WK8"
                strSelectedDate = GetCurrentDate(8) & ", " & currentYear
                If intCurrentWeekNo < 8 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "WEEK 8 (" & strSelectedDate & ") SCHEDULE"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "WEEK 8 (" & strSelectedDate & ") RESULTS"
                End If
                intSelectedWeekNo = 8

            Case "WK9"
                strSelectedDate = GetCurrentDate(9) & ", " & currentYear
                If intCurrentWeekNo < 9 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "WEEK 9 (" & strSelectedDate & ") SCHEDULE"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "WEEK 9 (" & strSelectedDate & ") RESULTS"
                End If
                intSelectedWeekNo = 9

            Case "WK10"
                strSelectedDate = GetCurrentDate(10) & ", " & currentYear
                If intCurrentWeekNo < 10 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "WEEK 10 (" & strSelectedDate & ") SCHEDULE"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "WEEK 10 (" & strSelectedDate & ") RESULTS"
                End If
                intSelectedWeekNo = 10

            Case "P1"
                strSelectedDate = GetCurrentDate(11) & ", " & currentYear
                If intCurrentWeekNo < 11 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "PLAYOFF WEEK 1 (" & strSelectedDate & ")"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "PLAYOFF WEEK 1 (" & strSelectedDate & ")"
                End If
                intSelectedWeekNo = 11

            Case "P2"
                strSelectedDate = GetCurrentDate(12) & ", " & currentYear
                If intCurrentWeekNo < 12 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "PLAYOFF WEEK 2 (" & strSelectedDate & ")"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "PLAYOFF WEEK 2 (" & strSelectedDate & ")"
                End If
                intSelectedWeekNo = 12

            Case "P3"
                strSelectedDate = GetCurrentDate(13) & ", " & currentYear
                If intCurrentWeekNo < 13 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "PLAYOFF WEEK 3 (" & strSelectedDate & ")"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "PLAYOFF WEEK 3 (" & strSelectedDate & ")"
                End If
                intSelectedWeekNo = 13

            Case "P4"
                strSelectedDate = GetCurrentDate(14) & ", " & currentYear
                If intCurrentWeekNo < 14 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "PLAYOFF WEEK 4 (" & strSelectedDate & ")"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "PLAYOFF WEEK 4 (" & strSelectedDate & ")"
                End If
                intSelectedWeekNo = 14

            Case "P5"
                strSelectedDate = GetCurrentDate(15) & ", " & currentYear
                If intCurrentWeekNo < 15 Then
                    strResults = viewSchedule
                    lblScheduleHeader.Text = "PLAYOFF WEEK 5 (" & strSelectedDate & ")"
                Else
                    strResults = viewResults
                    lblScheduleHeader.Text = "PLAYOFF WEEK 5 (" & strSelectedDate & ")"
                End If
                intSelectedWeekNo = 15

            Case Else
                lblScheduleHeader.Text = ""
        End Select

        Return strResults

    End Function

End Class