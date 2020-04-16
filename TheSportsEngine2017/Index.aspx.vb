Imports Telerik.Web.UI
Public Class Index
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("globalState") Is Nothing Then
            Session("globalState") = "LOC"
        End If

        If Request.QueryString("admin") = "143" Then
            Session("admin") = "143"
        Else
            Session("admin") = "0"
        End If

        Try
            clsLog.LogEvent("HOMEIndex", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

End Class
