Public Class MasterPageSchoolPageNOAJAX
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        MasterPageBillBoardBody.Attributes("bgcolor") = Session("colorBackground")
        'background.Attributes("background-image") = Session("schoolMascotGraphic")

        Session("logo1") = clsStateChampions.GetLogoHeader("ListOfChampions", "OK")
        Session("logo2") = clsStateChampions.GetLogoHeader("ListOfChampions", "OK")

    End Sub

End Class