Imports Telerik.Web.UI
Public Class DefaultOSSAA
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        On Error Resume Next

        If Session("globalState") Is Nothing Then
            Session("globalState") = "OK"
        End If

    End Sub

End Class
