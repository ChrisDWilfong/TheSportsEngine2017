Imports Telerik.Web.UI
Imports AjaxControlToolkit

Partial Class FBStateChampionships
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
        '    Response.Redirect("http://www.iwasatthegame.com")
        'End If

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

        'lblOneColumnDetail.Text = "FOOTBALL" & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnDetail.Text = "FOOTBALL (since 1907)"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        ' Hide the Photo and State Title Talk Columns...
        If Session("globalState") = "OK" Then
            RadGrid1.MasterTableView.Columns(2).Visible = False
        Else
            RadGrid1.MasterTableView.Columns(0).Visible = False
            RadGrid1.MasterTableView.Columns(2).Visible = False
            rowClickArrow.Visible = False
        End If

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

    Private Sub RadGrid1_ItemCommand(sender As Object, e As GridCommandEventArgs) Handles RadGrid1.ItemCommand
        If e.CommandName = "Facebook" Then
            Dim item As GridDataItem = CType(e.Item, GridDataItem)
            Dim strID As String = item.GetDataKeyValue("Id").ToString()
            Session("idFacebook") = strID
            Session("idFacebookTitle") = "State Title Talk : 2019 State Champions"
            Response.Redirect("FBStateChampionships.aspx?id=" & strID)
        End If
    End Sub


    'Public Sub HideExpandColumnRecursive(ByVal tableView As GridTableView)
    '        Dim nestedViewItems As GridItem() = tableView.GetItems(GridItemType.NestedView)

    '        For Each nestedViewItem As GridNestedViewItem In nestedViewItems

    '            For Each nestedView As GridTableView In nestedViewItem.NestedTableViews

    '                If nestedView.Items.Count = 0 Then
    '                    nestedView.ParentItem.Expanded = False
    '                Else
    '                    nestedView.ParentItem.Expanded = True
    '                End If

    '                HideExpandColumnRecursive(nestedView)
    '            Next
    '        Next
    '    End Sub

    'Private Sub RadGrid1_PreRender(sender As Object, e As EventArgs) Handles RadGrid1.PreRender
    '    HideExpandColumnRecursive(RadGrid1.MasterTableView)
    'End Sub


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