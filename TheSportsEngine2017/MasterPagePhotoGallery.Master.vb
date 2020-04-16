Public Class MasterPagePhotoGallery
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Session("photoHeader") = "PHOTO GALLERY : " & clsStateChampions.GetStateTourneyDescription(Request.QueryString("id"))
        'lblPhotoHeader1.Text = Session("photoHeader")
        'lblPhotoHeader2.Text = Session("photoHeader")
    End Sub

End Class