﻿Imports Telerik.Web.UI

Public Class MasterPage2017_MI
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            RadMenu1.LoadContentFile("menuMI.xml")
            RadMenu2.LoadContentFile("menuMI.xml")
        End If

        '''''' TITLE SPONSOR???
        '''''Dim intSecond As Long = Now.Second
        '''''Dim strTitleImageFull As String = clsAds.GetTitleSponsorImageURLFull(intSecond)
        '''''Dim strTitleImageMobile As String = clsAds.GetTitleSponsorImageURLMobile(intSecond)
        '''''Dim strTitleURL As String = clsAds.GetTitleSponsorURL(intSecond)

        '''''If strTitleImageFull = "" Then
        '''''    imgTitleSponsor1.Visible = False
        '''''    imgTitleSponsor2.Visible = False
        '''''    hlTitleSponsor1.Visible = False
        '''''    hlTitleSponsor2.Visible = False
        '''''Else
        '''''    imgTitleSponsor1.ImageUrl = strTitleImageFull
        '''''    imgTitleSponsor2.ImageUrl = strTitleImageMobile
        '''''    hlTitleSponsor1.NavigateUrl = strTitleURL
        '''''    hlTitleSponsor2.NavigateUrl = strTitleURL
        '''''    imgTitleSponsor1.Visible = True
        '''''    imgTitleSponsor2.Visible = True
        '''''    hlTitleSponsor1.Visible = True
        '''''    hlTitleSponsor2.Visible = True
        '''''End If

    End Sub
End Class