Imports System.Web.Services

Partial Class ucIStateChampions
    Inherits System.Web.UI.UserControl
    Dim strHomeURL As String = "IStateChampions.aspx"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ysnForcePostback As Boolean = False

        'Dim strHTML As String = GetDecadeContentHTML("1990-1999", "Football")

        If Session("6AHeader") = "" Then
            ysnForcePostback = True
        End If

        'PanelLeft.Height = System.Web.UI.WebControls.Unit.Pixel(CInt(Session("TableHeightInt")))
        'Select Case Session("PanelBackgroundColor")
        '    Case "Yellow"
        '        PanelLeft.BackColor = System.Drawing.Color.Yellow
        '    Case "Gray"
        '        PanelLeft.BackColor = System.Drawing.Color.Gray
        '    Case "LightGray"
        '        PanelLeft.BackColor = System.Drawing.Color.LightGray
        '    Case "White"
        '        PanelLeft.BackColor = System.Drawing.Color.White
        '    Case "WhiteSmoke"
        '        PanelLeft.BackColor = System.Drawing.Color.WhiteSmoke
        'End Select

        If Not IsPostBack Or ysnForcePostback Then

            Session("6AHeader") = "6A"
            Session("5AHeader") = "5A"
            Session("4AHeader") = "4A"
            Session("3AHeader") = "3A"
            Session("2AHeader") = "2A"
            Session("AHeader") = "A"
            Session("BHeader") = "B"
            Session("CHeader") = "C"
            Session("OtherHeader") = "Other"

            AccordionPaneArticles.Visible = False
            AccordionPane6A.Visible = False
            AccordionPane5A.Visible = False
            AccordionPane4A.Visible = False
            AccordionPane3A.Visible = False
            AccordionPane2A.Visible = False
            AccordionPaneA.Visible = False
            AccordionPaneB.Visible = False
            AccordionPaneC.Visible = False
            AccordionPaneOther.Visible = False
            AccordionPaneSchool.Visible = False
            AccordionPaneYear.Visible = False
            AccordionPaneDecade.Visible = False
            AccordionPaneSample.Visible = True

            '            lblWelcome.Visible = True
            '           lblWelcome.Text = "<br>&nbsp;Select a Year, Sport/Year or a School above to begin..."
            If Request.QueryString("id") Is Nothing Then
            Else
                If Session("ShowingYear") = 1 Then
                    SetAccordionTabsHeaders(cboSport.SelectedValue, cboYearSelect.SelectedValue, False, True)
                Else
                    SetAccordionTabsHeaders(cboSport.SelectedValue, cboYear.SelectedValue, True, False)
                End If
            End If
        Else
            If cboSport.SelectedValue = "" Then
            Else
                Session("SelectedSchool") = ""
            End If
        End If

        If Not IsPostBack Then
            If Request.QueryString("year") Is Nothing Then
            Else
                Dim intID As Long
                intID = CLng(Request.QueryString("id"))
                ProcessButtonId(intID)
            End If
        End If

    End Sub

    Public Sub SetAccordionTabsHeaders(ByVal strSport As String, ByVal strYear As String, ByVal ysnShowSchool As Boolean, ByVal ysnShowYear As Boolean)
        Dim strSQL As String
        Dim ds As DataSet
        Dim x As Integer
        Dim strHeader As String
        Dim strResults As String
        Dim strSportGenderKey As String
        'Dim strYear As String = ""

        AccordionPaneArticles.Visible = False
        AccordionPane6A.Visible = False
        AccordionPane5A.Visible = False
        AccordionPane4A.Visible = False
        AccordionPane3A.Visible = False
        AccordionPane2A.Visible = False
        AccordionPaneA.Visible = False
        AccordionPaneB.Visible = False
        AccordionPaneC.Visible = False
        AccordionPaneOther.Visible = False
        AccordionPaneSchool.Visible = False
        AccordionPaneYear.Visible = False
        AccordionPaneDecade.Visible = False
        AccordionPaneSample.Visible = False
        'AccordionPaneArticles.Visible = False
        lblWelcome.Visible = False

        ' Clear session variables...
        Session("6AHeader") = "6A"
        Session("5AHeader") = "5A"
        Session("4AHeader") = "4A"
        Session("3AHeader") = "3A"
        Session("2AHeader") = "2A"
        Session("AHeader") = "A"
        Session("BHeader") = "B"
        Session("CHeader") = "C"
        Session("OtherHeader") = "Other"

        If ysnShowSchool Then
            AccordionPaneSchool.Visible = True
            If Me.cboSchool.SelectedItem Is Nothing Then
            Else
                Session("YearArticlesContent") = ""
                Session("DecadeArticlesContent") = ""

                If Request.QueryString("st") Is Nothing Then
                    Session("SchoolHeader") = Me.cboSchool.SelectedItem.Text & " (" & WSGetData.GetChampionshipCount(Me.cboSchool.SelectedItem.Text, "OK", "") & ")"
                Else
                    Session("SchoolHeader") = Me.cboSchool.SelectedItem.Text & " (" & WSGetData.GetChampionshipCount(Me.cboSchool.SelectedItem.Text, clsHTML.GetState(Request.QueryString("st")), "") & ")"
                End If
                'If cboYear.SelectedItem Is Nothing And Not cboSport.SelectedValue = "Select Sport..." Then
                '    Session("SchoolHeader") = "Select a Year..."
                'ElseIf cboYear.SelectedItem.Text = "Select Year..." Then
                '    Session("SchoolHeader") = "Select a Year..."
                'Else
                'End If
            End If

        ElseIf ysnShowYear Then
            AccordionPaneYear.Visible = True
            If Me.cboYearSelect.SelectedItem Is Nothing Then
            Else
                Session("YearArticlesContent") = ""
                Session("YearHeader") = strYear
            End If
        Else
            Try
                If Request.QueryString("st") Is Nothing Then
                    strSQL = "SELECT strSchool, strClass, strResults, Id FROM tblStateChampions WHERE strSportGenderKey = '" & strSport & "' AND intYear = " & CInt(strYear) & " AND strState = '" & clsHTML.GetState("OK") & "' AND Not strClass Is Null"
                Else
                    strSQL = "SELECT strSchool, strClass, strResults, Id FROM tblStateChampions WHERE strSportGenderKey = '" & strSport & "' AND intYear = " & CInt(strYear) & " AND strState = '" & clsHTML.GetState(Request.QueryString("st")) & "' AND Not strClass Is Null"
                End If

            Catch
                strSQL = ""
            End Try

            strSportGenderKey = strSport

            If strSQL = "" Then

            Else
                ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                If ds Is Nothing Then
                ElseIf ds.Tables.Count = 0 Then
                ElseIf ds.Tables(0).Rows.Count = 0 Then
                Else
                    For x = 0 To ds.Tables(0).Rows.Count - 1
                        strHeader = "<span style='color: Yellow;'>Class " & ds.Tables(0).Rows(x).Item("strClass") & " " & strYear & " Champion</span><br>&nbsp;&nbsp;&nbsp;&nbsp;"
                        If ds.Tables(0).Rows(x).Item("strResults") Is System.DBNull.Value Then
                            strResults = ""
                        Else
                            strResults = ds.Tables(0).Rows(x).Item("strResults")
                        End If
                        strResults = strResults.Replace("BasketballGirls", "Girls Basketball")
                        strResults = strResults.Replace("BasketballBoys", "Boys Basketball")
                        strSport = strSport.Replace("BasketballGirls", "Girls Basketball")
                        strSport = strSport.Replace("BasketballBoys", "Boys Basketball")

                        strResults = strResults.Replace("CrossCountryGirls", "Girls Cross Country")
                        strResults = strResults.Replace("CrossCountryBoys", "Boys Cross Country")
                        strSport = strSport.Replace("CrossCountryGirls", "Girls Cross Country")
                        strSport = strSport.Replace("CrossCountryBoys", "Boys Cross Country")

                        strResults = strResults.Replace("TennisGirls", "Girls Tennis")
                        strResults = strResults.Replace("TennisBoys", "Boys Tennis")
                        strSport = strSport.Replace("TennisGirls", "Girls Tennis")
                        strSport = strSport.Replace("TennisBoys", "Boys Tennis")

                        strResults = strResults.Replace("GolfGirls", "Girls Golf")
                        strResults = strResults.Replace("GolfBoys", "Boys Golf")
                        strSport = strSport.Replace("GolfGirls", "Girls Golf")
                        strSport = strSport.Replace("GolfBoys", "Boys Golf")

                        strResults = strResults.Replace("TrackGirls", "Girls Track")
                        strResults = strResults.Replace("TrackBoys", "Boys Track")
                        strSport = strSport.Replace("TrackGirls", "Girls Track")
                        strSport = strSport.Replace("TrackBoys", "Boys Track")

                        strResults = strResults.Replace("SoccerGirls", "Girls Soccer")
                        strResults = strResults.Replace("SoccerBoys", "Boys Soccer")
                        strSport = strSport.Replace("SoccerGirls", "Girls Soccer")
                        strSport = strSport.Replace("SoccerBoys", "Boys Soccer")

                        strResults = strResults.Replace("SwimmingGirls", "Girls Swimming")
                        strResults = strResults.Replace("SwimmingBoys", "Boys Swimming")
                        strSport = strSport.Replace("SwimmingGirls", "Girls Swimming")
                        strSport = strSport.Replace("SwimmingBoys", "Boys Swimming")

                        AccordionPaneArticles.Visible = True
                        Select Case ds.Tables(0).Rows(x).Item("strClass")
                            Case "6A", "ALL"
                                AccordionPane6A.Visible = True
                                If Len(Session("6AHeader")) < 10 Then
                                    Session("6AHeader") = "<img src='../images/plus.gif' />&nbsp;" & strHeader & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                Else
                                    Session("6AHeader") = "<img src='../images/plus.gif' />&nbsp;" & Session("6AHeader") & "<br>" & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                End If
                                Session("6AHeader1") = strResults
                                cmdButton6A.ToolTip = ds.Tables(0).Rows(x).Item("Id")
                            Case "5A"
                                AccordionPane5A.Visible = True
                                If Len(Session("5AHeader")) < 10 Then
                                    Session("5AHeader") = "<img src='../images/plus.gif' />&nbsp;" & strHeader & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                Else
                                    Session("5AHeader") = "<img src='../images/plus.gif' />&nbsp;" & Session("5AHeader") & "<br>" & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                End If
                                Session("5AHeader1") = strResults
                                cmdButton5A.ToolTip = ds.Tables(0).Rows(x).Item("Id")
                            Case "4A"
                                AccordionPane4A.Visible = True
                                If Len(Session("4AHeader")) < 10 Then
                                    Session("4AHeader") = "<img src='../images/plus.gif' />&nbsp;" & strHeader & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                Else
                                    Session("4AHeader") = "<img src='../images/plus.gif' />&nbsp;" & Session("4AHeader") & "<br>" & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                End If
                                Session("4AHeader1") = strResults
                                cmdButton4A.ToolTip = ds.Tables(0).Rows(x).Item("Id")
                            Case "3A", "3A 5 on 5", "AAA"
                                AccordionPane3A.Visible = True
                                If Len(Session("3AHeader")) < 10 Then
                                    Session("3AHeader") = "<img src='../images/plus.gif' />&nbsp;" & strHeader & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                Else
                                    Session("3AHeader") = "<img src='../images/plus.gif' />&nbsp;" & Session("3AHeader") & "<br>" & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                End If
                                Session("3AHeader1") = strResults
                                cmdButton3A.ToolTip = ds.Tables(0).Rows(x).Item("Id")
                            Case "2A", "2A 5 on 5", "AA"
                                AccordionPane2A.Visible = True
                                If Len(Session("2AHeader")) < 10 Then
                                    Session("2AHeader") = "<img src='../images/plus.gif' />&nbsp;" & strHeader & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                Else
                                    Session("2AHeader") = "<img src='../images/plus.gif' />&nbsp;" & Session("2AHeader") & "<br>" & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                End If
                                Session("2AHeader1") = strResults
                                cmdButton2A.ToolTip = ds.Tables(0).Rows(x).Item("Id")
                            Case "A", "1A", "A-I"
                                AccordionPaneA.Visible = True
                                If Len(Session("AHeader")) < 10 Then
                                    Session("AHeader") = "<img src='../images/plus.gif' />&nbsp;" & strHeader & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                Else
                                    Session("AHeader") = "<img src='../images/plus.gif' />&nbsp;" & Session("AHeader") & "<br>" & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                End If
                                Session("AHeader1") = strResults
                                cmdButtonA.ToolTip = ds.Tables(0).Rows(x).Item("Id")
                            Case "B", "4BALL", "A-II"
                                AccordionPaneB.Visible = True
                                If Len(Session("BHeader")) < 10 Then
                                    Session("BHeader") = "<img src='../images/plus.gif' />&nbsp;" & strHeader & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                Else
                                    Session("BHeader") = "<img src='../images/plus.gif' />&nbsp;" & Session("BHeader") & "<br>" & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                End If
                                'Session("BHeader1") = strYear & " " & strSport & " Class " & ds.Tables(0).Rows(x).Item("strClass") & " State Championship"
                                Session("BHeader1") = strResults
                                cmdButtonB.ToolTip = ds.Tables(0).Rows(x).Item("Id")
                            Case "C", "2BALL"
                                AccordionPaneC.Visible = True
                                If Len(Session("CHeader")) < 10 Then
                                    Session("CHeader") = "<img src='../images/plus.gif' />&nbsp;" & strHeader & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                Else
                                    Session("CHeader") = "<img src='../images/plus.gif' />&nbsp;" & Session("CHeader") & "<br>" & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                End If
                                'Session("CHeader1") = strYear & " " & strSport & " Class " & ds.Tables(0).Rows(x).Item("strClass") & " State Championship"
                                Session("CHeader1") = strResults
                                cmdButtonC.ToolTip = ds.Tables(0).Rows(x).Item("Id")
                            Case "8", "3A 6 on 6", "2A 6 on 6", "5 on 5"
                                AccordionPaneOther.Visible = True
                                If Len(Session("OtherHeader")) < 10 Then
                                    Session("OtherHeader") = "<img src='../images/plus.gif' />&nbsp;" & strHeader & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                Else
                                    Session("OtherHeader") = "<img src='../images/plus.gif' />&nbsp;" & Session("OtherHeader") & "<br>" & ds.Tables(0).Rows(x).Item("strSchool") & " (" & WSGetData.GetChampionshipCount(ds.Tables(0).Rows(x).Item("strSchool"), "OK", strSportGenderKey) & ")"
                                End If
                                'Session("BHeader1") = strYear & " " & strSport & " Class " & ds.Tables(0).Rows(x).Item("strClass") & " State Championship"
                                Session("OtherHeader1") = strResults
                                cmdButtonOther.ToolTip = ds.Tables(0).Rows(x).Item("Id")
                            Case Else
                        End Select
                    Next x

                End If
            End If
        End If

    End Sub

    Public Sub ProcessButtonId(ByVal id As Long)
        Dim strHeader1 As String = ""
        Dim strSQL As String

        Session("id") = id

        PopulateSessionOfSelected(Session("id"))

        ' Generate the content of the selection...
        Dim strOSSAAFile As String = ""
        strOSSAAFile = CreateFile(Session("Year"), Session("SportGenderKey"), Session("School"), Session("Results"))

        ' Write the Pictures file with pictures to the database...
        If strOSSAAFile = "" Then
        Else
            strSQL = "UPDATE tblStateChampions SET strHTML = '" & strOSSAAFile & "' WHERE Id = " & Session("id")
            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        End If
        Dim strResults As String = Session("Results")
        'strResults = strResults.Replace(" : ", "<br>")
        If InStr(strResults, " : ") > 0 Then
            strResults = strResults.Replace(" : ", "</span><br>&nbsp;&nbsp;&nbsp;")
            strResults = "<span style='font-size: 20px; font-family: Arial;'>" & strResults
        End If
        Session("YearArticlesContent") = clsMenuItems.GetYearArticles(id, Server, strResults, "ISC", strOSSAAFile, Session("Results"))

        ' Turn on Picture controls.. 
        '        Dim objControl1 As UserControl
        '       objControl1 = CType(LoadControl("ucShowPix.ascx"), UserControl)
        '      objControl1.Session.Add("id", Session("id"))
        '     PlaceHolderArticles.Controls.Add(objControl1)


    End Sub


    Public Sub ProcessButton(ByVal sender As Object, ByVal Id As Long)
        Dim strHeader1 As String

        If Id = 0 Then
            Select Case sender.ID
                Case "cmdButton6A"
                    strHeader1 = Session("6AHeader1")
                    Session("id") = sender.ToolTip
                Case "cmdButton5A"
                    strHeader1 = Session("5AHeader1")
                    Session("id") = sender.ToolTip
                Case "cmdButton4A"
                    strHeader1 = Session("4AHeader1")
                    Session("id") = sender.ToolTip
                Case "cmdButton3A"
                    strHeader1 = Session("3AHeader1")
                    Session("id") = sender.ToolTip
                Case "cmdButton2A"
                    strHeader1 = Session("2AHeader1")
                    Session("id") = sender.ToolTip
                Case "cmdButtonA"
                    strHeader1 = Session("AHeader1")
                    Session("id") = sender.ToolTip
                Case "cmdButtonB"
                    strHeader1 = Session("BHeader1")
                    Session("id") = sender.ToolTip
                Case "cmdButtonC"
                    strHeader1 = Session("CHeader1")
                    Session("id") = sender.ToolTip
                Case "cmdButtonOther"
                    strHeader1 = Session("OtherHeader1")
                    Session("id") = sender.ToolTip
            End Select
        Else
            strHeader1 = ""
            Session("id") = Id
        End If

        If Id = 0 Then
            If Session("id") <> 0 Then
                Id = Session("id")
            End If
        End If

        PopulateSessionOfSelected(Id)

        ' Generate the content of the selection...
        Dim strOSSAAFile As String = ""
        strOSSAAFile = CreateFile(Session("Year"), Session("SportGenderKey"), Session("School"), Session("Results"))

        ' Write the Pictures file with pictures to the database...
        If strOSSAAFile = "" Then
        Else
            Dim strSQL As String
            strSQL = "UPDATE tblStateChampions SET strHTML = '" & strOSSAAFile & "' WHERE Id = " & Session("id")
            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        End If

        Dim strResults As String = Session("Results")
        If InStr(strResults, " : ") > 0 Then
            strResults = strResults.Replace(" : ", "</span><br>&nbsp;&nbsp;&nbsp;")
            strResults = "<span style='font-size: 20px; font-family: Arial;'>" & strResults
        End If
        Session("YearArticlesContent") = clsMenuItems.GetYearArticles(Session("id"), Server, strResults, "ISC", strOSSAAFile, Session("Results"))

        AccordionPaneArticles.Visible = True
        AccordionLeft.SelectedIndex = 0

        ' Turn on Picture controls.. 
        'Dim objControl1 As UserControl
        'objControl1 = CType(LoadControl("ucShowPix.ascx"), UserControl)
        'objControl1.Session.Add("id", Session("id"))
        'PlaceHolderArticles.Controls.Add(objControl1)

    End Sub

    Public Function CreateFile(ByVal strYear As String, ByVal strSportGenderKey As String, ByVal strSchool As String, ByVal strTitle As String) As String
        Dim strHTML As String = ""
        Dim strPathURL As String = ""
        Dim strFile As String = ""
        Dim strPathServer As String = ""
        Dim strReturn As String = ""

        If strSchool Is Nothing Then

        Else
            '           PopulateSessionOfSelected(Session("id"))
            strFile = clsImages.GetPicturesFileName(strYear, strSportGenderKey, strSchool)
            'strPathURL = System.Web.Configuration.WebConfigurationManager.AppSettings.Get("siteURLSub")
            strPathURL = System.Web.Configuration.WebConfigurationManager.AppSettings.Get("siteURL")

            Dim objSR As System.IO.StreamWriter
            strSchool = strSchool.Replace(" ", "")
            strSchool = strSchool.Replace("-", "")
            strPathServer = Server.MapPath(".\")
            objSR = System.IO.File.CreateText(strPathServer & strFile)
            strHTML = clsImages.GetPicturesHTMLContent(strYear, strSportGenderKey, strSchool, strTitle, strPathServer, (strPathURL & "/"), True, True)
            objSR.WriteLine(strHTML)
            objSR.Close()

            If strHTML = "" Then
                strReturn = ""
            ElseIf InStr(strHTML, "NO PICTURES AVAIL") > 0 Then
                strReturn = ""
            Else
                strReturn = strPathURL & "/" & strFile
            End If
            Session("IFRAMEsrc") = strReturn

        End If
        Return strReturn
    End Function

    Public Sub PopulateSessionOfSelected(ByVal id As Integer)
        Dim ds As DataSet
        Dim strSQL As String

        strSQL = "SELECT * FROM tblStateChampions WHERE Id = " & id

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            Session("SportGenderKey") = ds.Tables(0).Rows(0).Item("strSportGenderKey")
            Session("Year") = ds.Tables(0).Rows(0).Item("intYear")
            Session("School") = ds.Tables(0).Rows(0).Item("strSchool")
            Session("Class") = ds.Tables(0).Rows(0).Item("strClass")
            Session("Results") = ds.Tables(0).Rows(0).Item("strResults")
        End If

    End Sub

    Private Sub cmdButton6A_Command(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.CommandEventArgs) Handles cmdButton6A.Command
        ProcessButton(sender, 0)
    End Sub

    Private Sub cmdButton5A_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdButton5A.Click
        ProcessButton(sender, 0)
    End Sub

    Private Sub cmdButton4A_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdButton4A.Click
        ProcessButton(sender, 0)
    End Sub

    Private Sub cmdButton3A_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdButton3A.Click
        ProcessButton(sender, 0)
    End Sub

    Private Sub cmdButton2A_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdButton2A.Click
        ProcessButton(sender, 0)
    End Sub

    Private Sub cmdButtonA_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdButtonA.Click
        ProcessButton(sender, 0)
    End Sub

    Private Sub cmdButtonB_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdButtonB.Click
        ProcessButton(sender, 0)
    End Sub

    Private Sub cmdButtonC_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdButtonC.Click
        ProcessButton(sender, 0)
    End Sub

    Private Sub cmdButtonOther_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdButtonOther.Click
        ProcessButton(sender, 0)
    End Sub

    Private Sub cboSchool_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles cboSchool.DataBound

        If cboSchool.Items(0).Text <> "Select School..." Then
            cboSchool.Items.Insert(0, "Select School...")
        End If
    End Sub



    <System.Web.Services.WebMethod()>
    Public Shared Sub ProcessYear(ByVal id As Object)

    End Sub

    Protected Sub cboSport_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles cboSport.SelectedIndexChanged

        Session("SelectedSchool") = ""
        Try
            Dim strSQL As String
            strSQL = "INSERT INTO tblStateChampionsSearches (strSource, strSearchType, strSearchDetails) VALUES ('OSSAA', 'SPORT', '" & sender.SelectedItem.ToString & "')"
            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        Catch
        End Try
        cboSchool.SelectedValue = "Select School..."
        cboYearSelect.SelectedValue = "Select Year..."

    End Sub

    Protected Sub cboYear_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles cboYear.SelectedIndexChanged

        Dim strState As String
        If Request.QueryString("st") Is Nothing Then
            strState = clsHTML.GetState("OK")
        Else
            strState = clsHTML.GetState(Request.QueryString("st"))
        End If

        hlCompleteList.Visible = False

        If InStr(sender.SelectedValue, "-") > 0 Then
            SetAccordionTabsHeaders(cboSport.SelectedValue, cboYear.SelectedValue, False, True)
            Session("YearContent") = clsHTML.GetDecadeContentHTML(sender.SelectedValue, cboSport.SelectedValue, strHomeURL, strState)
            Session("ShowingYear") = 1
            Session("ShowingSchool") = 0
        ElseIf sender.SelectedValue = "List of Champions" Then
            Dim strURL As String = ""
            Dim strURLText As String = ""

            ' Added 5/12/2013...
            Try
                Dim strSQL As String
                strSQL = "INSERT INTO tblStateChampionsSearches (strSource, strSearchType, strSearchDetails) VALUES ('OSSAA', 'LISTOC', '" & cboSport.SelectedValue & "')"
                SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            Catch
            End Try

            Me.hlCompleteList.Visible = True
            strURL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT strURL FROM tblSports WHERE strSportGenderKey = '" & cboSport.SelectedValue & "' AND strState = '" & strState & "'")
            Me.hlCompleteList.NavigateUrl = strURL
            strURLText = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT strURLText FROM tblSports WHERE strSportGenderKey = '" & cboSport.SelectedValue & "' AND strState =  '" & strState & "'")
            Me.hlCompleteList.Text = strURLText

        Else
            SetAccordionTabsHeaders(cboSport.SelectedValue, cboYear.SelectedValue, False, False)
            Dim strOSSAAFile As String = ""
            strOSSAAFile = CreateFile(Session("Year"), Session("SportGenderKey"), Session("School"), Session("Results"))
            ' Write the Pictures file with pictures to the database...
            Try
                ' Added 5/12/2013...
                Dim strSQL As String
                strSQL = "INSERT INTO tblStateChampionsSearches (strSource, strSearchType, strSearchDetails) VALUES ('OSSAA', 'SPORTYEAR', '" & (cboSport.SelectedValue & "-" & cboYear.SelectedValue) & "')"
                SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            Catch
            End Try
            If strOSSAAFile = "" Then
            Else
                Dim strSQL As String
                strSQL = "UPDATE tblStateChampions SET strHTML = '" & strOSSAAFile & "' WHERE Id = " & Session("id")
                SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            End If

            Session("YearArticlesContent") = clsMenuItems.GetYearArticles(0, Server, "", "ISC", strOSSAAFile, Session("Results"))

            ' Turn on Picture controls.. 
            'Dim objControl1 As UserControl
            'objControl1 = CType(LoadControl("ucShowPix.ascx"), UserControl)
            'objControl1.Session.Add("id", Session("id"))
            'PlaceHolderArticles.Controls.Add(objControl1)

            Me.lblWelcome.Visible = False
        End If

    End Sub

    Protected Sub cboSchool_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles cboSchool.SelectedIndexChanged
        SetAccordionTabsHeaders(cboSport.SelectedValue, cboYear.SelectedValue, True, False)
        Session("SelectedSchool") = sender.SelectedItem.ToString
        Session("SchoolContent") = GetSchoolContentHTML(sender.SelectedValue)
        Session("ShowingYear") = 0
        Session("ShowingSchool") = 1
        ' Reset the other Cascading Dropdowns...
        cboSport.SelectedValue = "Select Sport..."
        cboYearSelect.SelectedValue = "Select Year..."
        Try
            ' Added 5/12/2013...
            Dim strSQL As String
            strSQL = "INSERT INTO tblStateChampionsSearches (strSource, strSearchType, strSearchDetails) VALUES ('OSSAA', 'SCHOOL', '" & sender.SelectedItem.ToString & "')"
            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        Catch
        End Try

    End Sub

    Private Sub cboYearSelect_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles cboYearSelect.DataBound
        If cboYearSelect.Items(0).Text <> "Select Year..." Then
            cboYearSelect.Items.Insert(0, "Select Year...")
        End If
    End Sub

    Protected Sub cboYearSelect_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles cboYearSelect.SelectedIndexChanged
        SetAccordionTabsHeaders(cboSport.SelectedValue, cboYearSelect.SelectedValue, False, True)
        Session("SelectedYear") = sender.SelectedItem.ToString
        Session("YearContent") = GetYearContentHTML(sender.SelectedValue, strHomeURL, "OK")
        Try
            Dim strSQL As String
            strSQL = "INSERT INTO tblStateChampionsSearches (strSource, strSearchType, strSearchDetails) VALUES ('OSSAA', 'YEAR', '" & sender.SelectedItem.ToString & "')"
            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        Catch
        End Try
        Session("ShowingYear") = 1
        Session("ShowingSchool") = 0
        Me.lblWelcome.Visible = False
        ' Reset the other Cascading Dropdowns...
        cboSport.SelectedValue = "Select Sport..."
        cboSchool.SelectedValue = "Select School..."
    End Sub

    Private Sub cboSport_DataBound(sender As Object, e As EventArgs) Handles cboSport.DataBound
        If cboSport.Items(0).Text <> "Select Sport..." Then
            cboSport.Items.Insert(0, "Select Sport...")
        End If
    End Sub

    Public Function GetSchoolContentHTML(ByVal strSchool As String) As String
        Dim strSchoolContent As String = ""
        Dim strNoneKey As String = "<tr><td>&nbsp;&nbsp;None</td></tr>"
        Dim strSQL As String
        Dim ds As DataSet
        Dim x As Integer

        Dim strForeColor As String = "white"
        Dim strBackColor As String = "black"

        Dim strBaseballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Baseball</b></td></tr>"
        Dim strBasketballBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Basketball</b></td></tr>"
        Dim strBasketballGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Basketball</b></td></tr>"
        Dim strFootballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Football</b></td></tr>"
        Dim strFPSoftballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Fast Pitch Softball</b></td></tr>"
        Dim strSPSoftballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Slow Pitch Softball</b></td></tr>"
        Dim strVolleyballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Volleyball</b></td></tr>"
        Dim strCheerleadingPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Cheerleading</b></td></tr>"
        Dim strBaseball As String = ""
        Dim strBasketballBoys As String = ""
        Dim strBasketballGirls As String = ""
        Dim strFootball As String = ""
        Dim strFPSoftball As String = ""
        Dim strSPSoftball As String = ""
        Dim strVolleyball As String = ""
        Dim strCheerleading As String = ""

        Dim intCountBaseball As Integer = 0
        Dim intCountBasketballBoys As Integer = 0
        Dim intCountBasketballGirls As Integer = 0
        Dim intCountFootball As Integer = 0
        Dim intCountFPSoftball As Integer = 0
        Dim intCountSPSoftball As Integer = 0
        Dim intCountVolleyball As Integer = 0
        Dim intCountCheerleading As Integer = 0

        ' CDW added 8/5/2019...
        Dim strSpeechDebatePre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Speech & Debate</b></td></tr>"
        Dim strSpeechDebate As String = ""
        Dim intCountSpeechDebate As Integer = 0

        Dim strJazzBandPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Jazz Band</b></td></tr>"
        Dim strJazzBand As String = ""
        Dim intCountJazzBand As Integer = 0

        Dim strOneActPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;One Act Play</b></td></tr>"
        Dim strOneAct As String = ""
        Dim intCountOneAct As Integer = 0

        Dim strBaseballFallPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Fall Baseball</b></td></tr>"
        Dim strBaseballFall As String = ""
        Dim intCountBaseballFall As Integer = 0

        Dim strCrossCountryBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Cross Country</b></td></tr>"
        Dim strCrossCountryBoys As String = ""
        Dim intCountCrossCountryBoys As Integer = 0

        Dim strCrossCountryGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Cross Country</b></td></tr>"
        Dim strCrossCountryGirls As String = ""
        Dim intCountCrossCountryGirls As Integer = 0

        Dim strGolfBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Golf</b></td></tr>"
        Dim strGolfBoys As String = ""
        Dim intCountGolfBoys As Integer = 0

        Dim strGolfGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Golf</b></td></tr>"
        Dim strGolfGirls As String = ""
        Dim intCountGolfGirls As Integer = 0

        Dim strSoccerBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Soccer</b></td></tr>"
        Dim strSoccerBoys As String = ""
        Dim intCountSoccerBoys As Integer = 0

        Dim strSoccerGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Soccer</b></td></tr>"
        Dim strSoccerGirls As String = ""
        Dim intCountSoccerGirls As Integer = 0

        Dim strSwimmingBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Swimming</b></td></tr>"
        Dim strSwimmingBoys As String = ""
        Dim intCountSwimmingBoys As Integer = 0

        Dim strSwimmingGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Swimming</b></td></tr>"
        Dim strSwimmingGirls As String = ""
        Dim intCountSwimmingGirls As Integer = 0

        Dim strTennisBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Tennis</b></td></tr>"
        Dim strTennisBoys As String = ""
        Dim intCountTennisBoys As Integer = 0

        Dim strTennisGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Tennis</b></td></tr>"
        Dim strTennisGirls As String = ""
        Dim intCountTennisGirls As Integer = 0

        Dim strTrackBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Track</b></td></tr>"
        Dim strTrackBoys As String = ""
        Dim intCountTrackBoys As Integer = 0

        Dim strTrackGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Track</b></td></tr>"
        Dim strTrackGirls As String = ""
        Dim intCountTrackGirls As Integer = 0

        Dim strWrestlingPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Wrestling</b></td></tr>"
        Dim strWrestling As String = ""
        Dim intCountWrestling As Integer = 0

        Dim strWrestlingDualPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Wrestling Dual</b></td></tr>"
        Dim strWrestlingDual As String = ""
        Dim intCountWrestlingDual As Integer = 0

        Dim intMod As Integer = 12

        strSQL = "SELECT Id, strSportGenderKey, intYear, strSchool, idSchool, strClass, strResults FROM tblStateChampions "
        If Request.QueryString("st") Is Nothing Then
            strSQL = strSQL & "WHERE (strSchool = '" & strSchool & "') AND strState = '" & clsHTML.GetState("OK") & "' ORDER BY strSportGenderKey, intYear"
        Else
            strSQL = strSQL & "WHERE (strSchool = '" & strSchool & "') AND strState = '" & clsHTML.GetState(Request.QueryString("st")) & "' ORDER BY strSportGenderKey, intYear"
        End If

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To ds.Tables(0).Rows.Count - 1
                With ds.Tables(0).Rows(x)
                    Select Case .Item("strSportGenderKey")
                        Case "SpeechDebate"
                            intCountSpeechDebate = intCountSpeechDebate + 1
                            strSpeechDebate = strSpeechDebate & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountSpeechDebate Mod intMod = 0 Then strSpeechDebate = strSpeechDebate & "<br>"
                        Case "OneAct"
                            intCountOneAct = intCountOneAct + 1
                            strOneAct = strOneAct & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountOneAct Mod intMod = 0 Then strOneAct = strOneAct & "<br>"
                        Case "JazzBand"
                            intCountJazzBand = intCountJazzBand + 1
                            strJazzBand = strJazzBand & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountJazzBand Mod intMod = 0 Then strJazzBand = strJazzBand & "<br>"
                        Case "Baseball"
                            intCountBaseball = intCountBaseball + 1
                            strBaseball = strBaseball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountBaseball Mod intMod = 0 Then strBaseball = strBaseball & "<br>"
                        Case "BaseballFall"
                            intCountBaseballFall = intCountBaseballFall + 1
                            strBaseballFall = strBaseballFall & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountBaseballFall Mod intMod = 0 Then strBaseballFall = strBaseballFall & "<br>"
                        Case "BasketballBoys"
                            intCountBasketballBoys = intCountBasketballBoys + 1
                            strBasketballBoys = strBasketballBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountBasketballBoys Mod intMod = 0 Then strBasketballBoys = strBasketballBoys & "<br>"
                        Case "BasketballGirls"
                            intCountBasketballGirls = intCountBasketballGirls + 1
                            strBasketballGirls = strBasketballGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountBasketballGirls Mod intMod = 0 Then strBasketballGirls = strBasketballGirls & "<br>"
                        Case "Cheerleading"
                            intCountCheerleading = intCountCheerleading + 1
                            strCheerleading = strCheerleading & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountCheerleading Mod intMod = 0 Then strCheerleading = strCheerleading & "<br>"
                        Case "CrossCountryBoys"
                            intCountCrossCountryBoys = intCountCrossCountryBoys + 1
                            strCrossCountryBoys = strCrossCountryBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountCrossCountryBoys Mod intMod = 0 Then strCrossCountryBoys = strCrossCountryBoys & "<br>"
                        Case "CrossCountryGirls"
                            intCountCrossCountryGirls = intCountCrossCountryGirls + 1
                            strCrossCountryGirls = strCrossCountryGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountCrossCountryGirls Mod intMod = 0 Then strCrossCountryGirls = strCrossCountryGirls & "<br>"
                        Case "Football"
                            intCountFootball = intCountFootball + 1
                            strFootball = strFootball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountFootball Mod intMod = 0 Then strFootball = strFootball & "<br>"
                        Case "FPSoftball"
                            intCountFPSoftball = intCountFPSoftball + 1
                            strFPSoftball = strFPSoftball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountFPSoftball Mod intMod = 0 Then strFPSoftball = strFPSoftball & "<br>"
                        Case "GolfBoys"
                            intCountGolfBoys = intCountGolfBoys + 1
                            strGolfBoys = strGolfBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountGolfBoys Mod intMod = 0 Then strGolfBoys = strGolfBoys & "<br>"
                        Case "GolfGirls"
                            intCountGolfGirls = intCountGolfGirls + 1
                            strGolfGirls = strGolfGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountGolfGirls Mod intMod = 0 Then strGolfGirls = strGolfGirls & "<br>"
                        Case "SPSoftball"
                            intCountSPSoftball = intCountSPSoftball + 1
                            strSPSoftball = strSPSoftball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountSPSoftball Mod intMod = 0 Then strSPSoftball = strSPSoftball & "<br>"
                        Case "SoccerBoys"
                            intCountSoccerBoys = intCountSoccerBoys + 1
                            strSoccerBoys = strSoccerBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountSoccerBoys Mod intMod = 0 Then strSoccerBoys = strSoccerBoys & "<br>"
                        Case "SoccerGirls"
                            intCountSoccerGirls = intCountSoccerGirls + 1
                            strSoccerGirls = strSoccerGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountSoccerGirls Mod intMod = 0 Then strSoccerGirls = strSoccerGirls & "<br>"
                        Case "SwimmingBoys"
                            intCountSwimmingBoys = intCountSwimmingBoys + 1
                            strSwimmingBoys = strSwimmingBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountSwimmingBoys Mod intMod = 0 Then strSwimmingBoys = strSwimmingBoys & "<br>"
                        Case "SwimmingGirls"
                            intCountSwimmingGirls = intCountSwimmingGirls + 1
                            strSwimmingGirls = strSwimmingGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountSwimmingGirls Mod intMod = 0 Then strSwimmingGirls = strSwimmingGirls & "<br>"
                        Case "TennisBoys"
                            intCountTennisBoys = intCountTennisBoys + 1
                            strTennisBoys = strTennisBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountTennisBoys Mod intMod = 0 Then strTennisBoys = strTennisBoys & "<br>"
                        Case "TennisGirls"
                            intCountTennisGirls = intCountTennisGirls + 1
                            strTennisGirls = strTennisGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountTennisGirls Mod intMod = 0 Then strTennisGirls = strTennisGirls & "<br>"
                        Case "TrackBoys"
                            intCountTrackBoys = intCountTrackBoys + 1
                            strTrackBoys = strTrackBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountTrackBoys Mod intMod = 0 Then strTrackBoys = strTrackBoys & "<br>"
                        Case "TrackGirls"
                            intCountTrackGirls = intCountTrackGirls + 1
                            strTrackGirls = strTrackGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountTrackGirls Mod intMod = 0 Then strTrackGirls = strTrackGirls & "<br>"
                        Case "Volleyball"
                            intCountVolleyball = intCountVolleyball + 1
                            strVolleyball = strVolleyball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountVolleyball Mod intMod = 0 Then strVolleyball = strVolleyball & "<br>"
                        Case "Wrestling"
                            intCountWrestling = intCountWrestling + 1
                            strWrestling = strWrestling & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountWrestling Mod intMod = 0 Then strWrestling = strWrestling & "<br>"
                        Case "WrestlingDual"
                            intCountWrestlingDual = intCountWrestlingDual + 1
                            strWrestlingDual = strWrestlingDual & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountWrestlingDual Mod intMod = 0 Then strWrestlingDual = strWrestlingDual & "<br>"
                        Case Else
                    End Select

                End With
            Next
        End If

        ' Finish up...
        If strSpeechDebate = "" Then
        Else
            strSpeechDebate = strSpeechDebatePre & "<tr><td>" & strSpeechDebate & "</td></tr>"
        End If

        If strOneAct = "" Then
        Else
            strOneAct = strOneActPre & "<tr><td>" & strOneAct & "</td></tr>"
        End If

        If strJazzBand = "" Then
        Else
            strJazzBand = strJazzBandPre & "<tr><td>" & strJazzBand & "</td></tr>"
        End If

        If strBaseball = "" Then
            'strBaseball = strBaseballPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strBaseball = strBaseballPre & "<tr><td>" & strBaseball & "</td></tr>"
        End If

        If strBaseballFall = "" Then
            'strBaseballFall = strBaseballFallPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strBaseballFall = strBaseballFallPre & "<tr><td>" & strBaseballFall & "</td></tr>"
        End If

        If strBasketballBoys = "" Then
            'strBasketballBoys = strBasketballBoysPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strBasketballBoys = strBasketballBoysPre & "<tr><td>" & strBasketballBoys & "</td></tr>"
        End If

        If strBasketballGirls = "" Then
            'strBasketballGirls = strBasketballGirlsPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strBasketballGirls = strBasketballGirlsPre & "<tr><td>" & strBasketballGirls & "</td></tr>"
        End If

        If strCheerleading = "" Then
            'strCheerleading = strCheerleadingPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strCheerleading = strCheerleadingPre & "<tr><td>" & strCheerleading & "</td></tr>"
        End If

        If strCrossCountryBoys = "" Then
            'strCrossCountryBoys = strCrossCountryBoysPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strCrossCountryBoys = strCrossCountryBoysPre & "<tr><td>" & strCrossCountryBoys & "</td></tr>"
        End If

        If strCrossCountryGirls = "" Then
            'strCrossCountryGirls = strCrossCountryGirlsPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strCrossCountryGirls = strCrossCountryGirlsPre & "<tr><td>" & strCrossCountryGirls & "</td></tr>"
        End If

        If strFootball = "" Then
            'strFootball = strFootballPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strFootball = strFootballPre & "<tr><td>" & strFootball & "</td></tr>"
        End If

        If strGolfBoys = "" Then
            'strGolfBoys = strGolfBoysPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strGolfBoys = strGolfBoysPre & "<tr><td>" & strGolfBoys & "</td></tr>"
        End If

        If strGolfGirls = "" Then
            'strGolfGirls = strGolfGirlsPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strGolfGirls = strGolfGirlsPre & "<tr><td>" & strGolfGirls & "</td></tr>"
        End If

        If strSoccerBoys = "" Then
            'strSoccerBoys = strSoccerBoysPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strSoccerBoys = strSoccerBoysPre & "<tr><td>" & strSoccerBoys & "</td></tr>"
        End If

        If strSoccerGirls = "" Then
            'strSoccerGirls = strSoccerGirlsPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strSoccerGirls = strSoccerGirlsPre & "<tr><td>" & strSoccerGirls & "</td></tr>"
        End If

        If strSwimmingBoys = "" Then
        Else
            strSwimmingBoys = strSwimmingBoysPre & "<tr><td>" & strSwimmingBoys & "</td></tr>"
        End If

        If strSwimmingGirls = "" Then
        Else
            strSwimmingGirls = strSwimmingGirlsPre & "<tr><td>" & strSwimmingGirls & "</td></tr>"
        End If

        If strSPSoftball = "" Then
            'strSPSoftball = strSPSoftballPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strSPSoftball = strSPSoftballPre & "<tr><td>" & strSPSoftball & "</td></tr>"
        End If

        If strFPSoftball = "" Then
            'strFPSoftball = strFPSoftballPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strFPSoftball = strFPSoftballPre & "<tr><td>" & strFPSoftball & "</td></tr>"
        End If

        If strTennisBoys = "" Then
            'strTennisBoys = strTennisBoysPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strTennisBoys = strTennisBoysPre & "<tr><td>" & strTennisBoys & "</td></tr>"
        End If

        If strTennisGirls = "" Then
            'strTennisGirls = strTennisGirlsPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strTennisGirls = strTennisGirlsPre & "<tr><td>" & strTennisGirls & "</td></tr>"
        End If

        If strTrackBoys = "" Then
            'strTrackBoys = strTrackBoysPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strTrackBoys = strTrackBoysPre & "<tr><td>" & strTrackBoys & "</td></tr>"
        End If

        If strTrackGirls = "" Then
            'strTrackGirls = strTrackGirlsPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strTrackGirls = strTrackGirlsPre & "<tr><td>" & strTrackGirls & "</td></tr>"
        End If

        If strVolleyball = "" Then
            'strVolleyball = strVolleyballPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strVolleyball = strVolleyballPre & "<tr><td>" & strVolleyball & "</td></tr>"
        End If

        If strWrestling = "" Then
            'strWrestling = strWrestlingPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strWrestling = strWrestlingPre & "<tr><td>" & strWrestling & "</td></tr>"
        End If

        If strWrestlingDual = "" Then
            'strWrestlingDual = strWrestlingDualPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strWrestlingDual = strWrestlingDualPre & "<tr><td>" & strWrestlingDual & "</td></tr>"
        End If

        strSchoolContent = strSchoolContent & strBaseball
        strSchoolContent = strSchoolContent & strBaseballFall
        strSchoolContent = strSchoolContent & strBasketballBoys
        strSchoolContent = strSchoolContent & strBasketballGirls
        strSchoolContent = strSchoolContent & strCheerleading
        strSchoolContent = strSchoolContent & strCrossCountryBoys
        strSchoolContent = strSchoolContent & strCrossCountryGirls
        strSchoolContent = strSchoolContent & strFPSoftball
        strSchoolContent = strSchoolContent & strFootball
        strSchoolContent = strSchoolContent & strGolfBoys
        strSchoolContent = strSchoolContent & strGolfGirls
        strSchoolContent = strSchoolContent & strSPSoftball
        strSchoolContent = strSchoolContent & strSoccerBoys
        strSchoolContent = strSchoolContent & strSoccerGirls
        strSchoolContent = strSchoolContent & strSwimmingBoys
        strSchoolContent = strSchoolContent & strSwimmingGirls
        strSchoolContent = strSchoolContent & strTennisBoys
        strSchoolContent = strSchoolContent & strTennisGirls
        strSchoolContent = strSchoolContent & strTrackBoys
        strSchoolContent = strSchoolContent & strTrackGirls
        strSchoolContent = strSchoolContent & strVolleyball
        strSchoolContent = strSchoolContent & strWrestling
        strSchoolContent = strSchoolContent & strWrestlingDual
        strSchoolContent = strSchoolContent & strSpeechDebate
        strSchoolContent = strSchoolContent & strJazzBand
        strSchoolContent = strSchoolContent & strOneAct

        Return strSchoolContent

    End Function

    Shared Function GetYearContentHTML(ByVal strYear As String, ByVal strHomeURL As String, strState As String) As String
        Dim strSchoolContent As String = ""
        Dim strNoneKey As String = "<tr><td>&nbsp;&nbsp;None</td></tr>"
        Dim strSQL As String
        Dim ds As DataSet
        Dim x As Integer

        Dim strForeColor As String = "white"
        Dim strBackColor As String = "black"

        Dim strBaseballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Baseball</b></td></tr>"
        Dim strBasketballBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Basketball</b></td></tr>"
        Dim strBasketballGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Basketball</b></td></tr>"
        Dim strFootballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Football</b></td></tr>"
        Dim strFPSoftballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Fast Pitch Softball</b></td></tr>"
        Dim strSPSoftballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Slow Pitch Softball</b></td></tr>"
        Dim strVolleyballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Volleyball</b></td></tr>"
        Dim strCheerleadingPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Cheerleading</b></td></tr>"
        Dim strBaseball As String = ""
        Dim strBasketballBoys As String = ""
        Dim strBasketballGirls As String = ""
        Dim strFootball As String = ""
        Dim strFPSoftball As String = ""
        Dim strSPSoftball As String = ""
        Dim strVolleyball As String = ""
        Dim strCheerleading As String = ""
        Dim intCountBaseball As Integer = 0
        Dim intCountBasketballBoys As Integer = 0
        Dim intCountBasketballGirls As Integer = 0
        Dim intCountFootball As Integer = 0
        Dim intCountFPSoftball As Integer = 0
        Dim intCountSPSoftball As Integer = 0
        Dim intCountVolleyball As Integer = 0
        Dim intCountCheerleading As Integer = 0

        Dim strBaseballFallPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Fall Baseball</b></td></tr>"
        Dim strBaseballFall As String = ""
        Dim intCountBaseballFall As Integer = 0

        Dim strCrossCountryBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Cross Country</b></td></tr>"
        Dim strCrossCountryBoys As String = ""
        Dim intCountCrossCountryBoys As Integer = 0

        Dim strCrossCountryGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Cross Country</b></td></tr>"
        Dim strCrossCountryGirls As String = ""
        Dim intCountCrossCountryGirls As Integer = 0

        Dim strGolfBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Golf</b></td></tr>"
        Dim strGolfBoys As String = ""
        Dim intCountGolfBoys As Integer = 0

        Dim strGolfGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Golf</b></td></tr>"
        Dim strGolfGirls As String = ""
        Dim intCountGolfGirls As Integer = 0

        Dim strSoccerBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Soccer</b></td></tr>"
        Dim strSoccerBoys As String = ""
        Dim intCountSoccerBoys As Integer = 0

        Dim strSoccerGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Soccer</b></td></tr>"
        Dim strSoccerGirls As String = ""
        Dim intCountSoccerGirls As Integer = 0

        Dim strSwimmingBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Swimming</b></td></tr>"
        Dim strSwimmingBoys As String = ""
        Dim intCountSwimmingBoys As Integer = 0

        Dim strSwimmingGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Swimming</b></td></tr>"
        Dim strSwimmingGirls As String = ""
        Dim intCountSwimmingGirls As Integer = 0

        Dim strTennisBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Tennis</b></td></tr>"
        Dim strTennisBoys As String = ""
        Dim intCountTennisBoys As Integer = 0

        Dim strTennisGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Tennis</b></td></tr>"
        Dim strTennisGirls As String = ""
        Dim intCountTennisGirls As Integer = 0

        Dim strTrackBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Boys Track</b></td></tr>"
        Dim strTrackBoys As String = ""
        Dim intCountTrackBoys As Integer = 0

        Dim strTrackGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Girls Track</b></td></tr>"
        Dim strTrackGirls As String = ""
        Dim intCountTrackGirls As Integer = 0

        Dim strWrestlingPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Wrestling</b></td></tr>"
        Dim strWrestling As String = ""
        Dim intCountWrestling As Integer = 0

        Dim strWrestlingDualPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;Wrestling Dual</b></td></tr>"
        Dim strWrestlingDual As String = ""
        Dim intCountWrestlingDual As Integer = 0


        Dim intMod As Integer = 12

        strSQL = "SELECT Id, strSportGenderKey, intYear, strSchool, idSchool, strClass, strResults, strState FROM tblStateChampions "
        strSQL = strSQL & "WHERE (intYear = '" & CInt(strYear) & "') AND strState = '" & strState & "' ORDER BY strSportGenderKey, intYear"

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To ds.Tables(0).Rows.Count - 1
                With ds.Tables(0).Rows(x)
                    Select Case .Item("strSportGenderKey")
                        Case "Baseball"
                            intCountBaseball = intCountBaseball + 1
                            strBaseball = strBaseball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountBaseball Mod intMod = 0 Then strBaseball = strBaseball & "<br>"
                        Case "BaseballFall"
                            intCountBaseballFall = intCountBaseballFall + 1
                            strBaseballFall = strBaseballFall & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountBaseballFall Mod intMod = 0 Then strBaseballFall = strBaseballFall & "<br>"
                        Case "BasketballBoys"
                            intCountBasketballBoys = intCountBasketballBoys + 1
                            strBasketballBoys = strBasketballBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountBasketballBoys Mod intMod = 0 Then strBasketballBoys = strBasketballBoys & "<br>"
                        Case "BasketballGirls"
                            intCountBasketballGirls = intCountBasketballGirls + 1
                            strBasketballGirls = strBasketballGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountBasketballGirls Mod intMod = 0 Then strBasketballGirls = strBasketballGirls & "<br>"
                        Case "Cheerleading"
                            intCountCheerleading = intCountCheerleading + 1
                            strCheerleading = strCheerleading & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountCheerleading Mod intMod = 0 Then strCheerleading = strCheerleading & "<br>"
                        Case "CrossCountryBoys"
                            intCountCrossCountryBoys = intCountCrossCountryBoys + 1
                            strCrossCountryBoys = strCrossCountryBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountCrossCountryBoys Mod intMod = 0 Then strCrossCountryBoys = strCrossCountryBoys & "<br>"
                        Case "CrossCountryGirls"
                            intCountCrossCountryGirls = intCountCrossCountryGirls + 1
                            strCrossCountryGirls = strCrossCountryGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountCrossCountryGirls Mod intMod = 0 Then strCrossCountryGirls = strCrossCountryGirls & "<br>"
                        Case "Football"
                            intCountFootball = intCountFootball + 1
                            strFootball = strFootball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountFootball Mod intMod = 0 Then strFootball = strFootball & "<br>"
                        Case "FPSoftball"
                            intCountFPSoftball = intCountFPSoftball + 1
                            strFPSoftball = strFPSoftball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountFPSoftball Mod intMod = 0 Then strFPSoftball = strFPSoftball & "<br>"
                        Case "GolfBoys"
                            intCountGolfBoys = intCountGolfBoys + 1
                            strGolfBoys = strGolfBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountGolfBoys Mod intMod = 0 Then strGolfBoys = strGolfBoys & "<br>"
                        Case "GolfGirls"
                            intCountGolfGirls = intCountGolfGirls + 1
                            strGolfGirls = strGolfGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountGolfGirls Mod intMod = 0 Then strGolfGirls = strGolfGirls & "<br>"
                        Case "SPSoftball"
                            intCountSPSoftball = intCountSPSoftball + 1
                            strSPSoftball = strSPSoftball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountSPSoftball Mod intMod = 0 Then strSPSoftball = strSPSoftball & "<br>"
                        Case "SoccerBoys"
                            intCountSoccerBoys = intCountSoccerBoys + 1
                            strSoccerBoys = strSoccerBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountSoccerBoys Mod intMod = 0 Then strSoccerBoys = strSoccerBoys & "<br>"
                        Case "SoccerGirls"
                            intCountSoccerGirls = intCountSoccerGirls + 1
                            strSoccerGirls = strSoccerGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountSoccerGirls Mod intMod = 0 Then strSoccerGirls = strSoccerGirls & "<br>"
                        Case "SwimmingBoys"
                            intCountSwimmingBoys = intCountSwimmingBoys + 1
                            strSwimmingBoys = strSwimmingBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountSwimmingBoys Mod intMod = 0 Then strSwimmingBoys = strSwimmingBoys & "<br>"
                        Case "SwimmingGirls"
                            intCountSwimmingGirls = intCountSwimmingGirls + 1
                            strSwimmingGirls = strSwimmingGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountSwimmingGirls Mod intMod = 0 Then strSwimmingGirls = strSwimmingGirls & "<br>"
                        Case "TennisBoys"
                            intCountTennisBoys = intCountTennisBoys + 1
                            strTennisBoys = strTennisBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountTennisBoys Mod intMod = 0 Then strTennisBoys = strTennisBoys & "<br>"
                        Case "TennisGirls"
                            intCountTennisGirls = intCountTennisGirls + 1
                            strTennisGirls = strTennisGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountTennisGirls Mod intMod = 0 Then strTennisGirls = strTennisGirls & "<br>"
                        Case "TrackBoys"
                            intCountTrackBoys = intCountTrackBoys + 1
                            strTrackBoys = strTrackBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountTrackBoys Mod intMod = 0 Then strTrackBoys = strTrackBoys & "<br>"
                        Case "TrackGirls"
                            intCountTrackGirls = intCountTrackGirls + 1
                            strTrackGirls = strTrackGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountTrackGirls Mod intMod = 0 Then strTrackGirls = strTrackGirls & "<br>"
                        Case "Volleyball"
                            intCountVolleyball = intCountVolleyball + 1
                            strVolleyball = strVolleyball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountVolleyball Mod intMod = 0 Then strVolleyball = strVolleyball & "<br>"
                        Case "Wrestling"
                            intCountWrestling = intCountWrestling + 1
                            strWrestling = strWrestling & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountWrestling Mod intMod = 0 Then strWrestling = strWrestling & "<br>"
                        Case "WrestlingDual"
                            intCountWrestlingDual = intCountWrestlingDual + 1
                            strWrestlingDual = strWrestlingDual & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            If intCountWrestlingDual Mod intMod = 0 Then strWrestlingDual = strWrestlingDual & "<br>"
                        Case Else
                    End Select

                End With
            Next
        End If

        ' Finish up...
        If strBaseball = "" Then
        Else
            strBaseball = strBaseballPre & "<tr><td>" & strBaseball & "</td></tr>"
        End If

        If strBaseballFall = "" Then
        Else
            strBaseballFall = strBaseballFallPre & "<tr><td>" & strBaseballFall & "</td></tr>"
        End If

        If strBasketballBoys = "" Then
        Else
            strBasketballBoys = strBasketballBoysPre & "<tr><td>" & strBasketballBoys & "</td></tr>"
        End If

        If strBasketballGirls = "" Then
        Else
            strBasketballGirls = strBasketballGirlsPre & "<tr><td>" & strBasketballGirls & "</td></tr>"
        End If

        If strCheerleading = "" Then
        Else
            strCheerleading = strCheerleadingPre & "<tr><td>" & strCheerleading & "</td></tr>"
        End If

        If strCrossCountryBoys = "" Then
        Else
            strCrossCountryBoys = strCrossCountryBoysPre & "<tr><td>" & strCrossCountryBoys & "</td></tr>"
        End If

        If strCrossCountryGirls = "" Then
        Else
            strCrossCountryGirls = strCrossCountryGirlsPre & "<tr><td>" & strCrossCountryGirls & "</td></tr>"
        End If

        If strFootball = "" Then
        Else
            strFootball = strFootballPre & "<tr><td>" & strFootball & "</td></tr>"
        End If

        If strGolfBoys = "" Then
        Else
            strGolfBoys = strGolfBoysPre & "<tr><td>" & strGolfBoys & "</td></tr>"
        End If

        If strGolfGirls = "" Then
        Else
            strGolfGirls = strGolfGirlsPre & "<tr><td>" & strGolfGirls & "</td></tr>"
        End If

        If strSoccerBoys = "" Then
        Else
            strSoccerBoys = strSoccerBoysPre & "<tr><td>" & strSoccerBoys & "</td></tr>"
        End If

        If strSoccerGirls = "" Then
        Else
            strSoccerGirls = strSoccerGirlsPre & "<tr><td>" & strSoccerGirls & "</td></tr>"
        End If

        If strSwimmingBoys = "" Then
        Else
            strSwimmingBoys = strSwimmingBoysPre & "<tr><td>" & strSwimmingBoys & "</td></tr>"
        End If

        If strSwimmingGirls = "" Then
        Else
            strSwimmingGirls = strSwimmingGirlsPre & "<tr><td>" & strSwimmingGirls & "</td></tr>"
        End If

        If strSPSoftball = "" Then
        Else
            strSPSoftball = strSPSoftballPre & "<tr><td>" & strSPSoftball & "</td></tr>"
        End If

        If strFPSoftball = "" Then
        Else
            strFPSoftball = strFPSoftballPre & "<tr><td>" & strFPSoftball & "</td></tr>"
        End If

        If strTennisBoys = "" Then
        Else
            strTennisBoys = strTennisBoysPre & "<tr><td>" & strTennisBoys & "</td></tr>"
        End If

        If strTennisGirls = "" Then
        Else
            strTennisGirls = strTennisGirlsPre & "<tr><td>" & strTennisGirls & "</td></tr>"
        End If

        If strTrackBoys = "" Then
        Else
            strTrackBoys = strTrackBoysPre & "<tr><td>" & strTrackBoys & "</td></tr>"
        End If

        If strTrackGirls = "" Then
        Else
            strTrackGirls = strTrackGirlsPre & "<tr><td>" & strTrackGirls & "</td></tr>"
        End If

        If strVolleyball = "" Then
        Else
            strVolleyball = strVolleyballPre & "<tr><td>" & strVolleyball & "</td></tr>"
        End If

        If strWrestling = "" Then
        Else
            strWrestling = strWrestlingPre & "<tr><td>" & strWrestling & "</td></tr>"
        End If

        If strWrestlingDual = "" Then
        Else
            strWrestlingDual = strWrestlingDualPre & "<tr><td>" & strWrestlingDual & "</td></tr>"
        End If

        strSchoolContent = strSchoolContent & strBaseball
        strSchoolContent = strSchoolContent & strBaseballFall
        strSchoolContent = strSchoolContent & strBasketballBoys
        strSchoolContent = strSchoolContent & strBasketballGirls
        strSchoolContent = strSchoolContent & strCheerleading
        strSchoolContent = strSchoolContent & strCrossCountryBoys
        strSchoolContent = strSchoolContent & strCrossCountryGirls
        strSchoolContent = strSchoolContent & strFPSoftball
        strSchoolContent = strSchoolContent & strFootball
        strSchoolContent = strSchoolContent & strGolfBoys
        strSchoolContent = strSchoolContent & strGolfGirls
        strSchoolContent = strSchoolContent & strSPSoftball
        strSchoolContent = strSchoolContent & strSoccerBoys
        strSchoolContent = strSchoolContent & strSoccerGirls
        strSchoolContent = strSchoolContent & strSwimmingBoys
        strSchoolContent = strSchoolContent & strSwimmingGirls
        strSchoolContent = strSchoolContent & strTennisBoys
        strSchoolContent = strSchoolContent & strTennisGirls
        strSchoolContent = strSchoolContent & strTrackBoys
        strSchoolContent = strSchoolContent & strTrackGirls
        strSchoolContent = strSchoolContent & strVolleyball
        strSchoolContent = strSchoolContent & strWrestling
        strSchoolContent = strSchoolContent & strWrestlingDual
        strSchoolContent = strSchoolContent & "<tr><td>&nbsp;</td></tr>"
        strSchoolContent = strSchoolContent & "<tr><td>&nbsp;</td></tr>"

        Return strSchoolContent

    End Function

    Private Sub cboYear_DataBound(sender As Object, e As EventArgs) Handles cboYear.DataBound
        ' CDW added 5/14/2019...
        If cboYear.Items.Count > 0 Then
            If cboYear.Items(0).Text <> "Select Year..." Then
                cboYear.Items.Insert(0, "Select Year...")
            End If
        End If
    End Sub
End Class