Imports Telerik.Web.UI

Partial Class StateChampionshipsBySchool
    Inherits RadAjaxPage

    Dim intValue As Long
    Dim strHOMEURL As String = "StateChampionshipsBySchool.aspx"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strSchool As String = ""
        Dim globalid As Long = 0

        ' Added 6/22/2018...
        If Session("globalState") Is Nothing Then
            Session("globalState") = "OK"
        ElseIf Session("globalState") = "" Then
            Session("globalState") = "OK"
        End If

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            'Response.Redirect("http://www.iwasatthegame.com")
        End If

        If Request.QueryString("id") Is Nothing Then
			If Not IsPostBack Then
				If Request.QueryString("school") Is Nothing Then
				Else
					strSchool = clsFunctions.VerifyString(Request.QueryString("school"))
					Session("globalSchool") = strSchool
				End If
				ShowRows(False)
				If Session("globalSchool") = "" Or Session("globalSchool") = "OK" Then
					strSchool = "Ada"
				Else
					Try
						' We closed the sports page...
						If RadDropDownListSchools.SelectedValue = "" Then
							strSchool = Session("globalSchool")
							RadDropDownListSchools.SelectedValue = Session("globalSchool")
							LoadData(strSchool, Session("globalState"))
						Else
							strSchool = RadDropDownListSchools.SelectedValue
							LoadData(strSchool, Session("globalState"))
						End If
					Catch
					End Try
				End If
			Else
				If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
                    Response.Redirect("http://www.iwasatthegame.com/InvalidPage.aspx")
                End If
                Try
                    If RadDropDownListSchools.SelectedValue = "" Then
                        strSchool = Session("globalSchool")
                        RadDropDownListSchools.SelectedValue = Session("globalSchool")
                        LoadData(strSchool, Session("globalState"))
                    Else
                        strSchool = RadDropDownListSchools.SelectedValue
                        LoadData(strSchool, Session("globalState"))
                    End If
                Catch
                End Try
            End If
        Else
            Try
                globalid = CLng(Request.QueryString("id"))
            Catch ex As Exception
                globalid = 0
            End Try

            ' Not sure why this happens but have to cover it...
            If Session("globalState") = "OK" Then
                Try
                    SqlDataSourceSchools.DataBind()
                    RadDropDownListSchools.DataBind()
                    'Session("globalSchool") = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT TOP 1 strSchool FROM viewStateChampionshipArticles WHERE idStateChampion = " & globalid)
                    RadDropDownListSchools.SelectedValue = Session("globalSchool")
                Catch
                End Try
            End If

            Session("globalid") = globalid
            rowSportsPage.Visible = True
            Try
                If RadDropDownListSchools.SelectedValue = "" Or RadDropDownListSchools.SelectedIndex = -1 Then
                    strSchool = Session("globalSchool")
                    If Session("globalSchool") = "" Then
                        'RadDropDownListSchools.SelectedValue = "Select School..."
                        RadDropDownListSchools.SelectedValue = "Ada"
                    Else
                        RadDropDownListSchools.SelectedValue = Session("globalSchool")
                    End If
                    LoadData(Session("globalSchool"), Session("globalState"))
                Else
                    strSchool = RadDropDownListSchools.SelectedValue
                    LoadData(RadDropDownListSchools.SelectedValue, Session("globalState"))
                End If
            Catch
            End Try
        End If

        'If Session("globalState") = "" Then Session("globalState") = "OK"
        Dim strURL As String = sender.Request.Url.ToString
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONSHIPS")
        If strSchool = "" Or strSchool = "0" Then
            lblOneColumnDetail.Text = ""
        Else
            lblOneColumnDetail.Text = strSchool & " HIGH SCHOOL"
        End If
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        ' Added 5/25/2018...
        'If Session("globalState") = "OK" Then
        '    rowAdBottom.Visible = True
        'Else
        '    rowAdBottom.Visible = False
        'End If

        Try
            clsLog.LogEvent("CHAMPIONSBYSCHOOL", Me.Page.AppRelativeVirtualPath.ToString, strSchool, Session("globalid"), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Private Sub RadDropDownListSchools_DataBound(sender As Object, e As EventArgs) Handles RadDropDownListSchools.DataBound
        On Error Resume Next
        'RadDropDownListSchools.Items.Insert(0, "Select School...")
        Dim objListItem As New ListItem
        objListItem.Value = 0
        objListItem.Text = "Select School..."
        RadDropDownListSchools.Items.Insert(0, objListItem)
    End Sub

    Private Sub RadDropDownListSchools_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListSchools.SelectedIndexChanged
        Session("globalSchool") = sender.SelectedValue
        rowSportsPage.Visible = False
        LoadData(sender.SelectedValue, Session("globalState"))
    End Sub

    Private Sub LoadData(strSchool As String, strState As String)
        Dim strSQL As String = ""
        Dim ds As DataSet
        Dim x As Integer
        Dim strURL As String = ""

        ShowRows(False)
        ClearSessionVariables()

        strSQL = "SELECT Id, strSportGenderKey, intYear, strSchool, idSchool, strClass, strResults FROM tblStateChampions "
        strSQL = strSQL & "WHERE (strSchool = '" & strSchool & "') AND strState = '" & strState & "' ORDER BY strSportGenderKey, intYear"

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        ' FILL THE ROWS...
        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To ds.Tables(0).Rows.Count - 1
                With ds.Tables(0).Rows(x)
                    strURL = "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a><img src='images\bullet.png'/>"
                    Select Case .Item("strSportGenderKey")
                        Case "Baseball"
                            Session("strBaseball") = Session("strBaseball") & strURL
                        Case "BaseballFall"
                            Session("strBaseballFall") = Session("strBaseballFall") & strURL
                        Case "BasketballBoys"
                            Session("strBasketballBoys") = Session("strBasketballBoys") & strURL
                        Case "BasketballGirls"
                            Session("strBasketballGirls") = Session("strBasketballGirls") & strURL
                        Case "Football"
                            Session("strFootball") = Session("strFootball") & strURL
                        Case "FPSoftball"
                            Session("strFPSoftball") = Session("strFPSoftball") & strURL
                        Case "SPSoftball"
                            Session("strSPSoftball") = Session("strSPSoftball") & strURL
                        Case "Cheerleading"
                            Session("strCheerleading") = Session("strCheerleading") & strURL
                        Case "CrossCountryBoys"
                            Session("strCrossCountryBoys") = Session("strCrossCountryBoys") & strURL
                        Case "CrossCountryGirls"
                            Session("strCrossCountryGirls") = Session("strCrossCountryGirls") & strURL
                        Case "GolfBoys"
                            Session("strGolfBoys") = Session("strGolfBoys") & strURL
                        Case "GolfGirls"
                            Session("strGolfGirls") = Session("strGolfGirls") & strURL
                        Case "SoccerBoys"
                            Session("strSoccerBoys") = Session("strSoccerBoys") & strURL
                        Case "SoccerGirls"
                            Session("strSoccerGirls") = Session("strSoccerGirls") & strURL
                        Case "SwimmingBoys"
                            Session("strSwimmingBoys") = Session("strSwimmingBoys") & strURL
                        Case "SwimmingGirls"
                            Session("strSwimmingGirls") = Session("strSwimmingGirls") & strURL
                        Case "TennisBoys"
                            Session("strTennisBoys") = Session("strTennisBoys") & strURL
                        Case "TennisGirls"
                            Session("strTennisGirls") = Session("strTennisGirls") & strURL
                        Case "TrackBoys"
                            Session("strTrackBoys") = Session("strTrackBoys") & strURL
                        Case "TrackGirls"
                            Session("strTrackGirls") = Session("strTrackGirls") & strURL
                        Case "Volleyball"
                            Session("strVolleyball") = Session("strVolleyball") & strURL
                        Case "Wrestling"
                            Session("strWrestling") = Session("strWrestling") & strURL
                        Case "WrestlingDual"
                            Session("strWrestlingDual") = Session("strWrestlingDual") & strURL
                        Case "JazzBand"
                            Session("strJazzBand") = Session("strJazzBand") & strURL
                        Case "SpeechDebate"
                            Session("strSpeechDebate") = Session("strSpeechDebate") & strURL
                        Case "OneAct"
                            Session("strOneAct") = Session("strOneAct") & strURL
                        Case Else
                    End Select
                End With
            Next
        End If

        ' TURN ON/OFF ROWS...
        If Session("strBaseball") = "&nbsp;&nbsp;" Then
            rowBaseball.Visible = False
            rowBaseballYears.Visible = False
        Else
            rowBaseball.Visible = True
            rowBaseballYears.Visible = True
        End If
        If Session("strBaseballFall") = "&nbsp;&nbsp;" Then
            rowBaseballFall.Visible = False
            rowBaseballFallYears.Visible = False
        Else
            rowBaseballFall.Visible = True
            rowBaseballFallYears.Visible = True
        End If
        If Session("strBasketballBoys") = "&nbsp;&nbsp;" Then
            rowBasketballBoys.Visible = False
            rowBasketballBoysYears.Visible = False
        Else
            rowBasketballBoys.Visible = True
            rowBasketballBoysYears.Visible = True
        End If
        If Session("strBasketballGirls") = "&nbsp;&nbsp;" Then
            rowBasketballGirls.Visible = False
            rowBasketballGirlsYears.Visible = False
        Else
            rowBasketballGirls.Visible = True
            rowBasketballGirlsYears.Visible = True
        End If
        If Session("strFootball") = "&nbsp;&nbsp;" Then
            rowFootball.Visible = False
            rowFootballYears.Visible = False
        Else
            rowFootball.Visible = True
            rowFootballYears.Visible = True
        End If
        If Session("strFPSoftball") = "&nbsp;&nbsp;" Then
            rowFPSoftball.Visible = False
            rowFPSoftballYears.Visible = False
        Else
            rowFPSoftball.Visible = True
            rowFPSoftballYears.Visible = True
        End If
        If Session("strSPSoftball") = "&nbsp;&nbsp;" Then
            rowSPSoftball.Visible = False
            rowSPSoftballYears.Visible = False
        Else
            rowSPSoftball.Visible = True
            rowSPSoftballYears.Visible = True
        End If
        If Session("strCheerleading") = "&nbsp;&nbsp;" Then
            rowCheerleading.Visible = False
            rowCheerleadingYears.Visible = False
        Else
            rowCheerleading.Visible = True
            rowCheerleadingYears.Visible = True
        End If
        If Session("strCrossCountryBoys") = "&nbsp;&nbsp;" Then
            rowCrossCountryBoys.Visible = False
            rowCrossCountryBoysYears.Visible = False
        Else
            rowCrossCountryBoys.Visible = True
            rowCrossCountryBoysYears.Visible = True
        End If
        If Session("strCrossCountryGirls") = "&nbsp;&nbsp;" Then
            rowCrossCountryGirls.Visible = False
            rowCrossCountryGirlsYears.Visible = False
        Else
            rowCrossCountryGirls.Visible = True
            rowCrossCountryGirlsYears.Visible = True
        End If
        If Session("strGolfBoys") = "&nbsp;&nbsp;" Then
            rowGolfBoys.Visible = False
            rowGolfBoysYears.Visible = False
        Else
            rowGolfBoys.Visible = True
            rowGolfBoysYears.Visible = True
        End If
        If Session("strGolfGirls") = "&nbsp;&nbsp;" Then
            rowGolfGirls.Visible = False
            rowGolfGirlsYears.Visible = False
        Else
            rowGolfGirls.Visible = True
            rowGolfGirlsYears.Visible = True
        End If
        If Session("strSoccerBoys") = "&nbsp;&nbsp;" Then
            rowSoccerBoys.Visible = False
            rowSoccerBoysYears.Visible = False
        Else
            rowSoccerBoys.Visible = True
            rowSoccerBoysYears.Visible = True
        End If
        If Session("strSoccerGirls") = "&nbsp;&nbsp;" Then
            rowSoccerGirls.Visible = False
            rowSoccerGirlsYears.Visible = False
        Else
            rowSoccerGirls.Visible = True
            rowSoccerGirlsYears.Visible = True
        End If

        If Session("strSwimmingBoys") = "&nbsp;&nbsp;" Then
            rowSwimmingBoys.Visible = False
            rowSwimmingBoysYears.Visible = False
        Else
            rowSwimmingBoys.Visible = True
            rowSwimmingBoysYears.Visible = True
        End If
        If Session("strSwimmingGirls") = "&nbsp;&nbsp;" Then
            rowSwimmingGirls.Visible = False
            rowSwimmingGirlsYears.Visible = False
        Else
            rowSwimmingGirls.Visible = True
            rowSwimmingGirlsYears.Visible = True
        End If
        If Session("strTennisBoys") = "&nbsp;&nbsp;" Then
            rowTennisBoys.Visible = False
            rowTennisBoysYears.Visible = False
        Else
            rowTennisBoys.Visible = True
            rowTennisBoysYears.Visible = True
        End If
        If Session("strTennisGirls") = "&nbsp;&nbsp;" Then
            rowTennisGirls.Visible = False
            rowTennisGirlsYears.Visible = False
        Else
            rowTennisGirls.Visible = True
            rowTennisGirlsYears.Visible = True
        End If
        If Session("strTrackBoys") = "&nbsp;&nbsp;" Then
            rowTrackBoys.Visible = False
            rowTrackBoysYears.Visible = False
        Else
            rowTrackBoys.Visible = True
            rowTrackBoysYears.Visible = True
        End If
        If Session("strTrackGirls") = "&nbsp;&nbsp;" Then
            rowTrackGirls.Visible = False
            rowTrackGirlsYears.Visible = False
        Else
            rowTrackGirls.Visible = True
            rowTrackGirlsYears.Visible = True
        End If
        If Session("strVolleyball") = "&nbsp;&nbsp;" Then
            rowVolleyball.Visible = False
            rowVolleyballYears.Visible = False
        Else
            rowVolleyball.Visible = True
            rowVolleyballYears.Visible = True
        End If
        If Session("strWrestling") = "&nbsp;&nbsp;" Then
            rowWrestling.Visible = False
            rowWrestlingYears.Visible = False
        Else
            rowWrestling.Visible = True
            rowWrestlingYears.Visible = True
        End If
        If Session("strWrestlingDual") = "&nbsp;&nbsp;" Then
            rowWrestlingDual.Visible = False
            rowWrestlingDualYears.Visible = False
        Else
            rowWrestlingDual.Visible = True
            rowWrestlingDualYears.Visible = True
        End If
        If Session("strJazzBand") = "&nbsp;&nbsp;" Then
            rowJazzBand.Visible = False
            rowJazzBandYears.Visible = False
        Else
            rowJazzBand.Visible = True
            rowJazzBandYears.Visible = True
        End If
        If Session("strSpeechDebate") = "&nbsp;&nbsp;" Then
            rowSpeechDebate.Visible = False
            rowSpeechDebateYears.Visible = False
        Else
            rowSpeechDebate.Visible = True
            rowSpeechDebateYears.Visible = True
        End If
        If Session("strOneAct") = "&nbsp;&nbsp;" Then
            rowOneAct.Visible = False
            rowOneActYears.Visible = False
        Else
            rowOneAct.Visible = True
            rowOneActYears.Visible = True
        End If


    End Sub

    Private Sub ShowRows(ysnVisible As Boolean)
        rowBaseball.Visible = ysnVisible
        rowBaseballYears.Visible = ysnVisible
        rowBaseballFall.Visible = ysnVisible
        rowBaseballFallYears.Visible = ysnVisible
        rowBasketballBoys.Visible = ysnVisible
        rowBasketballBoysYears.Visible = ysnVisible
        rowBasketballGirls.Visible = ysnVisible
        rowBasketballGirlsYears.Visible = ysnVisible
        rowFootball.Visible = ysnVisible
        rowFootballYears.Visible = ysnVisible
        rowFPSoftball.Visible = ysnVisible
        rowFPSoftballYears.Visible = ysnVisible
        rowSPSoftball.Visible = ysnVisible
        rowSPSoftballYears.Visible = ysnVisible
        rowCheerleading.Visible = ysnVisible
        rowCheerleadingYears.Visible = ysnVisible
        rowCrossCountryBoys.Visible = ysnVisible
        rowCrossCountryBoysYears.Visible = ysnVisible
        rowCrossCountryGirls.Visible = ysnVisible
        rowCrossCountryGirlsYears.Visible = ysnVisible
        rowGolfBoys.Visible = ysnVisible
        rowGolfBoysYears.Visible = ysnVisible
        rowGolfGirls.Visible = ysnVisible
        rowGolfGirlsYears.Visible = ysnVisible
        rowSoccerBoys.Visible = ysnVisible
        rowSoccerBoysYears.Visible = ysnVisible
        rowSoccerGirls.Visible = ysnVisible
        rowSoccerGirlsYears.Visible = ysnVisible
        rowSwimmingBoys.Visible = ysnVisible
        rowSwimmingBoysYears.Visible = ysnVisible
        rowSwimmingGirls.Visible = ysnVisible
        rowSwimmingGirlsYears.Visible = ysnVisible
        rowTennisBoys.Visible = ysnVisible
        rowTennisBoysYears.Visible = ysnVisible
        rowTennisGirls.Visible = ysnVisible
        rowTennisGirlsYears.Visible = ysnVisible
        rowTrackBoys.Visible = ysnVisible
        rowTrackBoysYears.Visible = ysnVisible
        rowTrackGirls.Visible = ysnVisible
        rowTrackGirlsYears.Visible = ysnVisible
        rowVolleyball.Visible = ysnVisible
        rowVolleyballYears.Visible = ysnVisible
        rowWrestling.Visible = ysnVisible
        rowWrestlingYears.Visible = ysnVisible
        rowWrestlingDual.Visible = ysnVisible
        rowWrestlingDualYears.Visible = ysnVisible
        rowJazzBand.Visible = ysnVisible
        rowJazzBandYears.Visible = ysnVisible
        rowSpeechDebate.Visible = ysnVisible
        rowSpeechDebateYears.Visible = ysnVisible
        rowOneAct.Visible = ysnVisible
        rowOneActYears.Visible = ysnVisible
    End Sub

    Private Sub ClearSessionVariables()
        Session("strBaseball") = "&nbsp;&nbsp;"
        Session("strBaseballFall") = "&nbsp;&nbsp;"
        Session("strBasketballBoys") = "&nbsp;&nbsp;"
        Session("strBasketballGirls") = "&nbsp;&nbsp;"
        Session("strFootball") = "&nbsp;&nbsp;"
        Session("strFPSoftball") = "&nbsp;&nbsp;"
        Session("strSPSoftball") = "&nbsp;&nbsp;"
        Session("strCheerleading") = "&nbsp;&nbsp;"
        Session("strCrossCountryBoys") = "&nbsp;&nbsp;"
        Session("strCrossCountryGirls") = "&nbsp;&nbsp;"
        Session("strGolfBoys") = "&nbsp;&nbsp;"
        Session("strGolfGirls") = "&nbsp;&nbsp;"
        Session("strSoccerBoys") = "&nbsp;&nbsp;"
        Session("strSoccerGirls") = "&nbsp;&nbsp;"
        Session("strSwimmingBoys") = "&nbsp;&nbsp;"
        Session("strSwimmingGirls") = "&nbsp;&nbsp;"
        Session("strTennisBoys") = "&nbsp;&nbsp;"
        Session("strTennisGirls") = "&nbsp;&nbsp;"
        Session("strTrackBoys") = "&nbsp;&nbsp;"
        Session("strTrackGirls") = "&nbsp;&nbsp;"
        Session("strVolleyball") = "&nbsp;&nbsp;"
        Session("strWrestling") = "&nbsp;&nbsp;"
        Session("strWrestlingDual") = "&nbsp;&nbsp;"
        Session("strJazzBand") = "&nbsp;&nbsp;"
        Session("strSpeechDebate") = "&nbsp;&nbsp;"
        Session("strOneAct") = "&nbsp;&nbsp;"
    End Sub

    Private Sub cmdCloseSportsPage_Click(sender As Object, e As EventArgs) Handles cmdCloseSportsPage.Click
        Response.Redirect(strHOMEURL)
    End Sub
End Class