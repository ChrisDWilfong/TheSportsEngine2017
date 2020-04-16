Public Class mFBWinningStreaks
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Request.Browser.IsMobileDevice Then
            Response.Redirect("FBWinningStreaks.aspx")
        End If

        Session("BootstrapScores") = clsPageObjects.GetGamesList("Football", "2019-09-20")
        Session("BootstrapCardHeader") = clsPageObjects.GetBootstrapCardHeader1Column("ALL-TIME WINNING STREAKS")
        Session("BootstrapRows") = clsBSData.GetBootstrapCardRowsNoDetail1Column("FBWinningStreaks", "", "")

    End Sub

End Class