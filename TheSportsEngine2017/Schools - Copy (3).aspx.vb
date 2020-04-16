Imports Telerik.Web.UI

Public Class Schools
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "None"

        If Session("globalState") = "" Then Session("globalState") = "OK"
        Dim dsRegular As DataSet
        Dim x As Integer
        Dim strSchoolDisplay As String

        ' LOAD THE SCHOOLS...
        dsRegular = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT * FROM tblSchoolInfo WHERE strState = '" & Session("globalState") & "' AND ysnCurrentOSSAASchool = 1 ORDER BY strSchoolName")

        If dsRegular Is Nothing Then
        ElseIf dsRegular.Tables.Count = 0 Then
        ElseIf dsRegular.Tables(0).Rows.Count = 0 Then
        Else
            Dim dt0 As New DataTable
            dt0.Columns.Add("strTeam")
            Dim dt1 As New DataTable
            dt1.Columns.Add("strTeam")
            Dim dt2 As New DataTable
            dt2.Columns.Add("strTeam")
            Dim dr As DataRow = Nothing

            For x = 0 To dsRegular.Tables(0).Rows.Count - 1
                strSchoolDisplay = "<a href='SchoolPage.aspx?school=" & dsRegular.Tables(0).Rows(x).Item("strSchoolName") & "' target='_blank' style='font-size:large;'>" & dsRegular.Tables(0).Rows(x).Item("strSchoolName") & "</a>"
                Select Case x Mod 3
                    Case 0
                        dr = dt0.NewRow
                        dr(0) = strSchoolDisplay
                        dt0.Rows.Add(dr)
                    Case 1
                        dr = dt1.NewRow
                        dr(0) = strSchoolDisplay
                        dt1.Rows.Add(dr)
                    Case 2
                        dr = dt2.NewRow
                        dr(0) = strSchoolDisplay
                        dt2.Rows.Add(dr)
                End Select
            Next

            GridView0.DataSource = dt0
            GridView0.DataBind()

            GridView1.DataSource = dt1
            GridView1.DataBind()

            GridView2.DataSource = dt2
            GridView2.DataBind()

        End If
        ' ======================================================================
        lblScroller1.Text = GetMostVisitedSchool()
        lblScroller2.Text = lblScroller1.Text

        Try
            clsLog.LogEvent("DefaultSchools", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Public Function GetMostVisitedSchool() As String
        Dim ds As DataSet
        Dim strSQL As String = ""
        Dim x As Integer
        Dim strResult As String = "<strong>TOP 10 Most Visited School and AD CLICKS Below (for 2019-20 school year)??</strong><br>"

        strSQL = "SELECT COUNT(strArgument1) AS intCount, UPPER(strArgument1) AS strSchool FROM tblLogNew WHERE (strEvent = '~/SchoolPage.aspx' OR strEvent = '~/StateChampions.aspx' OR strEvent = '~/StateFinals.aspx' OR strEvent = '~/StateQualifiers.aspx' OR strEvent = '~/StateGames.aspx' OR strEvent = '~/StateIndividuals.aspx') GROUP BY strArgument1 ORDER BY COUNT(strArgument1) DESC"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To 9
                strResult = strResult & "#" & (x + 1) & " " & ds.Tables(0).Rows(x).Item("strSchool") & " @ " & ds.Tables(0).Rows(x).Item("intCount")
                If x = 4 Then
                Else
                    strResult = strResult & "&nbsp;-&nbsp;"
                End If
            Next
        End If
        Return strResult
    End Function


End Class