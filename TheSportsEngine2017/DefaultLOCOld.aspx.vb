Imports System
Imports Telerik.Web.UI
Imports System.Web.UI.WebControls
Imports System.Collections.Generic
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.Services

Public Class DefaultLOCOld
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("globalState") Is Nothing Then
            Session("globalState") = "OK"
        End If

        If Request.QueryString("admin") = "143" Then
            Session("admin") = "143"
        Else
            Session("admin") = "0"
        End If


        Try
            clsLog.LogEvent("LOC", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Public Function GetHyperlink(drow As Object, ByRef returnHL As Object) As String

        returnHL.Text = drow.item("strDescription")
        returnHL.NavigateUrl = drow.Item("strURL")
        returnHL.Target = "_blank"

        Return "OK"

    End Function


End Class
