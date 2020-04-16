Imports Telerik.Web.UI
Public Class DefaultMI
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Response.Redirect("http://www.iwasatthegame.com")

        If Session("globalState") Is Nothing Then
            Session("globalState") = "MI"
        End If

        'Response.Redirect(ConfigurationManager.AppSettings("HomePage"))

        Try
            'clsLog.LogEvent("HOME", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

End Class
