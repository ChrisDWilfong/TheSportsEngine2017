Imports Telerik.Web.UI

Public Class MasterPageChampionsGold
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "NONE"

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
        Session("footerTwitterFeed") = clsStateChampions.GetTwitterFeedFooter(Session("globalState"))

        ' Get Menus, Title, Hyperlinks and Headers...
        RadMenu1.LoadContentFile(clsMenus.GetMenu(Session("globalState")))
        RadMenu2.LoadContentFile(clsMenus.GetMenu(Session("globalState")))

        Me.Page.Title = clsStateChampions.GetPageHeader(Session("globalState"), " High School State Championships 2018-19")


    End Sub


End Class