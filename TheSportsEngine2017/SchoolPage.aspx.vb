Imports Telerik.Web.UI

Partial Class SchoolPage
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		Dim strGUID As String = ""

		'If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
		'    Response.Redirect("http://www.iwasatthegame.com")
		'End If

		Session("GUID") = ""
        Session("GUID") = clsFunctions.VerifyString(Request.QueryString("id"))
        Session("globalState") = "OK"

        If Request.QueryString("school") = "" Then
            Session("globalShowAds") = "NO"
            panelAd1.Visible = False
            panelAd2.Visible = False
            lblInfo.Visible = False
            lblInfo1.Visible = False
        Else
            Session("globalShowAds") = "YES"
            panelAd1.Visible = True
            panelAd2.Visible = True
            lblInfo.Visible = True
            lblInfo1.Visible = True
            Session("globalSchool") = clsFunctions.VerifyString(Request.QueryString("school"))
            ' Get the GUID...
            Dim objGUID As Object
            objGUID = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT GuidTemp FROM tblSchoolInfo WHERE strSchoolName = '" & Session("globalSchool") & "'")
            Session("GUID") = objGUID.ToString
        End If

        Dim imageCount As Integer = 0
        imageCount = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblStateChampionsImages WHERE strSchool = '" & Session("globalSchool") & "'")
        If imageCount = 0 Then
            RadImageGallery1.Visible = False
        Else
            RadImageGallery1.Visible = True
        End If

        Me.Title = Session("globalSchool") & " School Page - List of Champions"

		' Get School Information...
		Dim objSchool As New clsSchoolInfo(Session("globalSchool"), Session("GUID"))
        '''''Dim objSchool As New clsSchoolInfo(Session("globalSchool"), "")
        If objSchool.getSchoolName Is Nothing Then Response.Redirect("http://www.iwasatthegame.com")
        Session("globalType") = objSchool.getTheType
        Session("colorForecolor") = System.Drawing.Color.FromName(objSchool.getForeColor)
        Session("colorForecolorStr") = objSchool.getForeColor
        Session("colorBackground") = objSchool.getBackColor
        If Session("GUID") Is Nothing Then Session("GUID") = objSchool.getGUIDTemp

        Session("schoolMascotGraphic") = objSchool.getSchoolMascotGraphic
        lblOneColumnHeader.Text = UCase(objSchool.getSchoolName) & " " & UCase(objSchool.getSchoolMascot) & "&nbsp;&nbsp;"
        If Session("schoolMascotGraphic") = "" Then
            imgMascot.Visible = False
            imgMascot0.Visible = False
        Else
            imgMascot.Visible = True
            imgMascot0.Visible = True
            imgMascot.ImageUrl = "../images/mascots/" & Session("schoolMascotGraphic")
            imgMascot0.ImageUrl = "../images/mascots/" & Session("schoolMascotGraphic")
        End If

        ' Log page view...
        Dim strHostName As String = Request.UserAgent
        Dim strIP As String = Request.UserHostAddress
        If Session("globalShowAds") = "NO" Then
            clsLog.LogMobileEvent(Session("globalSchool"), Session("GUID"), "SchoolPage.aspx", strHostName, strIP, Session("globalType"), "")
        End If

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text

        ' Set Text Color...
        lblOneColumnHeader.ForeColor = Session("colorForecolor")
        lblOneColumnHeader0.ForeColor = Session("colorForecolor")

        Dim strHTML1 As String = clsStateChampions.GetSchoolPageHTML(Session("globalState"), Session("globalSchool"), Session("GUID"), Request.UserHostAddress.ToString, Session("globalShowAds"), True)
        Dim strHTML As String = clsStateChampions.GetSchoolPageHTML(Session("globalState"), Session("globalSchool"), Session("GUID"), Request.UserHostAddress.ToString, Session("globalShowAds"), False)

        Session("billboardHTML") = strHTML
        Session("billboardHTML1") = strHTML1

        Try
            clsLog.LogEvent("SchoolPage", Me.Page.AppRelativeVirtualPath.ToString, Session("globalSchool"), Session("globalShowAds"), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Private Sub BillboardStateChampionships_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit

    End Sub

End Class