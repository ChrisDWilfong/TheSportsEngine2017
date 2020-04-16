Public Class mFBCoachingRecords
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Request.Browser.IsMobileDevice Then
            Response.Redirect("FBCoachingRecords.aspx")
        End If

        Session("BootstrapScores") = clsPageObjects.GetGamesList("Football", "2019-09-13")
        Session("BootstrapCardHeader") = clsPageObjects.GetBootstrapCardHeader
        Session("BootstrapRows") = clsBSData.GetBootstrapCardRowsWithDetail
    End Sub

End Class