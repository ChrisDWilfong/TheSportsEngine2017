Imports Telerik.Web.UI
Imports aspnetforum.Utils
'Imports Jitbit.Utils
'Imports aspnetforum.ForumPage
Imports System.Data
Imports System.Data.Common

Public Class ucSportsPageC

    Inherits System.Web.UI.UserControl

    Public _topicID As Integer
    Public _forumTitle As String
    Public Shared _forumID As Integer
    Dim _isModerator As Boolean
    Public _premoderated As Boolean
    Public _currentUserId As Long
    Public ModeratorCount As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strHTML As String = ""
        Dim strSQL As String = ""
        Dim ds As DataSet
        Dim x As Integer = 0

        If Request.QueryString("id") Is Nothing Then
            Session("globalSportGenderKey") = ""
            Session("globalClass") = ""
            Session("globalYear") = 0
            Session("globalid") = 0
        Else
            Dim id As Long = Request.QueryString("id")
            Session("globalid") = id
            clsStateChampions.GetStateChampionInfoFromID(id, Session("globalState"), Session("globalSportGenderKey"), Session("globalYear"), Session("globalClass"))
        End If

        ' FORUM INFO...
        If Request.QueryString("TopicID") IsNot System.DBNull.Value Then
            _topicID = CInt(Request.QueryString("TopicID"))
        End If

        If Request.QueryString("ForumID") IsNot System.DBNull.Value Then
            _forumID = CInt(Request.QueryString("ForumID"))
        End If

        _currentUserId = aspnetforum.Utils.User.CurrentUserID

        If _currentUserId = 0 Then
            rowQuickReply.Visible = False
        Else
            rowQuickReply.Visible = True
        End If

        If _topicID > 0 Then
            Dim strSQLF As String = "Select ForumMessages.Body, ForumUsers.UserName, ForumMessages.CreationDate From ForumMessages LEFT Join ForumUsers On ForumUsers.UserID=ForumMessages.UserID Where ForumMessages.TopicID = " & _topicID & " And ForumMessages.Visible <> 0 Order By ForumMessages.CreationDate DESC"
            Dim dsF As DataSet
            dsF = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionFORUM, CommandType.Text, strSQLF)
            rptMessages.DataSource = dsF
            rptMessages.DataBind()
        End If
        ' ==========================================================================

        Try
            Session("globalFacebook") = GetFacebook(Session("globalid"))     ' Added 6/6/2018...
        Catch
        End Try
        rowTitleTalk.Visible = True
        Session("globalKey") = clsStateChampions.GetStateChampionIDKey(Session("globalState"), Session("globalSportGenderKey"), Session("globalYear"), Session("globalClass"), "")
        Session("globalSchool") = clsStateChampions.GetSportsPageHeaderInfo(Session("globalKey"), lblHeaderDate.Text, lblResults.Text)

        ' Get the ROAD TO THE TITLE...
        columnRoadToTheTitle.Visible = True
        Dim strSportGenderKey As String = Session("globalSportGenderKey")
        If strSportGenderKey.Contains("Basketball") Then
            strSQL = "SELECT strText, strRound FROM __viewtblBASKETBALLTOURNAMENTimport WHERE strWinner = '" & Session("globalSchool") & "' AND intYear = " & Session("globalYear") & " AND strClass = '" & Session("globalClass") & "' AND strSportGenderKey = '" & Session("globalSportGenderKey") & "'"
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
            strSQL = clsStateChampions.GetStateGames("OK", "Football", Session("globalSchool"), Session("globalYear"))
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            If ds Is Nothing Then
            ElseIf ds.Tables.Count = 0 Then
            ElseIf ds.Tables(0).Rows.Count = 0 Then
            Else
                For x = 0 To ds.Tables(0).Rows.Count - 1
                    strHTML = strHTML & ds.Tables(0).Rows(x).Item("strDisplay") & "<br>"
                Next
            End If
            lblR2TDetail.Text = strHTML
        ElseIf strSportGenderKey.Contains("SPSoftball") Then
            strSQL = clsStateChampions.GetStateGames("OK", "SPSoftball", Session("globalSchool"), Session("globalYear"))
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            If ds Is Nothing Then
            ElseIf ds.Tables.Count = 0 Then
            ElseIf ds.Tables(0).Rows.Count = 0 Then
            Else
                For x = 0 To ds.Tables(0).Rows.Count - 1
                    strHTML = strHTML & ds.Tables(0).Rows(x).Item("strDisplay") & "<br>"
                Next
            End If
            lblR2TDetail.Text = strHTML
        ElseIf strSportGenderKey.Contains("BaseballFall") Then
            strSQL = "SELECT strDisplayRound FROM IWATGview_BaseballFall_StateTournamentGames_ALL WHERE strWinner = '" & Session("globalSchool") & "' AND intYear = " & Session("globalYear") & " AND strClass = '" & Session("globalClass") & "' AND strSportGenderKey = '" & Session("globalSportGenderKey") & "'"
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
            strSQL = "SELECT strDisplayRound FROM IWATGview_Baseball_StateTournamentGames_ALL WHERE strWinner = '" & Session("globalSchool") & "' AND intYear = " & Session("globalYear") & " AND strClass = '" & Session("globalClass") & "' AND strSportGenderKey = '" & Session("globalSportGenderKey") & "'"
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
        intPhotoCount = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM viewStateChampionsImages WHERE idstrStateChampion = '" & Session("globalKey") & "' OR idStateChampion = " & Session("globalid"))
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

    Protected Sub RadImageGallery2_NeedDataSource1(sender As Object, e As ImageGalleryNeedDataSourceEventArgs)
        RadImageGallery2.DataSource = GetDataTable()
    End Sub

    Private Sub ucSportsPage_DataBinding(sender As Object, e As EventArgs) Handles Me.DataBinding
    End Sub

    Public Function GetFacebook(id As Long) As String
        Dim strString As String = ""
        Select Case Session("globalState")
            Case "MI", "IL", "TX"
                strString = "<div class='fb-comments' data-href='http://www.ListOfChampions.com/SportsPage.aspx?id=" & id & "' data-width='600' data-numposts='10'></div>"
            Case Else
                strString = "<div class='fb-comments' data-href='http://www.iwasatthegame.com/SportsPage.aspx?id=" & id & "' data-width='600' data-numposts='10'></div>"
                'strString = "<div class='fb-comments' data-href='http://www.iwasatthegame.com/SportsPage.aspx' data-width='600' data-numposts='10'></div>"
        End Select
        Return strString
    End Function

    Public Shared Function GetPostClassName(ByVal isAccepted As Object) As String
        If isAccepted IsNot Nothing AndAlso Not (TypeOf isAccepted Is DBNull) AndAlso Convert.ToBoolean(isAccepted) Then Return "acceptedAnswer"
        Return ""
    End Function

    Public Shared Function RenderMsgRating(ByVal messageId As Object, ByVal rating As Object) As String
        Dim sign As String = ""
        Dim retval As StringBuilder = New StringBuilder()
        retval.Append("<span id='spanRating")
        retval.Append(messageId)
        retval.Append("' title='This message has been rated by users' ")

        If rating IsNot Nothing AndAlso Not (TypeOf rating Is DBNull) Then
            Dim iRating As Integer = Convert.ToInt32(rating)

            If iRating <> 0 Then
                Dim color As String = If((iRating < 0), "red", "green")
                retval.Append(" style='color:")
                retval.Append(color)
                retval.Append("'")
            End If

            If iRating > 0 Then sign = "+"
        End If

        retval.Append(">")
        retval.Append(sign)
        retval.Append(rating)
        retval.Append("</span>")
        Return retval.ToString()
    End Function


    Private Sub btnQuickReply_Click(sender As Object, e As EventArgs) Handles btnQuickReply.Click
        Dim Cn As DbConnection
        Cn = DB.CreateOpenConnection

        Dim WhoAmI As String = cboWhoAmI.SelectedValue
        If WhoAmI = "" Then Return
        Dim msg As String = tbQuickReply.Text.Trim()
        If msg = "" Then Return
        msg = msg.Replace("<", "&lt;").Replace(">", "&gt;")

        Dim openConn As Boolean = (Cn.State = ConnectionState.Open)
        If Not openConn Then cn.Open()

        Dim messageId As Integer = aspnetforum.Utils.Message.AddMessage(Cn, _topicID, msg, Not _premoderated OrElse _isModerator, aspnetforum.Utils.Various.GetUserIpAddress(Request), False, WhoAmI)
        Cn.Close()

        Response.Redirect(Request.RawUrl)

    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As EventArgs)

        If aspnetforum.Utils.User.IsCurrentUserModerator() Then
            ModeratorCount = ModeratorStats.GetComplaintsCount() + ModeratorStats.GetUnapprovedMsgsCount()
        End If

        Dim integratedAuthEnabled As Boolean = aspnetforum.Utils.Settings.IntegratedAuthentication

        If aspnetforum.Utils.User.CurrentUserID = 0 Then
            If logoutLink IsNot Nothing Then logoutLink.Visible = False
            If viewProfileLink IsNot Nothing Then viewProfileLink.Visible = False
            If loginTable IsNot Nothing Then loginTable.Visible = Not integratedAuthEnabled AndAlso ShowLoginTable
            If curuserTable IsNot Nothing Then curuserTable.Visible = False
            '''''If usersLink IsNot Nothing Then usersLink.Visible = False
            If aOpenId IsNot Nothing Then aOpenId.Visible = aspnetforum.Utils.Settings.EnableOpenId
            If aTwitter IsNot Nothing Then aTwitter.Visible = Not String.IsNullOrEmpty(aspnetforum.Utils.Settings.TwitterConsumerKey) AndAlso Not String.IsNullOrEmpty(Utils.Settings.TwitterConsumerSecret)
            If aFacebook IsNot Nothing Then aFacebook.Visible = Not String.IsNullOrEmpty(aspnetforum.Utils.Settings.FacebookAppID) AndAlso Not String.IsNullOrEmpty(Utils.Settings.FacebookAppSecret)
        Else
            If logoutLink IsNot Nothing Then logoutLink.Visible = Not integratedAuthEnabled
            If loginTable IsNot Nothing Then loginTable.Visible = False
            If curuserTable IsNot Nothing Then curuserTable.Visible = ShowLoginTable
            If usersLink IsNot Nothing Then usersLink.Visible = True

            If viewProfileLink IsNot Nothing Then
                viewProfileLink.Visible = True
                Dim username As String

                If TypeOf Page.User Is System.Security.Principal.WindowsPrincipal AndAlso aspnetforum.Utils.Settings.IntegratedAuthentication Then
                    username = Session("aspnetforumUserName").ToString()
                    username = username.Substring(username.IndexOf("\") + 1)
                Else
                    username = Session("aspnetforumUserName").ToString()
                End If

                viewProfileLink.InnerHtml = username
                viewProfileLink.HRef = "viewprofile.aspx?UserID=" & Utils.User.CurrentUserID.ToString()
            End If

            cn.Open()
            Dim unreadPrivateMsgs As Integer = GetUnreadPersonalMessagesCount()
            Dim avatarPath As String = aspnetforum.Utils.User.GetCurrUserAvatarImagePath(cn)
            cn.Close()
            If imgAvatar IsNot Nothing Then imgAvatar.Src = avatarPath

            If spanNumMsgs IsNot Nothing Then
                spanNumMsgs.InnerHtml = unreadPrivateMsgs.ToString()
                If unreadPrivateMsgs > 0 Then spanNumMsgs.Style("font-weight") = "bold"
            End If

            If spanNumUnreadThreads IsNot Nothing Then
                spanNumUnreadThreads.InnerHtml = GetUpdatedThreadCount().ToString()
            End If
        End If

        adminLink.Visible = aspnetforum.Utils.User.IsAdministrator(aspnetforum.Utils.User.CurrentUserID) AndAlso adminLink IsNot Nothing
        If Not aspnetforum.Utils.Settings.DisableAchievements Then Achievements.RegisterNewAchievements(Page)
    End Sub
End Class