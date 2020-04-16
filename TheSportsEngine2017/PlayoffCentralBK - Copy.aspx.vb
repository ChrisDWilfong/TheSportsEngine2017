Imports System
Imports Telerik.Web.UI
Imports System.Web.UI.WebControls
Imports System.Collections.Generic
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.Services

Public Class PlayoffCentralBK
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

        Session("SportGenderKey") = "BasketballGirls"


        Dim ds As DataSet
        Dim strSQL As String
        Dim x As Integer
        strSQL = "SELECT * FROM __IWATGClassAGirls ORDER BY intSort DESC, strArea, intKey"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)

        For x = 0 To ds.Tables(0).Rows.Count - 1
            Select Case x
                Case 0
                    lblAreaIFriday.Text = ds.Tables(0).Rows(x).Item("strScore")
                    cellR2C2.Text = ds.Tables(0).Rows(x).Item("strScore")
                Case 2
                    lblAreaIIFriday.Text = ds.Tables(0).Rows(x).Item("strScore")
                    cellR2C3.Text = ds.Tables(0).Rows(x).Item("strScore")
                Case 4
                    lblAreaIIIFriday.Text = ds.Tables(0).Rows(x).Item("strScore")
                    cellR2C4.Text = ds.Tables(0).Rows(x).Item("strScore")
                Case 6
                    lblAreaIVFriday.Text = ds.Tables(0).Rows(x).Item("strScore")
                    cellR2C5.Text = ds.Tables(0).Rows(x).Item("strScore")
                Case 8
                Case 10
                Case 12
                Case 14
                Case 16
                Case 18
                Case 20
                Case 22
            End Select
        Next

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

        'Session("homePlayoffCentral") = strHTML

        'Try
        '    clsLog.LogEvent("HOME", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        'Catch
        'End Try

    End Sub


End Class
