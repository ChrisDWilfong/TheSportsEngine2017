Imports Telerik.Web.UI

Partial Class FBDistricts
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            'Response.Redirect("http://www.iwasatthegame.com")
        End If

        Session("globalSport") = "Football"

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL DISTRICT STANDINGS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "Football"

        lblOneColumnDetail.Text = "FOOTBALL" & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        'hlPrint.NavigateUrl = "FBDistricts.aspx?distYear=" & Session("distYear") & "&distClass=" & Session("distClass")

        GridView1.DataBind()
        GridView1d.DataBind()
        GridView2.DataBind()
        GridView2a.DataBind()
        GridView2d.DataBind()
        GridView3.DataBind()
        GridView3d.DataBind()
        GridView4.DataBind()
        GridView4d.DataBind()
        GridView5.DataBind()
        GridView6.DataBind()
        GridView7.DataBind()
        GridView7a.DataBind()
        GridView8.DataBind()
        GridView9.DataBind()
        GridView10.DataBind()
        GridView11.DataBind()
        GridView12.DataBind()
        GridView13.DataBind()
        GridView14.DataBind()
        GridView15.DataBind()
        GridView16.DataBind()

        If GridView1.Rows.Count = 0 Then
            lblHeader1.Visible = False
        Else
            lblHeader1.Visible = True
            lblHeader1.Text = Session("distYear") & " District " & GridView1.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView1d.Rows.Count = 0 Then
            lblHeader1d.Visible = False
        Else
            lblHeader1d.Visible = True
            lblHeader1d.Text = Session("distYear") & " District " & GridView1d.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView2.Rows.Count = 0 Then
            lblHeader2.Visible = False
        Else
            lblHeader2.Visible = True
            lblHeader2.Text = Session("distYear") & " District " & GridView2.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView2a.Rows.Count = 0 Then
            lblHeader2a.Visible = False
        Else
            lblHeader2a.Visible = True
            lblHeader2a.Text = Session("distYear") & " District " & GridView2a.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView2d.Rows.Count = 0 Then
            lblHeader2d.Visible = False
        Else
            lblHeader2d.Visible = True
            lblHeader2d.Text = Session("distYear") & " District " & GridView2d.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView3.Rows.Count = 0 Then
            lblHeader3.Visible = False
        Else
            lblHeader3.Visible = True
            lblHeader3.Text = Session("distYear") & " District " & GridView3.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView3d.Rows.Count = 0 Then
            lblHeader3d.Visible = False
        Else
            lblHeader3d.Visible = True
            lblHeader3d.Text = Session("distYear") & " District " & GridView3d.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView4.Rows.Count = 0 Then
            lblHeader4.Visible = False
        Else
            lblHeader4.Visible = True
            lblHeader4.Text = Session("distYear") & " District " & GridView4.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView4d.Rows.Count = 0 Then
            lblHeader4d.Visible = False
        Else
            lblHeader4d.Visible = True
            lblHeader4d.Text = Session("distYear") & " District " & GridView4d.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView5.Rows.Count = 0 Then
            lblHeader5.Visible = False
        Else
            lblHeader5.Visible = True
            lblHeader5.Text = Session("distYear") & " District " & GridView5.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView6.Rows.Count = 0 Then
            lblHeader6.Visible = False
        Else
            lblHeader6.Visible = True
            lblHeader6.Text = Session("distYear") & " District " & GridView6.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView7.Rows.Count = 0 Then
            lblHeader7.Visible = False
        Else
            lblHeader7.Visible = True
            lblHeader7.Text = Session("distYear") & " District " & GridView7.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView7a.Rows.Count = 0 Then
            lblHeader7a.Visible = False
        Else
            lblHeader7a.Visible = True
            lblHeader7a.Text = Session("distYear") & " District " & GridView7a.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView8.Rows.Count = 0 Then
            lblHeader8.Visible = False
        Else
            lblHeader8.Visible = True
            lblHeader8.Text = Session("distYear") & " District " & GridView8.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView9.Rows.Count = 0 Then
            lblHeader9.Visible = False
        Else
            lblHeader9.Visible = True
            lblHeader9.Text = Session("distYear") & " District " & GridView9.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView10.Rows.Count = 0 Then
            lblHeader10.Visible = False
        Else
            lblHeader10.Visible = True
            lblHeader10.Text = Session("distYear") & " District " & GridView10.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView11.Rows.Count = 0 Then
            lblHeader11.Visible = False
        Else
            lblHeader11.Visible = True
            lblHeader11.Text = Session("distYear") & " District " & GridView11.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView12.Rows.Count = 0 Then
            lblHeader12.Visible = False
        Else
            lblHeader12.Visible = True
            lblHeader12.Text = Session("distYear") & " District " & GridView12.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView13.Rows.Count = 0 Then
            lblHeader13.Visible = False
        Else
            lblHeader13.Visible = True
            lblHeader13.Text = Session("distYear") & " District " & GridView13.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView14.Rows.Count = 0 Then
            lblHeader14.Visible = False
        Else
            lblHeader14.Visible = True
            lblHeader14.Text = Session("distYear") & " District " & GridView14.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView15.Rows.Count = 0 Then
            lblHeader15.Visible = False
        Else
            lblHeader15.Visible = True
            lblHeader15.Text = Session("distYear") & " District " & GridView15.Rows(0).Cells(10).Text & " Football Standings"
        End If
        If GridView16.Rows.Count = 0 Then
            lblHeader16.Visible = False
        Else
            lblHeader16.Visible = True
            lblHeader16.Text = Session("distYear") & " District " & GridView16.Rows(0).Cells(10).Text & " Football Standings"
        End If
        'If Me.NamingContainer.ToString.Contains("districts_aspx") Then
        '    Me.hlPrint.Visible = False
        'Else
        '    Me.hlPrint.Visible = True
        'End If

        Try
            clsLog.LogEvent("FOOTBALL", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, RadDropDownListClass.SelectedValue, Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub


    'Private Sub RadDropDownListClass_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownListClass.SelectedIndexChanged
    '    Session("globalSchool") = sender.SelectedValue
    '    Dim intYear As Integer = 0
    '    Try
    '        intYear = CInt(RadDropDownListYear.SelectedValue)
    '    Catch
    '    End Try
    '    Session("distClass") = sender.SelectedValue
    '    'lblSeasonInfo.Text = clsStateChampions.GetSeasonResults(Session("globalState"), Session("globalSport"), Session("globalSchool"), intYear, False)
    'End Sub

    'Private Sub RadDropDownListYear_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListYear.SelectedIndexChanged
    '    Dim intYear As Integer = 0
    '    Try
    '        intYear = CInt(RadDropDownListYear.SelectedValue)
    '    Catch
    '    End Try
    '    Session("distYear") = intYear
    '    'lblSeasonInfo.Text = clsStateChampions.GetSeasonResults(Session("globalState"), Session("globalSport"), Session("globalSchool"), intYear, False)
    'End Sub

    Private Sub GridView1_DataBound(sender As Object, e As EventArgs) Handles GridView1.DataBound
        If GridView1.Rows.Count = 0 Then
            lblHeader1.Visible = False
        Else
            lblHeader1.Visible = True
            lblHeader1.Text = Session("distYear") & " District " & GridView1.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView1d_DataBound(sender As Object, e As EventArgs) Handles GridView1d.DataBound
        If GridView1d.Rows.Count = 0 Then
            lblHeader1d.Visible = False
        Else
            lblHeader1d.Visible = True
            lblHeader1d.Text = Session("distYear") & " District " & GridView1d.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView2_DataBound(sender As Object, e As EventArgs) Handles GridView2.DataBound
        If GridView2.Rows.Count = 0 Then
            lblHeader2.Visible = False
        Else
            lblHeader2.Visible = True
            lblHeader2.Text = Session("distYear") & " District " & GridView2.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView2a_DataBound(sender As Object, e As EventArgs) Handles GridView2a.DataBound
        If GridView2a.Rows.Count = 0 Then
            lblHeader2a.Visible = False
        Else
            lblHeader2a.Visible = True
            lblHeader2a.Text = Session("distYear") & " District " & GridView2a.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView2d_DataBound(sender As Object, e As EventArgs) Handles GridView2d.DataBound
        If GridView2d.Rows.Count = 0 Then
            lblHeader2d.Visible = False
        Else
            lblHeader2d.Visible = True
            lblHeader2d.Text = Session("distYear") & " District " & GridView2d.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView3_DataBound(sender As Object, e As EventArgs) Handles GridView3.DataBound
        If GridView3.Rows.Count = 0 Then
            lblHeader3.Visible = False
        Else
            lblHeader3.Visible = True
            lblHeader3.Text = Session("distYear") & " District " & GridView3.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView3d_DataBound(sender As Object, e As EventArgs) Handles GridView3d.DataBound
        If GridView3d.Rows.Count = 0 Then
            lblHeader3d.Visible = False
        Else
            lblHeader3d.Visible = True
            lblHeader3d.Text = Session("distYear") & " District " & GridView3d.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView4_DataBound(sender As Object, e As EventArgs) Handles GridView4.DataBound
        If GridView4.Rows.Count = 0 Then
            lblHeader4.Visible = False
        Else
            lblHeader4.Visible = True
            lblHeader4.Text = Session("distYear") & " District " & GridView4.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView4d_DataBound(sender As Object, e As EventArgs) Handles GridView4d.DataBound
        If GridView4d.Rows.Count = 0 Then
            lblHeader4d.Visible = False
        Else
            lblHeader4d.Visible = True
            lblHeader4d.Text = Session("distYear") & " District " & GridView4d.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView5_DataBound(sender As Object, e As EventArgs) Handles GridView5.DataBound
        If GridView5.Rows.Count = 0 Then
            lblHeader5.Visible = False
        Else
            lblHeader5.Visible = True
            lblHeader5.Text = Session("distYear") & " District " & GridView5.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView6_DataBound(sender As Object, e As EventArgs) Handles GridView6.DataBound
        If GridView6.Rows.Count = 0 Then
            lblHeader6.Visible = False
        Else
            lblHeader6.Visible = True
            lblHeader6.Text = Session("distYear") & " District " & GridView6.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView7_DataBound(sender As Object, e As EventArgs) Handles GridView7.DataBound
        If GridView7.Rows.Count = 0 Then
            lblHeader7.Visible = False
        Else
            lblHeader7.Visible = True
            lblHeader7.Text = Session("distYear") & " District " & GridView7.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView7a_DataBound(sender As Object, e As EventArgs) Handles GridView7a.DataBound
        If GridView7a.Rows.Count = 0 Then
            lblHeader7a.Visible = False
        Else
            lblHeader7a.Visible = True
            lblHeader7a.Text = Session("distYear") & " District " & GridView7a.Rows(0).Cells(10).Text & " Football Standings"
        End If

    End Sub

    Private Sub GridView8_DataBound(sender As Object, e As EventArgs) Handles GridView8.DataBound
        If GridView8.Rows.Count = 0 Then
            lblHeader8.Visible = False
        Else
            lblHeader8.Visible = True
            lblHeader8.Text = Session("distYear") & " District " & GridView8.Rows(0).Cells(10).Text & " Football Standings"
        End If

    End Sub

    Private Sub GridView9_DataBound(sender As Object, e As EventArgs) Handles GridView9.DataBound
        If GridView9.Rows.Count = 0 Then
            lblHeader9.Visible = False
        Else
            lblHeader9.Visible = True
            lblHeader9.Text = Session("distYear") & " District " & GridView9.Rows(0).Cells(10).Text & " Football Standings"
        End If
    End Sub

    Private Sub GridView10_DataBound(sender As Object, e As EventArgs) Handles GridView10.DataBound
        If GridView10.Rows.Count = 0 Then
            lblHeader10.Visible = False
        Else
            lblHeader10.Visible = True
            lblHeader10.Text = Session("distYear") & " District " & GridView10.Rows(0).Cells(10).Text & " Football Standings"
        End If

    End Sub

    Private Sub GridView11_DataBound(sender As Object, e As EventArgs) Handles GridView11.DataBound
        If GridView11.Rows.Count = 0 Then
            lblHeader11.Visible = False
        Else
            lblHeader11.Visible = True
            lblHeader11.Text = Session("distYear") & " District " & GridView11.Rows(0).Cells(10).Text & " Football Standings"
        End If

    End Sub

    Private Sub GridView12_DataBound(sender As Object, e As EventArgs) Handles GridView12.DataBound
        If GridView12.Rows.Count = 0 Then
            lblHeader12.Visible = False
        Else
            lblHeader12.Visible = True
            lblHeader12.Text = Session("distYear") & " District " & GridView12.Rows(0).Cells(10).Text & " Football Standings"
        End If

    End Sub

    Private Sub GridView13_DataBound(sender As Object, e As EventArgs) Handles GridView13.DataBound
        If GridView13.Rows.Count = 0 Then
            lblHeader13.Visible = False
        Else
            lblHeader13.Visible = True
            lblHeader13.Text = Session("distYear") & " District " & GridView13.Rows(0).Cells(10).Text & " Football Standings"
        End If

    End Sub

    Private Sub GridView14_DataBound(sender As Object, e As EventArgs) Handles GridView14.DataBound
        If GridView14.Rows.Count = 0 Then
            lblHeader14.Visible = False
        Else
            lblHeader14.Visible = True
            lblHeader14.Text = Session("distYear") & " District " & GridView14.Rows(0).Cells(10).Text & " Football Standings"
        End If

    End Sub

    Private Sub GridView15_DataBound(sender As Object, e As EventArgs) Handles GridView15.DataBound
        If GridView15.Rows.Count = 0 Then
            lblHeader15.Visible = False
        Else
            lblHeader15.Visible = True
            lblHeader15.Text = Session("distYear") & " District " & GridView15.Rows(0).Cells(10).Text & " Football Standings"
        End If

    End Sub

    Private Sub GridView16_DataBound(sender As Object, e As EventArgs) Handles GridView16.DataBound
        If GridView16.Rows.Count = 0 Then
            lblHeader16.Visible = False
        Else
            lblHeader16.Visible = True
            lblHeader16.Text = Session("distYear") & " District " & GridView16.Rows(0).Cells(10).Text & " Football Standings"
        End If

    End Sub

    Private Sub RadDropDownListClass_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownListClass.SelectedIndexChanged
        Session("globalSchool") = sender.SelectedValue
        Dim intYear As Integer = 0
        Try
            intYear = CInt(RadDropDownListYear.SelectedValue)
        Catch
        End Try
        Session("distClass") = sender.SelectedValue
    End Sub

    Private Sub RadDropDownListYear_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownListYear.SelectedIndexChanged
        Dim intYear As Integer = 0
        Try
            intYear = CInt(RadDropDownListYear.SelectedValue)
        Catch
        End Try
        Session("distYear") = intYear
        RadDropDownListClass.DataBind()
    End Sub
End Class