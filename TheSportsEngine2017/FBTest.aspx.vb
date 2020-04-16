Imports Telerik.Web.UI
Public Class FBTest
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strPage As String = Page.ToString
        strPage = strPage.Replace("ASP.", "")
        strPage = strPage.Replace("_aspx", "")
        strPage = strPage & "?" & Page.ClientQueryString
        Session("fbCode") = "<div class='fb-comments' data-href='http://www.iwasatthegame.com/" & strPage & "' data-numposts='5'></div>"
    End Sub

End Class