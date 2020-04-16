Imports System
Imports Telerik.Web.UI
Imports System.Web.UI.WebControls
Imports System.Collections.Generic
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.Services

Public Class DefaultWinter
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

        '' Populate content...
        'Dim strHTML As String = ""
        'Dim ds As DataSet
        'Dim strSQL As String = ""
        'Dim x As Integer = 0

        'strSQL = "SELECT * FROM tblFootballHeadToHeads WHERE strGameDate = '09/29/2017' ORDER BY intGames DESC"
        'ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        'If ds Is Nothing Then
        'ElseIf ds.Tables.Count = 0 Then
        'ElseIf ds.Tables(0).Rows.Count = 0 Then
        'Else
        '    For x = 0 To ds.Tables(0).Rows.Count - 1
        '        strHTML = strHTML & "<a href='" & ds.Tables(0).Rows(x).Item("strLink") & "'>" & ds.Tables(0).Rows(x).Item("strSchool") & " vs " & ds.Tables(0).Rows(x).Item("strOpponent") & " (" & ds.Tables(0).Rows(x).Item("intGames") & " previous games)</a><br>"
        '    Next
        'End If

        'Session("homeFBH2H") = strHTML

        Try
            clsLog.LogEvent("HOME", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub


End Class
