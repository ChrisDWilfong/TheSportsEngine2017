Public Class clsMenuItems

    Public Shared Function ImageURL() As String
        'Return "http://www.statechampionshipsearch.com/data"
        Return "http://www.iwasatthegame.com/data"
    End Function

    Public Shared Function LoadListOfArticles(ByVal objSchoolArticles As String, ByVal idQueryString As Object, ByVal idIn As Object) As String
        Dim strSQL As String = ""

        'Dim objSchoolArticles As Object
        'objSchoolArticles = Page.FindControl("ctl00$ContentPlaceHolder1$ContentRightHeader1$ContentRightDetail1$panelLatestArticles$cboSchoolArticles")

        '        If Session("Id") Is Nothing Then
        If objSchoolArticles = "Latest Articles..." Then
            'strSQL = "SELECT TOP (12) 'xfer.aspx?url=' + CONVERT(varchar(10), tblStateChampionsArticles.Id) AS [strURL], '- ' + tblStateChampionsArticles.strSource + ' (' + CONVERT(varchar(15), tblStateChampionsArticles.dtmArticleDate, 101) + ')' AS [strFooter], "
            'strSQL = strSQL & "tblStateChampionsArticles.strTitle, tblStateChampionsArticles.dtmArticleDate, tblStateChampionsArticles.strType, "
            'strSQL = strSQL & "tblStateChampions.strSportGenderKey, tblStateChampions.intYear, "
            'strSQL = strSQL & "tblStateChampions.strSchool FROM tblStateChampionsArticles INNER JOIN tblStateChampions ON tblStateChampionsArticles.idStateChampion = tblStateChampions.Id "
            'strSQL = strSQL & "WHERE tblStateChampionsArticles.intShowLatest <> 0 AND tblStateChampionsArticles.idStateChampion <> 0 ORDER BY tblStateChampionsArticles.dtmArticleDate DESC"
            'strSQL = strSQL & "WHERE (tblStateChampionsArticles.intShowLatest <> 0 AND tblStateChampionsArticles.strSource = 'IWasAtTheGame.com') AND tblStateChampionsArticles.idStateChampion <> 0 ORDER BY tblStateChampionsArticles.dtmArticleDate DESC"
            strSQL = "SELECT TOP (12) * FROM viewLatestArticlesOK ORDER BY dtmStamp DESC"

        ElseIf objSchoolArticles <> "" And objSchoolArticles <> "Select School..." Then
            strSQL = "SELECT 'xfer.aspx?url=' + CONVERT(varchar(10), tblStateChampionsArticles.Id) AS [strURL], '- ' + tblStateChampionsArticles.strSource + ' (' + CONVERT(varchar(15), tblStateChampionsArticles.dtmArticleDate, 101) + ')' AS [strFooter], "
            strSQL = strSQL & "tblStateChampionsArticles.strTitle, tblStateChampionsArticles.dtmArticleDate, tblStateChampionsArticles.strType, "
            strSQL = strSQL & "tblStateChampions.strSportGenderKey, tblStateChampions.intYear, "
            strSQL = strSQL & "tblStateChampions.strSchool FROM tblStateChampionsArticles INNER JOIN tblStateChampions ON tblStateChampionsArticles.idStateChampion = tblStateChampions.Id "
            strSQL = strSQL & "WHERE tblStateChampions.strSchool = '" & objSchoolArticles & "' AND tblStateChampionsArticles.idStateChampion <> 0 AND NOT strURL Like '%oliveweb%' ORDER BY tblStateChampionsArticles.dtmArticleDate DESC"
        Else
            If idQueryString Is Nothing And idIn Is Nothing Then
            Else
                Dim id As Integer = 0

                id = idIn
                If id = 0 Then
                    id = idQueryString
                End If

                strSQL = "SELECT 'xfer.aspx?url=' + CONVERT(varchar(10), tblStateChampionsArticles.Id) AS [strURL], '- ' + tblStateChampionsArticles.strSource + ' (' + CONVERT(varchar(15), tblStateChampionsArticles.dtmArticleDate, 101) + ')' AS [strFooter], "
                strSQL = strSQL & "tblStateChampionsArticles.strTitle, tblStateChampionsArticles.dtmArticleDate, tblStateChampionsArticles.strType, "
                strSQL = strSQL & "tblStateChampions.strSportGenderKey, tblStateChampions.intYear, "
                strSQL = strSQL & "tblStateChampions.strSchool FROM tblStateChampionsArticles INNER JOIN tblStateChampions ON tblStateChampionsArticles.idStateChampion = tblStateChampions.Id "
                strSQL = strSQL & "WHERE tblStateChampionsArticles.idStateChampion = " & id & " AND tblStateChampionsArticles.idStateChampion <> 0 AND NOT strURL Like '%oliveweb%' ORDER BY tblStateChampionsArticles.dtmArticleDate DESC"
            End If
        End If

        Return strSQL

    End Function

    Public Shared Function GetYearArticles(ByVal id As Long, ByVal objServer As Object, ByVal strHeader As String, ByVal strSource As String, ByVal strOSSAAPictures As String, strResults As String) As String
        ' Called :
        '   - To Process button click and get Year Articles (from IStateChampions.aspx)

        Dim strArticles As String = ""
        Dim strTitle As String = ""
        Dim strURL As String = ""
        Dim x As Integer
        Dim objArticleDate As Object

        'If strOSSAAPictures = "" Then
        '    If strHeader = "" Then
        '        strArticles = "<tr style='background-color: Red; color: yellow; font-family: Arial; font-size: 16px;'><td>&nbsp;Articles</td></tr>"
        '    Else
        '        strArticles = "<tr style='background-color: Red; color: yellow; font-family: Verdana; font-size: 12px;'><td>&nbsp;" & strHeader & "</td></tr>"
        '    End If
        '    strArticles = strArticles & "<tr style='color: Navy; font-family: Verdana; font-size: 11px;'><td>&nbsp;- No Articles Currently Available</td></tr>"
        '    Return strArticles
        '    Exit Function
        'End If

        If id = 0 Then

        Else
            Dim strSQL As String
            Dim ds As DataSet
            'strSQL = "SELECT * FROM tblStateChampionsArticles WHERE IdStateChampion = " & id & " And (strSource = 'Daily Oklahoman' OR strSource = 'OSSAA' Or strSource = 'IWasAtTheGame.com') ORDER BY dtmArticleDate DESC, dtmStamp"
            strSQL = "SELECT * FROM tblStateChampionsArticles WHERE IdStateChampion = " & id & " And (strSource = 'Daily Oklahoman' OR strSource = 'OSSAA') AND NOT strURL Like '%oliveweb%' ORDER BY dtmArticleDate DESC, dtmStamp"
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

            If strHeader = "" Then
                strArticles = "<tr style='background-color: Red; color: yellow; font-family: Arial; font-size: 16px;'><td>&nbsp;Articles</td></tr>"
            Else
                strArticles = "<tr style='background-color: Red; color: yellow; font-family: Verdana; font-size: 11px;'><td>&nbsp;" & strHeader & "</td></tr>"
            End If

            If ds Is Nothing Then
                If strOSSAAPictures = "" Then
                    strArticles = strArticles & "<tr style='color: Navy; font-family: Verdana; font-size: 11px;'><td>&nbsp;- No Articles Currently Available</td></tr>"
                Else
                    strTitle = "OSSAA Bulletin"
                End If
            ElseIf ds.Tables.Count = 0 Then
                If strOSSAAPictures = "" Then
                    strArticles = strArticles & "<tr style='color: Navy; font-family: Verdana; font-size: 11px;'><td>&nbsp;- No Articles Currently Available</td></tr>"
                Else
                    strTitle = "OSSAA Bulletin"
                End If
            ElseIf ds.Tables(0).Rows.Count = 0 Then
                If strOSSAAPictures = "" Then
                    strArticles = strArticles & "<tr style='color: Navy; font-family: Verdana; font-size: 11px;'><td>&nbsp;- No Articles Currently Available</td></tr>"
                Else
                    strTitle = "OSSAA Bulletin"
                End If
            Else

                For x = 0 To ds.Tables(0).Rows.Count - 1
                    Try
                        If strSource = "" Then
                            strURL = "xfer.aspx?url=" & ds.Tables(0).Rows(x).Item("Id")
                        Else
                            strURL = "xfer.aspx?url=" & ds.Tables(0).Rows(x).Item("Id") & "&src=" & strSource
                        End If
                    Catch ex As Exception
                        strURL = ""
                    End Try
                    If ds.Tables(0).Rows(x).Item("strSource") = "OSSAA" And (ds.Tables(0).Rows(x).Item("strType") <> "Link" And ds.Tables(0).Rows(x).Item("strType") <> "Bracket" And ds.Tables(0).Rows(x).Item("strType") <> "Brackets") Then
                        ' Get the new URL...
                        strURL = GetArticleHTML(ds.Tables(0).Rows(x).Item("Id"), objServer)
                    End If
                    Try
                        If ds.Tables(0).Rows(x).Item("strSource") = "IWasAtTheGame.com" Then
                            strTitle = ds.Tables(0).Rows(x).Item("strTitle")
                        ElseIf ds.Tables(0).Rows(x).Item("strType") = "On-Line Article" Then
                            strTitle = ds.Tables(0).Rows(x).Item("strSource") & " On-Line Article" & " <i>(" & Format(ds.Tables(0).Rows(x).Item("dtmArticleDate"), "MM/dd/yyyy") & ")</i>"
                        ElseIf ds.Tables(0).Rows(x).Item("strType") = "Link" Then
                            strTitle = ds.Tables(0).Rows(x).Item("strSource") & " Website" & " <i>(" & Format(ds.Tables(0).Rows(x).Item("dtmArticleDate"), "MM/dd/yyyy") & ")</i>"
                        ElseIf ds.Tables(0).Rows(x).Item("strType") = "Bracket" Or ds.Tables(0).Rows(x).Item("strType") = "Brackets" Then
                            If ds.Tables(0).Rows(x).Item("strTitle") Is System.DBNull.Value Then
                                strTitle = ds.Tables(0).Rows(x).Item("strSource") & " Website" & " <i>(" & Format(ds.Tables(0).Rows(x).Item("dtmArticleDate"), "MM/dd/yyyy") & ")</i>"
                            Else
                                strTitle = ds.Tables(0).Rows(x).Item("strTitle") & " <i>(" & Format(ds.Tables(0).Rows(x).Item("dtmArticleDate"), "MM/dd/yyyy") & ")</i>"
                            End If
                        Else
                            If ds.Tables(0).Rows(x).Item("strTitle") Is System.DBNull.Value Then
                                strTitle = ds.Tables(0).Rows(x).Item("strSource") & " Newspaper Article" & " <i>(" & Format(ds.Tables(0).Rows(x).Item("dtmArticleDate"), "MM/dd/yyyy") & ")</i>"
                            Else
                                strTitle = ds.Tables(0).Rows(x).Item("strTitle")
                            End If
                        End If
                    Catch ex As Exception
                        strTitle = ""
                    End Try
                    If ds.Tables(0).Rows(x).Item("dtmArticleDate") Is System.DBNull.Value Then

                    Else
                        ' Should we put a header???
                        If objArticleDate <> ds.Tables(0).Rows(x).Item("dtmArticleDate") Then
                            strArticles = strArticles & "<tr><td><span style='color:White;font-family:Arial;font-size:14px;'>Headlines for " & Format(ds.Tables(0).Rows(x).Item("dtmArticleDate"), "MM/dd/yyyy") & "</span></td></tr>"
                        End If
                        objArticleDate = ds.Tables(0).Rows(x).Item("dtmArticleDate")
                    End If
                    ' Add the Article...
                    strArticles = strArticles & "<tr><td>- <a href='" & strURL & "' target='_blank'><span style='color: Navy;'>" & strTitle & "</span></a></td></tr>"
                Next
            End If
        End If

        ' Added 5/7/2013...
        ' Now add the Picture control..
        Dim strURL1 As String = System.Configuration.ConfigurationSettings.AppSettings("siteURLImagesOSSAA")
        Dim strSQL1 As String
        Dim ds1 As DataSet
        strSQL1 = "SELECT strImage FROM tblStateChampionsImages WHERE IdStateChampion = " & id & " AND strSubFolder Like 'OSSAA%'"
        ds1 = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL1)

        If ds1 Is Nothing Then
        ElseIf ds1.Tables.Count = 0 Then
        ElseIf ds1.Tables(0).Rows.Count = 0 Then
        Else
            'For x = 0 To ds1.Tables(0).Rows.Count - 1
            strURL1 = "ShowPix.aspx?id=" & id & "&title=" & strResults
            strTitle = "Additional pictures and trophy case"
            strArticles = strArticles & "<tr><td>- <a href='" & strURL1 & "' target='_blank'><span style='color: Navy;font-size:14px;'>" & strTitle & "</span></a></td></tr>"
            'Next
        End If


        ' Now add the OSSAA Pictures Article???
        ' ''If strOSSAAPictures = "" Then
        ' ''Else
        ' ''    If strTitle = "" Then
        ' ''        strArticles = strArticles & "<tr><td><span style='color: Navy;'>No Articles Currently Available.</span></td></tr>"
        ' ''    Else
        ' ''        strURL = "xfer.aspx?url=" & strOSSAAPictures
        ' ''        strTitle = "OSSAA Bulletin"
        ' ''        strArticles = strArticles & "<tr><td>- <a href='" & strURL & "' target='_blank'><span style='color: Navy;'>" & strTitle & "</span></a></td></tr>"
        ' ''    End If
        ' ''End If

        Return strArticles

    End Function

    Public Shared Sub PopulateNewsBulletedList(ByRef objBulletedList As BulletedList, ByVal id As Integer, ByVal objServer As Object, ByVal ysnLatest As Boolean, ByVal strSchool As String)

        ' Removed when ListView was added...
        Exit Sub

        ' Clear existing bulleted list...
        objBulletedList.Items.Clear()

        Dim ds As DataSet
        Dim strSQL As String
        Dim x As Integer
        Dim objArticleDate As Object = DateTime.Now

        If ysnLatest Then
            strSQL = "SELECT TOP (13) tblStateChampionsArticles.*, tblStateChampions.intYear, tblStateChampions.strSchool, tblSports.strSportKey "
            strSQL = strSQL & "FROM tblSports INNER JOIN "
            strSQL = strSQL & "tblStateChampions ON tblSports.strSportGenderKey = tblStateChampions.strSportGenderKey INNER JOIN "
            strSQL = strSQL & "tblStateChampionsArticles ON tblStateChampions.Id = tblStateChampionsArticles.idStateChampion "
            strSQL = strSQL & "WHERE tblStateChampionsArticles.intShowLatest <> 0 AND NOT tblStateChampionsArticles.strURL Like '%oliveweb%' "
            strSQL = strSQL & "ORDER BY tblStateChampionsArticles.dtmStamp DESC"

        ElseIf strSchool <> "" Then
            strSQL = "SELECT tblStateChampionsArticlesLocal.*, tblStateChampions.intYear, tblStateChampions.strSchool, tblSports.strSportKey "
            strSQL = strSQL & "FROM tblSports INNER JOIN "
            strSQL = strSQL & "tblStateChampions ON tblSports.strSportGenderKey = tblStateChampions.strSportGenderKey INNER JOIN "
            strSQL = strSQL & "tblStateChampionsArticlesLocal ON tblStateChampions.Id = tblStateChampionsArticlesLocal.idStateChampion "
            strSQL = strSQL & "WHERE dbo.tblStateChampions.strSchool = '" & strSchool & "' AND dbo.tblStateChampions.strState = 'OK' AND tblStateChampionsArticlesLocal.strSource = 'IWasAtTheGame Images' "
            strSQL = strSQL & "UNION "
            strSQL = strSQL & "SELECT tblStateChampionsArticles.*, tblStateChampions.intYear, tblStateChampions.strSchool, tblSports.strSportKey "
            strSQL = strSQL & "FROM tblSports INNER JOIN "
            strSQL = strSQL & "tblStateChampions ON tblSports.strSportGenderKey = tblStateChampions.strSportGenderKey INNER JOIN "
            strSQL = strSQL & "tblStateChampionsArticles ON tblStateChampions.Id = tblStateChampionsArticles.idStateChampion "
            strSQL = strSQL & "WHERE dbo.tblStateChampions.strSchool = '" & strSchool & "' AND dbo.tblStateChampions.strState = 'OK' "
            strSQL = strSQL & "ORDER BY dtmArticleDate DESC, dtmStamp DESC"

        Else
            strSQL = "SELECT tblStateChampionsArticles.*, tblStateChampions.intYear, tblStateChampions.strSchool, tblStateChampions.strClass, tblStateChampions.strResults, tblSports.strSportKey "
            strSQL = strSQL & "FROM tblStateChampionsArticles INNER JOIN "
            strSQL = strSQL & "tblStateChampions ON tblStateChampionsArticles.idStateChampion = tblStateChampions.Id "
            strSQL = strSQL & "INNER JOIN tblSports ON tblStateChampions.strSportGenderKey = tblSports.strSportGenderKey "
            strSQL = strSQL & "WHERE idStateChampion = " & id & " AND NOT tblStateChampionsArticles.strURL Like '%oliveweb%' "
            strSQL = strSQL & "ORDER BY tblStateChampionsArticles.dtmArticleDate DESC"
        End If

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
            objBulletedList.DisplayMode = BulletedListDisplayMode.Text
            Dim objListItem As New System.Web.UI.WebControls.ListItem
            objListItem.Text = "No articles currently available"
            objBulletedList.Items.Add(objListItem)
        ElseIf ds.Tables.Count = 0 Then
            objBulletedList.DisplayMode = BulletedListDisplayMode.Text
            Dim objListItem As New System.Web.UI.WebControls.ListItem
            objListItem.Text = "No articles currently available"
            objBulletedList.Items.Add(objListItem)
        ElseIf ds.Tables(0).Rows.Count = 0 Then
            objBulletedList.DisplayMode = BulletedListDisplayMode.Text
            Dim objListItem As New System.Web.UI.WebControls.ListItem
            objListItem.Text = "No articles currently available"
            objBulletedList.Items.Add(objListItem)
        Else
            ' Set the properties...
            objBulletedList.BulletStyle = BulletStyle.Circle
            objBulletedList.DisplayMode = BulletedListDisplayMode.HyperLink
            objBulletedList.Target = "_blank"

            For x = 0 To ds.Tables(0).Rows.Count - 1
                Dim objListItem As New System.Web.UI.WebControls.ListItem
                Dim objListItem1 As New System.Web.UI.WebControls.ListItem
                Dim objListItemHeader As New System.Web.UI.WebControls.ListItem

                If ds.Tables(0).Rows(x).Item("strTitle") Is System.DBNull.Value Then
                    objListItem.Text = ds.Tables(0).Rows(x).Item("strSource") & " Article"
                Else
                    objListItem.Text = ds.Tables(0).Rows(x).Item("strTitle")
                    objListItem1.Attributes("style") = "font-size:11px;font-weight:none;font-family:arial;list-style-type:none;margin-bottom:8px;margin-top:4px;margin-left:12px;"
                    If ds.Tables(0).Rows(x).Item("dtmArticleDate") Is System.DBNull.Value Then
                        objListItem1.Text = ds.Tables(0).Rows(x).Item("strSource")
                    Else
                        objListItem1.Text = ds.Tables(0).Rows(x).Item("intYear") & " " & ds.Tables(0).Rows(x).Item("strSportKey") & " Championship ( " & ds.Tables(0).Rows(x).Item("strSchool") & ") : " & ds.Tables(0).Rows(x).Item("strSource") & " - " & Format(ds.Tables(0).Rows(x).Item("dtmArticleDate"), "Short Date")
                    End If
                    objListItem1.Enabled = False
                End If
                If ds.Tables(0).Rows(x).Item("strType") Is DBNull.Value Then
                    '''''objListItem.Value = "xfer.aspx?url=" & ds.Tables(0).Rows(x).Item("strURL")
                    objListItem.Value = "xfer.aspx?url=" & ds.Tables(0).Rows(x).Item("Id")
                Else
                    If ds.Tables(0).Rows(x).Item("strType") = "Article" Or ds.Tables(0).Rows(x).Item("strType") = "Bulletin" Then
                        objListItem.Value = GetArticleHTML(ds.Tables(0).Rows(x).Item("id"), objServer)
                    Else
                        '''''objListItem.Value = "xfer.aspx?url=" & ds.Tables(0).Rows(x).Item("strURL")
                        objListItem.Value = "xfer.aspx?url=" & ds.Tables(0).Rows(x).Item("id")
                    End If
                End If
                If ds.Tables(0).Rows(x).Item("dtmArticleDate") Is System.DBNull.Value Then
                    objListItemHeader = Nothing
                Else
                    ' Should we put a header???
                    If objArticleDate <> ds.Tables(0).Rows(x).Item("dtmArticleDate") Then
                        objListItemHeader.Text = ". The Sports Engine Headlines for " & Format(ds.Tables(0).Rows(x).Item("dtmArticleDate"), "MM/dd/yyyy")
                    End If
                    objArticleDate = ds.Tables(0).Rows(x).Item("dtmArticleDate")
                End If

                If objListItemHeader Is Nothing Then
                ElseIf objListItemHeader.Text = "" Then
                Else
                    objListItemHeader.Attributes("style") = "font-size:16px;font-weight:normal;font-family:arial;list-style-type:none;margin-top:3px;background-color:Navy;color:yellow;height:19px;"

                    objListItemHeader.Enabled = False
                    objBulletedList.Items.Add(objListItemHeader)
                End If
                objBulletedList.Items.Add(objListItem)
                objBulletedList.Items.Add(objListItem1)
            Next

        End If

    End Sub

    Shared Function GetArticleHTML(ByVal articleId As Long, ByVal objServer As Object)
        Dim strHTML As String = ""
        Dim strHTMLFiles As String = ""
        Dim strImageFile As String = ""
        Dim strFileName As String = ""

        strHTML = strHTML & "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>"
        strHTML = strHTML & "<html xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'>"
        strHTML = strHTML & "<head>"
        strHTML = strHTML & "<title>Article</title>"
        strHTML = strHTML & "<meta http-equiv='content-type' content='text/html;charset=utf-8' />"
        strHTML = strHTML & "<link rel='stylesheet' href='engine/css/vlightbox1.css' type='text/css' />"
        strHTML = strHTML & "<link rel='stylesheet' href='engine/css/visuallightbox.css' type='text/css' media='screen' />"
        strHTML = strHTML & "<script src='engine/js/jquery.min.js' type='text/javascript'></script>"
        strHTML = strHTML & "<script src='engine/js/visuallightbox.js' type='text/javascript'></script>"
        strHTML = strHTML & "<script type='text/javascript'>"
        strHTML = strHTML & "function showLightBox()"
        strHTML = strHTML & "{"
        strHTML = strHTML & "Lightbox.start(document.getElementById('firstImage'));"
        strHTML = strHTML & "}"
        strHTML = strHTML & "</script>"
        strHTML = strHTML & "</head>"
        strHTML = strHTML & "<body bgcolor='#ffffff' onload='showLightBox()'>"
        strHTML = strHTML & "<div id='vlightbox1'>"

        Dim ds As DataSet
        Dim strSQL As String
        strSQL = "SELECT * FROM tblStateChampionsArticles WHERE Id = " & articleId
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
            strHTML = strHTML & "<span style='font-family: Verdana; font-size: 14px'><b>NO ARTICLES CURRENTLY AVAILABLE</b></span>"
        ElseIf ds.Tables.Count = 0 Then
            strHTML = strHTML & "<span style='font-family: Verdana; font-size: 14px'><b>NO ARTICLES CURRENTLY AVAILABLE</b></span>"
        ElseIf ds.Tables(0).Rows.Count = 0 Then
            strHTML = strHTML & "<span style='font-family: Verdana; font-size: 14px'><b>NO ARTICLES CURRENTLY AVAILABLE</b></span>"
        Else
            '''''strImageFile = ImageURL() & ds.Tables(0).Rows(0).Item("strURL")
            '''''strImageFile = "xfer.aspx?url=" & strImageFile
            strImageFile = "xfer.aspx?url=" & ds.Tables(0).Rows(0).Item("id")
            strHTMLFiles = ds.Tables(0).Rows(0).Item("strURL")
            If ds.Tables(0).Rows(0).Item("strType") = "On-Line Article" Then
                strHTML = strHTML & "<a class='vlightbox1' href='" & strImageFile & "' title='" & ds.Tables(0).Rows(0).Item("strSource") & " - On-Line Article" & "' id='firstImage'><img src=''></a>"
            Else
                strHTML = strHTML & "<a class='vlightbox1' href='" & strImageFile & "' title='" & ds.Tables(0).Rows(0).Item("strSource") & " - Newspaper Article" & "' id='firstImage'><img src=''></a>"
            End If
            strFileName = ds.Tables(0).Rows(0).Item("strSource") & articleId & ".htm"
        End If

        ' Nothing was found...
        If strHTMLFiles = "" Then
            If InStr(strHTML, "NO PICTURES") > 0 Then
            Else
                strHTML = strHTML & "<span style='font-family: Verdana; font-size: 14px'><b>NO ARTICLES CURRENTLY AVAILABLE</b></span>"
            End If
        End If

        strHTML = strHTML & "</div>"
        strHTML = strHTML & "<script src='engine/js/vlbdata1.js' type='text/javascript'></script>"
        strHTML = strHTML & "</body>"
        strHTML = strHTML & "</html>"

        ' Now Create the File...
        If strFileName <> "" Then
            Dim objSR As System.IO.StreamWriter
            objSR = System.IO.File.CreateText(objServer.MapPath(".\") & strFileName)
            objSR.WriteLine(strHTML)
            objSR.Close()
        End If

        Return strFileName

    End Function


End Class
