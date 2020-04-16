Imports Telerik.Web.UI
Public Class DefaultLOC
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If Session("globalState") Is Nothing Then
        '    Session("globalState") = "OK"
        'End If

        If Request.QueryString("admin") = "143" Then
            Session("admin") = "143"
        Else
            Session("admin") = "0"
        End If

        If Request.ServerVariables("HTTP_HOST").ToUpper.Contains("FL.LISTOFCHAMPIONS.COM") Then
            Session("globalState") = "FL"
            Response.Redirect("StateChampionshipsBySchool.aspx")
        ElseIf Request.ServerVariables("HTTP_HOST").ToUpper.Contains("MI.LISTOFCHAMPIONS.COM") Then
            Session("globalState") = "MI"
            Response.Redirect("StateChampionshipsBySchool.aspx")
        ElseIf Request.ServerVariables("HTTP_HOST").ToUpper.Contains("IL.LISTOFCHAMPIONS.COM") Then
            Session("globalState") = "IL"
            Response.Redirect("StateChampionshipsBySchool.aspx")
        ElseIf Request.ServerVariables("HTTP_HOST").ToUpper.Contains("TX.LISTOFCHAMPIONS.COM") Then
            Session("globalState") = "TX"
            Response.Redirect("StateChampionshipsBySchool.aspx")
        ElseIf Request.ServerVariables("HTTP_HOST").ToUpper.Contains("WWW.LISTOFCHAMPIONS.COM") Then
            Session("globalState") = "OK"
            'Response.Redirect("StateChampionshipsBySchool.aspx")
        Else
            'Response.Redirect(ConfigurationManager.AppSettings("HomePage"))
        End If

        Try
            clsLog.LogEvent("HOMELOC", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
            'clsLog.LogEvent("HOME", Me.Page.AppRelativeVirtualPath.ToString, Request.ServerVariables("HTTP_HOST"), Session("globalState"), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

End Class
