Public Class mStats
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strType As String

        Session("BootstrapScores") = clsPageObjects.GetGamesList("Football", "2019-09-20")

        strType = Request.QueryString("ty")
        Select Case strType
            Case "FPRS"
                Session("BootstrapHeader") = "OKLAHOMA High School FAST PITCH Runs Scored Per Game"
                Session("BootstrapCardHeader") = clsPageObjects.GetBootstrapCardHeader1Column("RUN SCORED PG - SCHOOL")
                Session("BootstrapRows") = clsBSData.GetBootstrapCardRowsNoDetail1Column("FPRunsScored", "strClass", "5A")
            Case "BAFRS"
                Session("BootstrapHeader") = "OKLAHOMA High School FALL BASEBALL Runs Scored Per Game"
                Session("BootstrapCardHeader") = clsPageObjects.GetBootstrapCardHeader1Column("RUN SCORED PG - SCHOOL")
                Session("BootstrapRows") = clsBSData.GetBootstrapCardRowsNoDetail1Column("BAFRunsScored", "strClass", "A")
            Case Else
                Session("BootstrapHeader") = "OKLAHOMA High School Fast Pitch Softball Runs Scored Per Game"
                Session("BootstrapCardHeader") = clsPageObjects.GetBootstrapCardHeader1Column("RUN SCORED PG - SCHOOL")
                Session("BootstrapRows") = clsBSData.GetBootstrapCardRowsNoDetail1Column("FPRunsScored", "strClass", "A")
        End Select

        ' Get Scores...
        'Session("BootstrapScores") = clsPageObjects.GetGamesList("BaseballFall", Now.ToShortDateString)
        'Session("BootstrapScores") = Session("BootstrapScores") & clsPageObjects.GetGamesList("FPSoftball", Now.ToShortDateString)
        'Session("BootstrapScores") = Session("BootstrapScores") & clsPageObjects.GetGamesList("Volleyball", Now.ToShortDateString)

        ' Get Menus...
        Session("menuListOfChampions") = clsMenusNew.BuildMenuIWATG
        Session("LOCState") = "OK"

        If Request.QueryString("sp") Is Nothing Then
        Else
            If Request.QueryString("sp") <> Session("LOCSportGenderKey") Then
                Dim cboYear As DropDownList = FindControl("CboYear")
                Session("LOCSportGenderKey") = Request.QueryString("sp")
                cboYear.DataSource = clsBSData.GetDataSourceDropDown_Years(Session("LOCState"), Session("LOCSportGenderKey"))
                cboYear.DataBind()
                Session("LOCDropDownYears") = PopulateDropDown(Session("LOCState"), Session("LOCSportGenderKey"))
            End If
        End If

    End Sub
    Protected Sub CboSport_DataBound(sender As Object, e As EventArgs)
        sender.Items.Insert(0, "Select Sport...")
    End Sub

    Protected Sub CboYear_DataBound(sender As Object, e As EventArgs)
        sender.Items.Insert(0, "Select Year...")
    End Sub

    Protected Sub CboSport_SelectedIndexChanged(sender As Object, e As EventArgs)
        ' Dim cboState As DropDownList = FindControl("CboState")
        Dim cboYear As DropDownList = FindControl("CboYear")
        cboYear.DataSource = clsBSData.GetDataSourceDropDown_Years(Session("LOCState"), sender.SelectedValue)
        cboYear.DataBind()
    End Sub

    Protected Sub CboYear_SelectedIndexChanged(sender As Object, e As EventArgs)
        RefreshGrid(Session("LOCState"), Session("LOCSportGenderKey"), sender.SelectedValue)
    End Sub

    Public Function PopulateDropDown(strState As String, strSportGenderKey As String) As String
        Dim strReturn As String = ""
        Dim ds As DataSet
        Dim x As Integer = 0
        ds = clsBSData.GetDataSourceDropDown_Years(strState, strSportGenderKey)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            'strReturn += "<li Class='rd-nav-item'><a Class='rd-nav-link' href='index.html'>Home</a>"
            'strReturn += "<ul Class='rd-menu rd-navbar-dropdown'>"
            strReturn += "<div class='collapse navbar-collapse' id='bs-example-navbar-collapse-1'>"
            strReturn += "<ul class='nav navbar-nav'>"
            strReturn += "<li class='dropdown'>"
            strReturn += "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>Select Year... <b Class='caret'></b></a>"
            strReturn += "<ul class='dropdown-menu multi-column columns-3'>"
            strReturn += "<div class='row'>"
            For x = 0 To ds.Tables(0).Rows.Count - 1
                If (x Mod 10) = 0 And x > 0 Then
                    strReturn += "</ul>"
                    strReturn += "<div>"
                    strReturn += "<div class='col-sm-4'>"
                    strReturn += "<ul class='multi-column-dropdown'>"
                ElseIf (x Mod 10) = 0 Then
                    strReturn += "<div class='col-sm-4'>"
                    strReturn += "<ul class='multi-column-dropdown'>"
                End If
                strReturn += "<li><a href='#'>" & ds.Tables(0).Rows(x).Item("strValueField") & "</a></li>"
            Next
            strReturn += "</ul>"
            strReturn += "<div>"

            strReturn += "</div>"
            strReturn += "</ul>"
            strReturn += "</li>"
            strReturn += "</ul>"
            strReturn += "</div>"
        End If

        Return strReturn

    End Function

    Public Function PopulateDropDown1(strState As String, strSportGenderKey As String) As String
        Dim strReturn As String = ""
        Dim ds As DataSet
        Dim x As Integer = 0
        ds = clsBSData.GetDataSourceDropDown_Years(strState, strSportGenderKey)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            strReturn += "<li Class='rd-nav-item'><a Class='rd-nav-link' href='index.html'>Home</a>"
            strReturn += "<ul Class='rd-menu rd-navbar-dropdown'>"
            strReturn += "<li Class='rd-dropdown-item'><a class='rd-dropdown-link' href='#'>Select Year...</a>"
            For x = 0 To ds.Tables(0).Rows.Count - 1
                If (x Mod 10) = 0 And x > 0 Then
                    strReturn += "</ul>"
                    strReturn += "<ul class='rd-menu rd-navbar-dropdown'>"
                ElseIf (x Mod 10) = 0 Then
                    strReturn += "<ul class='rd-menu rd-navbar-dropdown'>"
                End If
                strReturn += "<li Class='rd-dropdown-item'><a class='rd-dropdown-link' href='../soccers'>" & ds.Tables(0).Rows(x).Item("strValueField") & "</a></li>"
            Next
            strReturn += "</ul>"
            strReturn += "</li>"
            strReturn += "</ul>"
            strReturn += "</li>"
        End If

        Return strReturn

    End Function

    Public Sub RefreshGrid(strState As String, strSportGenderKey As String, strYear As String)
        Dim strSQL As String = ""
        strSQL = "SELECT * FROM LOCview_StateChampions WHERE strState = '" & strState & "' AND strSportGenderKey = '" & strSportGenderKey & "' AND intYear = " & strYear & " ORDER BY intSortClass"
        Session("BootstrapCardHeader") = clsPageObjects.GetBootstrapCardHeaderStateChampions01
        Session("BootstrapRows") = clsPageObjects.GetBootstrapCardRowsWithDetailStateChampions01(strState, strSportGenderKey, strYear, strSQL, "strDisplayResults", "strCoaches")
    End Sub

End Class