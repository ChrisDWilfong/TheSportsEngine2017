Imports Telerik.Web.UI
Imports AjaxControlToolkit

Partial Class PODClayMartin
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            'Response.Redirect("http://www.iwasatthegame.com")
        End If

        Session("globalSport") = "Football"
        lblOneColumnHeader.Text = "PODCAST : Clay Martin"
        If Session("globalState") = "" Then Session("globalState") = "OK"

        lblOneColumnDetail.Text = "Jenks Boys Head Coach and NFL Referee"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("PODCLayMartin", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub


End Class