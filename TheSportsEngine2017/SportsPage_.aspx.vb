﻿Imports Telerik.Web.UI

Public Class SportsPage_
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strHTML As String = ""
        Dim strSQL As String = ""
        Dim ds As DataSet
        Dim x As Integer = 0

        If Request.QueryString("id") Is Nothing Then
            Session("globalSportGenderKey") = "BasketballBoys"
            Session("globalClass") = "C"
            Session("globalState") = "OK"
            Session("globalYear") = 1966
            Session("globalid") = 0
        Else
            Dim id As Long = Request.QueryString("id")
            Session("globalid") = id
            clsStateChampions.GetStateChampionInfoFromID(id, Session("globalState"), Session("globalSportGenderKey"), Session("globalYear"), Session("globalClass"))
            Session("globalFacebook") = GetFacebook(id)
        End If

        Session("globalKey") = clsStateChampions.GetStateChampionIDKey(Session("globalState"), Session("globalSportGenderKey"), Session("globalYear"), Session("globalClass"), "")
        Session("globalSchool") = clsStateChampions.GetSportsPageHeaderInfo(Session("globalKey"), lblHeaderDate.Text, lblResults.Text)

        ' Get the ROAD TO THE TITLE...
        columnRoadToTheTitle.Visible = True
        Dim strSportGenderKey As String = Session("globalSportGenderKey")
        If strSportGenderKey.Contains("Basketball") Then
            strSQL = "SELECT strText, strRound FROM __viewtblBASKETBALLTOURNAMENTimport WHERE (strWinner = '" & Session("globalSchool") & "' OR strWinnerKey = '" & Session("globalSchool") & "') AND intYear = " & Session("globalYear") & " AND strClass = '" & Session("globalClass") & "' AND strSportGenderKey = '" & Session("globalSportGenderKey") & "'"
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            If ds Is Nothing Then
            ElseIf ds.Tables.Count = 0 Then
            ElseIf ds.Tables(0).Rows.Count = 0 Then
            Else
                For x = 0 To ds.Tables(0).Rows.Count - 1
                    strHTML = strHTML & ds.Tables(0).Rows(x).Item("strRound") & " : " & UCase(ds.Tables(0).Rows(x).Item("strText")) & "<br>"
                Next
            End If
            lblR2TDetail.Text = strHTML
        ElseIf strSportGenderKey.Contains("Football") Then

        ElseIf strSportGenderKey.Contains("SPSoftball") Then
        ElseIf strSportGenderKey.Contains("BaseballFall") Then
            strSQL = "SELECT strDisplayRound FROM IWATGview_BaseballFall_StateTournamentGames_ALL WHERE (strWinner = '" & Session("globalSchool") & "' OR strWinnerKey = '" & Session("globalSchool") & "') AND intYear = " & Session("globalYear") & " AND strClass = '" & Session("globalClass") & "' AND strSportGenderKey = '" & Session("globalSportGenderKey") & "'"
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            If ds Is Nothing Then
            ElseIf ds.Tables.Count = 0 Then
            ElseIf ds.Tables(0).Rows.Count = 0 Then
            Else
                For x = 0 To ds.Tables(0).Rows.Count - 1
                    strHTML = strHTML & ds.Tables(0).Rows(x).Item("strDisplayRound") & "<br>"
                Next
            End If
            lblR2TDetail.Text = strHTML
        ElseIf strSportGenderKey.Contains("Baseball") Then
            strSQL = "SELECT strDisplayRound FROM IWATGview_Baseball_StateTournamentGames_ALL WHERE (strWinner = '" & Session("globalSchool") & "' OR strWinnerKey = '" & Session("globalSchool") & "') AND intYear = " & Session("globalYear") & " AND strClass = '" & Session("globalClass") & "' AND strSportGenderKey = '" & Session("globalSportGenderKey") & "'"
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            If ds Is Nothing Then
            ElseIf ds.Tables.Count = 0 Then
            ElseIf ds.Tables(0).Rows.Count = 0 Then
            Else
                For x = 0 To ds.Tables(0).Rows.Count - 1
                    strHTML = strHTML & ds.Tables(0).Rows(x).Item("strDisplayRound") & "<br>"
                Next
            End If
            lblR2TDetail.Text = strHTML
        Else
            columnRoadToTheTitle.Visible = False
        End If

        ' Are there photos?
        Dim intPhotoCount As Integer = 0
        intPhotoCount = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM viewStateChampionsImages WHERE idstrStateChampion = '" & Session("globalKey") & "'")
        If intPhotoCount > 0 Then
            rowPhotos.Visible = True
            rowPhotos1.Visible = True
        Else
            rowPhotos.Visible = False
            rowPhotos1.Visible = False
        End If

    End Sub

    Private Sub RadGrid1_DataBound(sender As Object, e As EventArgs) Handles RadGrid1.DataBound
        'If sender.items.count = 0 Then
        '    rowArticles.Visible = False
        'Else
        '    rowArticles.Visible = True
        'End If
    End Sub

    Public Function GetDataTable() As DataSet
        Dim strSQL As String = "SELECT DISTINCT Id, IdStateChampion, strImage, intSort, strAltText, strSubfolder, intYear, ysnActive, strSportGenderKey, strImageURL FROM viewStateChampionsImages WHERE IdStateChampion = " & Session("globalid") & " ORDER BY intSort"
        Dim ds As DataSet
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        Return ds
    End Function

    Protected Sub RadImageGallery2_NeedDataSource(sender As Object, e As ImageGalleryNeedDataSourceEventArgs)
        RadImageGallery2.DataSource = GetDataTable()
    End Sub

    Public Function GetFacebook(id As Long) As String
        Dim strString As String = ""
        strString = "<div class='fb-comments' data-href='http://www.iwasatthegame.com/StateChampionshipsBySchool.aspx?id=" & id & "' data-width='500' data-numposts='10'></div>"
        Return strString
    End Function
End Class