Imports Telerik.Web.UI

Partial Class FBH2H
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If Request.UserHostAddress.ToString = "184.94.139.235" Then Response.Redirect("http://www.iwasatthegame.com")        ' 8/30/2017 added...
        'If Request.UserHostAddress.ToString = "97.41.3.133" Then Response.Redirect("http://www.iwasatthegame.com")        ' 9/25/2017 added...
        'If Request.UserHostAddress.ToString = "97.41.1.120" Then Response.Redirect("http://www.iwasatthegame.com")        ' 9/25/2017 added...
        'If Request.UserHostAddress.ToString = "97.35.66.242" Then Response.Redirect("http://www.iwasatthegame.com")        ' 9/25/2017 added...
        'If Request.UserHostAddress.ToString = "97.41.3.85" Then Response.Redirect("http://www.iwasatthegame.com")        ' 9/25/2017 added...
        'If Request.UserHostAddress.ToString = "97.35.65.179" Then Response.Redirect("http://www.iwasatthegame.com")        ' 9/25/2017 added...
        'If Request.UserHostAddress.ToString = "192.173.55.127" Then Response.Redirect("http://www.iwasatthegame.com")        ' 9/27/2017 added...

        Session("globalSport") = "Football"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL HEAD TO HEAD")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnDetail.Text = "FOOTBALL"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Dim schoolGUID As String = ""
        Dim objschoolGUID As Object
        Dim opponentGUID As String = ""
        Dim objopponentGUID As Object
        Dim intW As Integer = 0
        Dim intL As Integer = 0


        If (RadDropDownListSchool.SelectedValue = "Select..." Or RadDropDownListSchool.SelectedValue = "") Or (RadDropDownListSchoolOpp.SelectedValue = "Select..." Or RadDropDownListSchoolOpp.SelectedValue = "") Then
            lblSchool.Visible = False
            lblOpponent.Visible = False
        Else
            intW = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblScores WHERE strWL = 'W' AND strSchool = '" & RadDropDownListSchool.SelectedValue & "' AND strOpponent = '" & RadDropDownListSchoolOpp.SelectedValue & "'")
            intL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblScores WHERE strWL = 'L' AND strSchool = '" & RadDropDownListSchool.SelectedValue & "' AND strOpponent = '" & RadDropDownListSchoolOpp.SelectedValue & "'")

            ' Added 8/25/2017...
            Try
                objschoolGUID = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT GUID FROM tblSchoolInfo WHERE strSchoolName = '" & RadDropDownListSchool.SelectedValue & "'")
                schoolGUID = objschoolGUID.ToString
            Catch
            End Try
            Try
                objopponentGUID = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT GUID FROM tblSchoolInfo WHERE strSchoolName = '" & RadDropDownListSchoolOpp.SelectedValue & "'")
                opponentGUID = objopponentGUID.ToString
            Catch
            End Try

            lblSchool.Text = "<a href='/FBTeamPageOK.aspx?id=" & schoolGUID & "' target='_blank'>" & UCase(RadDropDownListSchool.SelectedItem.Text) & " Team Page</a> "
            lblSchool.Visible = True
            lblOpponent.Text = " <a href='/FBTeamPageOK.aspx?id=" & opponentGUID & "' target='_blank'>" & UCase(RadDropDownListSchoolOpp.SelectedItem.Text) & " Team Page</a> (" & intW & "-" & intL & " record)"
            lblOpponent.Visible = True
        End If

        Try
            clsLog.LogEvent("FOOTBALL", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListSchool.SelectedValue, RadDropDownListSchoolOpp.SelectedValue, Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

End Class