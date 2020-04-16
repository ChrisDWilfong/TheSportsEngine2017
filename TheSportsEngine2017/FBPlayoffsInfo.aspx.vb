Imports Telerik.Web.UI

Public Class FBPlayoffsInfo
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("globalSport") = "Football"
        Try
            clsLog.LogEvent("FOOTBALLPlayoffsInfo", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub


End Class