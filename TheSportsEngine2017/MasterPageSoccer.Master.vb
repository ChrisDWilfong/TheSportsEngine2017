Public Class MasterPageSoccer
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "Soccer"

        ' Added 5/20/2018...
        If Session("StateHeader") Is Nothing Then
            Dim objSH As New clsStateHeader(Request.ServerVariables("HTTP_HOST"))
            Session("StateHeader") = objSH
        End If
        Session("globalState") = Session("StateHeader").getStateAbb

        Session("twitter") = clsStateChampions.GetTwitterFeed(Session("globalState"))
        Session("facebookLink") = clsStateChampions.GetFacebookLink(Session("globalState"))
        Session("twitterLink1") = clsStateChampions.GetTwitterLink1(Session("globalState"))
        Session("twitterLink2") = clsStateChampions.GetTwitterLink2(Session("globalState"))
        Session("emailLink") = clsStateChampions.GetEmailLink(Session("globalState"))
        Session("footerTwitterFeed") = clsStateChampions.GetTwitterFeedFooter(Session("globalState"))

        If Not IsPostBack Then
            If Not IsPostBack Then
                RadMenu1.LoadContentFile(clsMenus.GetMenu(Session("globalState")))
                RadMenu2.LoadContentFile(clsMenus.GetMenu(Session("globalState")))
            End If
        End If

        ' PageTitle and HeaderImages...
        Me.Page.Title = clsStateChampions.GetPageHeader(Session("globalState"), " High School Soccer State Championships")
        imgHeader1.ImageUrl = clsStateChampions.GetLogoHeader(Session("globalSport"), Session("globalState"), Request.Url.Host.ToUpper)
        imgHeader2.ImageUrl = clsStateChampions.GetLogoHeader(Session("globalSport"), Session("globalState"), Request.Url.Host.ToUpper)
        hlHeader1.NavigateUrl = "http://" & Request.Url.Host
        hlHeader2.NavigateUrl = "http://" & Request.Url.Host

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

End Class