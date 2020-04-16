Imports Telerik.Web.UI

Partial Class FBH2HTW
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Added 8/24/2017...To be used on twitter...

        'If Request.UserHostAddress.ToString = "195.248.234.138" Then Response.Redirect("http://www.iwasatthegame.com")        ' 7/25/2017 added...

        Session("globalSport") = "Football"
        Session("globalSchool") = clsFunctions.VerifyString(Request.QueryString("s"))
        Session("globalOpponent") = clsFunctions.VerifyString(Request.QueryString("o"))

        Dim schoolGUID As String = ""
        Dim objschoolGUID As Object
        Dim opponentGUID As String = ""
        Dim objopponentGUID As Object
        Dim intW As Integer = 0
        Dim intL As Integer = 0

        ' Added 8/25/2017...
        Try
            objschoolGUID = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT GUID FROM tblSchoolInfo WHERE strSchoolName = '" & Session("globalSchool") & "'")
            schoolGUID = objschoolGUID.ToString
        Catch
        End Try
        Try
            objopponentGUID = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT GUID FROM tblSchoolInfo WHERE strSchoolName = '" & Session("globalOpponent") & "'")
            opponentGUID = objopponentGUID.ToString
        Catch
        End Try

        intW = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblScores WHERE strWL = 'W' AND strSchool = '" & Session("globalSchool") & "' AND strOpponent = '" & Session("globalOpponent") & "'")
        intL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblScores WHERE strWL = 'L' AND strSchool = '" & Session("globalSchool") & "' AND strOpponent = '" & Session("globalOpponent") & "'")

        If schoolGUID = "" Then
            globalSchool.Text = UCase(Session("globalSchool")) & " "
        Else
            globalSchool.Text = "<a href='/FBTeamPageOK.aspx?id=" & schoolGUID & "'>" & UCase(Session("globalSchool")) & "</a> "
        End If
        If opponentGUID = "" Then
            globalOpponent.Text = " " & UCase(Session("globalOpponent")) & " (" & intW & "-" & intL & " record)"
        Else
            globalOpponent.Text = " <a href='/FBTeamPageOK.aspx?id=" & opponentGUID & "'>" & UCase(Session("globalOpponent")) & "</a> (" & intW & "-" & intL & " record)"
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL HEAD TO HEAD")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnDetail.Text = "FOOTBALL"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("FOOTBALLTWITTER", Me.Page.AppRelativeVirtualPath.ToString, Session("globalSchool"), Session("globalOpponent"), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

End Class