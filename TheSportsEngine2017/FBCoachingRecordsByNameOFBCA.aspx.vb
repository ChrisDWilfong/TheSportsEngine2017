Imports Telerik.Web.UI

Partial Class FBCoachingRecordsByNameOFBCA
	Inherits RadAjaxPage

	Dim intValue As Long

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

		'If Request.UserHostAddress.ToString = "72.198.125.78" Then
		'    clsLog.LogEvent("OBCACoachingRecordsBLOCK", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
		'    Response.Redirect("http://www.iwasatthegame.com")        ' Greg Goodrich...
		'End If

		'If Request.Browser.IsMobileDevice Then
		'    Response.Redirect("mFBCoachingRecords.aspx")
		'End If

		Session("globalSport") = "Football"
		lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL FOOTBALL ALL-TIME COACHES RECORDS")
		If Session("globalState") = "" Then Session("globalState") = "OK"

		lblOneColumnDetail.Text = "through 2019 SEASON (** - ACTIVE)"

		lblOneColumnHeader0.Text = lblOneColumnHeader.Text
		lblOneColumnDetail0.Text = lblOneColumnDetail.Text

		Try
			clsLog.LogEvent("FBCoachingRecords", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
		Catch
		End Try
	End Sub

	Private Sub RadAutoCompleteBox1_TextChanged(sender As Object, e As AutoCompleteTextEventArgs) Handles RadAutoCompleteBox1.TextChanged

	End Sub
End Class