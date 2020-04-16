Imports Telerik.Web.UI

Public Class MasterPageFootballAds
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            RadMenu1.LoadContentFile(clsMenus.GetMenu(Session("globalState")))
            RadMenu2.LoadContentFile(clsMenus.GetMenu(Session("globalState")))
        End If

        Me.Page.Title = clsStateChampions.GetPageHeader(Session("globalState"), " High School Football State Championships Champions")

        ' TITLE SPONSOR???
        Dim intSecond As Long = Now.Second
        Dim strTitleImageFull As String = clsAds.GetTitleSponsorImageURLFull(intSecond)
        Dim strTitleImageMobile As String = clsAds.GetTitleSponsorImageURLMobile(intSecond)
        Dim strTitleURL As String = clsAds.GetTitleSponsorURL(intSecond)

        imgTitleSponsor1.ImageUrl = "images/ads/TitleSponsor.png"
        imgTitleSponsor2.ImageUrl = "images/ads/TitleSponsor300.png"
        hlTitleSponsor1.NavigateUrl = strTitleURL
        hlTitleSponsor2.NavigateUrl = strTitleURL
        imgTitleSponsor1.Visible = True
        imgTitleSponsor2.Visible = True
        hlTitleSponsor1.Visible = True
        hlTitleSponsor2.Visible = True


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