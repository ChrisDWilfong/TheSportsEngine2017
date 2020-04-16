Imports System
Imports Telerik.Web.UI
Imports System.Web.UI.WebControls
Imports System.Collections.Generic
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.Services

Public Class PlayoffCentralSpring
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Response.Redirect(ConfigurationManager.AppSettings("HomePage"))

        If Session("globalState") Is Nothing Then
            Session("globalState") = "OK"
        End If

        If Request.QueryString("admin") = "143" Then
            Session("admin") = "143"
        Else
            Session("admin") = "0"
        End If

        ' Populate content...
        Dim strHTML As String = ""
        Dim ds As DataSet
        Dim strSQL As String = ""
        Dim x As Integer = 0

        strSQL = "SELECT * FROM tblHomePageURLs WHERE strType = 'HOME' AND intSort > 0 AND strState = 'OK' ORDER BY intSort"

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To ds.Tables(0).Rows.Count - 1
                Select Case x
                    Case 0
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink1)
                    Case 1
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink2)
                    Case 2
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink3)
                    Case 3
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink4)
                    Case 4
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink5)
                    Case 5
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink6)
                    Case 6
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink7)
                    Case 7
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink8)
                    Case 8
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink9)
                    Case 9
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink10)
                    Case 10
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink11)
                    Case 11
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink12)
                    Case 12
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink13)
                    Case 13
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink14)
                    Case 14
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink15)
                    Case 15
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink16)
                    Case 16
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink17)
                    Case 17
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink18)
                    Case 18
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink19)
                    Case 19
                        GetHyperlink(ds.Tables(0).Rows(x), Hyperlink20)
                End Select
            Next
        End If

        Try
            clsLog.LogEvent("HOMESPRING", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
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
