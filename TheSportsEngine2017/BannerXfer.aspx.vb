Public Class BannerXfer
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        clsLog.LogEvent("BANNER_FCA", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, "OK", "NONE", Request.UserAgent)
        'Response.Redirect("https://icanonlyimagine.com/")
        Response.Redirect("http://www.okfca.org/")
    End Sub

End Class