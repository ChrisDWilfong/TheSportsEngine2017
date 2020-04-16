Imports Telerik.Web.UI

Partial Class BAFStateInfo
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "BaseballFall"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), " 2019 STATE TOURNAMENT INFO")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        lblOneColumnDetail.Text = "FALL BASEBALL "

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("FBAStateINFO", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

End Class