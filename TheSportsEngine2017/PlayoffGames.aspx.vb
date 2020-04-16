Imports Telerik.Web.UI

Partial Class PlayoffGames
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("globalState") = "" Then Session("globalState") = "OK"

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        Session("globalSport") = "Football"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL FOOTBALL PLAYOFF GAMES")
        lblOneColumnDetail.Text = "FOOTBALL"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        'If Request.QueryString("id") = "" Then
        'Else
        '    Session("globalSchool") = Request.QueryString("id")
        '    RadDropDownListSchool.SelectedValue = Session("globalSchool")
        '    UpdateSchool(RadDropDownListSchool)
        'End If

        Try
            clsLog.LogEvent("FOOTBALLPlayoffGames", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListSchool.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Private Sub RadDropDownListSchool_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListSchool.SelectedIndexChanged
        UpdateSchool(sender)
    End Sub

    Public Sub UpdateSchool(sender As Object)

        Session("globalSchool") = sender.SelectedValue
        Page.Title = "Oklahoma Football Playoff Games : " & Session("globalSchool")

        Dim strSQL As String = clsStateChampions.GetStateGames("OK", Session("globalSport"), Session("globalSchool"), 0)
        Dim strHTML As String = ""
        strHTML = clsStateChampions.GetStateGamesHTML(strSQL, Session("globalSport"), "Black")
        Session("playoffHTML") = strHTML
        lblOneColumnDetail0.Text = clsStateChampions.GetAppearancesWL(Session("globalState"), Session("globalSport"), Session("globalSchool"))
        lblOneColumnDetail.Text = lblOneColumnDetail0.Text

        Try
            clsLog.LogEvent("FBPLAYOFFGAMES", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    'Private Sub RadRotatorSchoolAds_DataBound(sender As Object, e As EventArgs) Handles RadRotatorSchoolAds.DataBound
    '    If sender.Items.Count = 0 Then
    '        sender.Height = 0
    '    Else
    '        sender.Height = 80
    '    End If
    'End Sub

    Private Sub RadDropDownListSchool_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListSchool.DataBound
        RadDropDownListSchool.Items.Insert(0, "Select School...")
    End Sub
End Class