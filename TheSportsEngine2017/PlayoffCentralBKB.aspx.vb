Imports Telerik.Web.UI

Public Class PlayoffCentralBKB
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Response.Redirect("http://www.iwasatthegame.com")

        Session("globalSport") = "None"

        If Session("globalState") = "" Then Session("globalState") = "OK"

        Try
            clsLog.LogEvent("PlayoffCentralBKB", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

End Class