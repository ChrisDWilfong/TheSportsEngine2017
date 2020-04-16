Imports Telerik.Web.UI

Public Class DefaultOK
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Response.Redirect("http://www.iwasatthegame.com")

        Session("globalState") = "OK"

        If Request.QueryString("admin") = "143" Then
            Session("admin") = "143"
        Else
            Session("admin") = "0"
        End If

        'lblTest.Text = Request.Url.Host.ToUpper & " ABC"
        'Response.Redirect(ConfigurationManager.AppSettings("HomePage"))

        Try
            clsLog.LogEvent("HOME", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

End Class
