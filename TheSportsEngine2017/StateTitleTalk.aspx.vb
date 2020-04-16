Imports Telerik.Web.UI
Public Class StateTitleTalk
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            clsLog.LogEvent("STATETITLETALKxfer", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
        Response.Redirect("http://ok.statetitletalk.com")
    End Sub

End Class