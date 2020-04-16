Public Class MasterPageBACANoAJAX
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "Baseball"

        RadMenu1.LoadContentFile(clsMenus.GetMenu(Session("globalState")))
        RadMenu2.LoadContentFile(clsMenus.GetMenu(Session("globalState")))

        ' TITLE SPONSOR???
        Dim intSecond As Long = Now.Second
        Dim strTitleImageFull As String = "/images/banners/OKSM_Banner.png"
        Dim strTitleImageMobile As String = "/images/banners/OKSM_Banner.png"
        Dim strTitleURL As String = "http://territorialcapitalsportsmuseum.org/"

        If strTitleImageFull = "" Then
            imgTitleSponsor1.Visible = False
            imgTitleSponsor2.Visible = False
            hlTitleSponsor1.Visible = False
            hlTitleSponsor2.Visible = False
        Else
            imgTitleSponsor1.ImageUrl = strTitleImageFull
            'imgTitleSponsor2.ImageUrl = strTitleImageMobile
            hlTitleSponsor1.NavigateUrl = strTitleURL
            'hlTitleSponsor2.NavigateUrl = strTitleURL
            imgTitleSponsor1.Visible = True
            imgTitleSponsor2.Visible = True
            hlTitleSponsor1.Visible = True
            'hlTitleSponsor2.Visible = True
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

End Class