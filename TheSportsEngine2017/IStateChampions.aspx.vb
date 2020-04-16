Partial Class IStateChampions
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Request.QueryString("site") = "OSSAA" Then
            Session("TableWidth") = "985px"
            Session("TableWidthInt") = "985"
            'Session("TableWidthSample") = "600px"
            Session("TableWidthSample") = "625px"
            Session("TableHeight") = "1100px"
            Session("TableHeightInt") = "1100"
            'Session("TableHeightSample") = "850px"
            Session("TableHeightSample") = "1050px"
            Session("TableAlign") = "left"
            Session("PanelHeaderColor") = "Maroon"
            Session("PanelFooterColor") = "Maroon"
            Session("PanelBackgroundColor") = "WhiteSmoke"
        Else
            Session("TableWidth") = "625px"
            Session("TableWidthSample") = "550px"
            Session("TableWidthInt") = "625"
            Session("TableHeight") = "750px"
            Session("TableHeightInt") = "750"
            Session("TableHeightSample") = "470px"
            Session("TableAlign") = "left"
            Session("PanelHeaderColor") = "Maroon"
            Session("PanelFooterColor") = "Maroon"
            Session("PanelBackgroundColor") = "WhiteSmoke"
        End If

        'Session("SampleHTML") = "http://www.statechampionshipsearch.com/scrolling.html"
        'Session("SampleHTML") = "http://ossaa.iwasatthegame.com/scrolling.html"
        Session("SampleHTML") = "http://ossaa.iwasatthegame.com/logo.html"

    End Sub

End Class