Imports Telerik.Web.UI

Partial Class BAFStateChampionships
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        ' Added 10/8/2017...
        If Not IsPostBack Then
            If Request.QueryString("y") Is Nothing Then
            Else
                Dim intYear As Integer = 0
                Try
                    intYear = clsFunctions.VerifyString(Request.QueryString("y"))
                    RadDropDownListYear.SelectedValue = ConfigurationManager.AppSettings("CurrentYear")
                Catch ex As Exception

                End Try
            End If
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONSHIPS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "BaseballFall"

        lblOneColumnDetail.Text = "FALL BASEBALL " & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("BASEBALLFALL", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadDropDownListYear_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListYear.SelectedIndexChanged
        On Error Resume Next
        RadGrid1.Columns(1).HeaderText = RadDropDownListYear.SelectedValue & " STATE CHAMPIONS"
        lblArrow.Visible = True
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        On Error Resume Next
        Dim objControl As Object = e.Item.Controls(2).Controls(1)
        Dim objControlTT As Object = e.Item.Controls(4).Controls(1)

        ' Turn OFF the Photo button?
        If objControl Is Nothing Then
        Else
            If objControl.CommandArgument = "" Then
                objControl.Visible = False
            Else
                ' Do nothing...
            End If
        End If

        ' TitleTalk button...
        If objControlTT Is Nothing Then
        Else
            If objControlTT.CommandArgument = "" Then
                objControlTT.Visible = False
            ElseIf objControlTT.CommandArgument = "0" Then
                objControlTT.Visible = False
            Else
                ' Do nothing...
            End If
        End If
    End Sub

End Class