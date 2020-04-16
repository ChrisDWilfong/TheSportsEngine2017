Imports Telerik.Web.UI

Public Class MasterPage2017Test
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        RadMenu1.LoadContentFile(clsMenus.GetMenu(Session("globalState")))
        RadMenu2.LoadContentFile(clsMenus.GetMenu(Session("globalState")))

        ' TITLE SPONSOR???
        Dim intSecond As Long = Now.Second
        Dim strTitleImageFull As String = clsAds.GetTitleSponsorImageURLFull(intSecond)
        Dim strTitleImageMobile As String = clsAds.GetTitleSponsorImageURLMobile(intSecond)
        Dim strTitleURL As String = clsAds.GetTitleSponsorURL(intSecond)

        If strTitleImageFull = "" Then
            imgTitleSponsor1.Visible = False
            imgTitleSponsor2.Visible = False
            hlTitleSponsor1.Visible = False
            hlTitleSponsor2.Visible = False
        Else
            imgTitleSponsor1.ImageUrl = strTitleImageFull
            imgTitleSponsor2.ImageUrl = strTitleImageMobile
            hlTitleSponsor1.NavigateUrl = strTitleURL
            hlTitleSponsor2.NavigateUrl = strTitleURL
            imgTitleSponsor1.Visible = True
            imgTitleSponsor2.Visible = True
            hlTitleSponsor1.Visible = True
            hlTitleSponsor2.Visible = True
        End If

        ' Turn off the scrolling footer...
        If Session("globalState") = "OK" Then
        Else
            Dim x As Integer
            For x = 0 To MasterLayout.Rows.Count - 1
                If MasterLayout.Rows(x).ID = "rowScrollingAds" Then
                    MasterLayout.Rows(x).Visible = False
                End If
            Next
        End If

    End Sub

    'Private Sub RadDropDownListSchool1_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownListSchool1.SelectedIndexChanged
    '    Dim strURL As String = "http://www.iwasatthegame.com/SchoolPage.aspx?id=" & sender.SelectedValue.ToString
    '    cmdSchool.NavigateUrl = strURL
    '    cmdSchool.Text = "&nbsp;Go to " & RadDropDownListSchool1.SelectedText & " SCHOOL PAGE"
    'End Sub

    'Private Sub RadDropDownListSchool2_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownListSchool2.SelectedIndexChanged
    '    Dim strURL As String = "http://www.iwasatthegame.com/SchoolPage.aspx?id=" & sender.SelectedValue.ToString
    '    cmdSchoola.NavigateUrl = strURL
    '    cmdSchoola.Text = "&nbsp;Go to " & RadDropDownListSchool2.SelectedText & " SCHOOL PAGE"
    'End Sub
End Class