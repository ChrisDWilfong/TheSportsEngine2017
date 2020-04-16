Public Class TraeYoung
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Session("globalState") = "OK"

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "FPSoftball"

        lblOneColumnDetail.Text = "FAST-PITCH SOFTBALL" & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        '' Hide the Photo and State Title Talk Columns...
        'If Session("globalState") = "OK" Then
        '    RadGrid1.MasterTableView.Columns(2).Visible = False
        'Else
        '    RadGrid1.MasterTableView.Columns(0).Visible = False
        '    RadGrid1.MasterTableView.Columns(2).Visible = False
        '    rowClickArrow.Visible = False
        'End If

        Try
            clsLog.LogEvent("TRAEYOUNG", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

End Class