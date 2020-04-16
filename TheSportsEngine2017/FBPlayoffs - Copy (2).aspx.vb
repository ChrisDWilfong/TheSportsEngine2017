Imports Telerik.Web.UI

Public Class FBPlayoffs
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strAppearances As String = ""
        Dim a As String = ""

        'Response.Redirect("http://www.iwasatthegame.com")

        Session("globalSport") = "Football"
        'lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), ConfigurationManager.AppSettings("LastYearOfFootballPlayoffs") & " FOOTBALL PLAYOFF CENTRAL")

        If Session("globalState") = "" Then Session("globalState") = "OK"
        'lblOneColumnHeader0.Text = lblOneColumnHeader.Text

        ' Sponsor Ad...
        Dim strSponsorFBPlayoffImageFull As String = ""
        strSponsorFBPlayoffImageFull = ConfigurationManager.AppSettings("SponsorFBPlayoffImageFull")
        If strSponsorFBPlayoffImageFull = "" Then
            hlTitleAd1.Visible = False
            'hlTitleAd2.Visible = False
        Else
            Dim strSponsorFBPlayoffImageMobile As String = ""
            strSponsorFBPlayoffImageMobile = ConfigurationManager.AppSettings("SponsorFBPlayoffImageMobile")
            Dim strSponsorFBPlayoffURL As String = ""
            strSponsorFBPlayoffURL = ConfigurationManager.AppSettings("SponsorFBPlayoffURL")
            hlTitleAd1.Visible = False
            hlTitleAd1.ImageUrl = strSponsorFBPlayoffImageFull
            hlTitleAd1.NavigateUrl = strSponsorFBPlayoffURL
        End If

        Try
            clsLog.LogEvent("FOOTBALLPlayoffsWK3", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub


End Class