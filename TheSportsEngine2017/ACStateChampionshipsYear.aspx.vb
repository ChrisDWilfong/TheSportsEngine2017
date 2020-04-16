Imports Telerik.Web.UI

Partial Class ACStateChampionshipsYear
    Inherits System.Web.UI.Page

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL<br>STATE CHAMPIONSHIPS")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        lblOneColumnDetail.Text = "ACADEMIC (BY YEAR)"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("ACADEMICYEAR", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadDropDownListYear_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListYear.DataBound
        RadDropDownListYear.Items.Insert(0, "Select Year...")
    End Sub

    Private Sub RadDropDownListYear_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListYear.SelectedIndexChanged
        RadGrid1.Columns(0).HeaderText = RadDropDownListYear.SelectedValue & " ACADEMIC STATE CHAMPIONS"
    End Sub
End Class