Public Class MasterPageOSSAA
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strURL As String = sender.Request.Url.ToString
        If strURL.ToUpper.Contains("OSSAA.IWASATTHEGAME") Or strURL.ToUpper.Contains("LOCALHOST") Then
            RadMenu1.LoadContentFile("menuOSSAA.xml")
            RadMenu2.LoadContentFile("menuOSSAA.xml")
        Else
        End If
    End Sub

End Class