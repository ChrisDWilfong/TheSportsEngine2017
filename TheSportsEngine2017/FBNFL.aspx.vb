Imports Telerik.Web.UI

Partial Class FBNFL
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL PLAYERS<br>CURRENTLY IN THE NFL")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        Try
            clsLog.LogEvent("FBNFL", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

End Class