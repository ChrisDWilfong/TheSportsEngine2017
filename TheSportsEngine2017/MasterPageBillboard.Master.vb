Public Class MasterPageBillboard
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        MasterPageBillBoardBody.Attributes("bgcolor") = Session("colorBackground")
        'background.Attributes("background-image") = Session("schoolMascotGraphic")

        Session("logo1") = clsStateChampions.GetLogoHeader(Session("globalSport"), "OK", Request.UserHostAddress.ToString, Request.FilePath.ToString)
        Session("logo2") = clsStateChampions.GetLogoHeader(Session("globalSport"), "OK", Request.UserHostAddress.ToString, Request.FilePath.ToString)

    End Sub

End Class