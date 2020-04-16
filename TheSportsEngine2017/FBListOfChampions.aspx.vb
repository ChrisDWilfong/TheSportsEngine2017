Imports Telerik.Web.UI
Imports AjaxControlToolkit

Partial Class FBListOfChampions
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            If Request.QueryString("y") Is Nothing Then
            Else
                Dim intYear As Integer = 0
                Try
                    intYear = clsFunctions.VerifyString(Request.QueryString("y"))
                    RadDropDownListYear.SelectedValue = ConfigurationManager.AppSettings("LastYear")
                Catch ex As Exception

                End Try
            End If
        End If

        Session("globalSport") = "Football"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "Football"

        lblOneColumnDetail.Text = "FOOTBALL" & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("FOOTBALL", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Private Sub RadDropDownListYear_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListYear.SelectedIndexChanged
        RadGrid1.Columns(1).HeaderText = RadDropDownListYear.SelectedValue & " STATE CHAMPIONS"
        lblArrow.Visible = True
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        On Error Resume Next
        Dim objControl As Object = e.Item.Controls(2).Controls(1)
        ' Turn OFF the Photo button?
        If objControl Is Nothing Then
        Else
            If objControl.CommandArgument = "" Then
                objControl.Visible = False
            Else
                ' Do nothing...
            End If
        End If
    End Sub


    '#Region "WebServiceCall"
    '    <System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()>
    '    Public Shared Function GetChampionshipLinks(ByVal contextKey As String) As String      ' Added by CDW 2/13/2015...
    '        Dim strSQL As String
    '        Dim x As Integer
    '        Dim ds As DataSet
    '        Dim strLink As String = ""

    '        Dim b As New StringBuilder()

    '        b.Append("<table style='background-color:#f3f3f3; border: #336699 3px solid; ")
    '        b.Append("width:500px; font-size:8pt; font-family:Verdana;' cellspacing='0' cellpadding='3'>")
    '        b.Append("<tr><td style='background-color:Navy; color:white;'>")
    '        b.Append("<b>&nbsp;</b>")
    '        b.Append("</td></tr>")

    '        ' Heading...
    '        b.Append("<tr><td style='width:450px;'><b>Article Links</b></td></tr>")

    '        ' Details...
    '        strSQL = "SELECT * FROM viewStateChampionshipArticles WHERE idStateChampion = " & contextKey & " ORDER BY dtmArticleDate"
    '        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

    '        If ds Is Nothing Then
    '        ElseIf ds.Tables.Count = 0 Then
    '        ElseIf ds.Tables(0).Rows.Count = 0 Then
    '        Else
    '            For x = 0 To ds.Tables(0).Rows.Count - 1
    '                strLink = ds.Tables(0).Rows(x).Item("strLink")
    '                strLink = strLink.Replace("*", "'")
    '                b.Append("<tr>")
    '                b.Append("<td>" & strLink & "</td>")
    '                b.Append("</tr>")
    '            Next x
    '        End If

    '        Return b.ToString

    '    End Function

    '#End Region

End Class