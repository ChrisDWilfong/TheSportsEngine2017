Imports System.IO

Public Class clsImages

    Shared Function GetPicturesFileName(ByVal strYear As String, ByVal strSportGenderKey As String, ByVal strSchool As String) As String
        Try
            strSchool = strSchool.Replace(" ", "")
            strSchool = strSchool.Replace("-", "")
            strSchool = strSchool.Replace("(", "")
            strSchool = strSchool.Replace(")", "")
            strSchool = strSchool.Replace("\", "")
            strSchool = strSchool.Replace("/", "")
        Catch
        End Try
        Return "temp\pix" & strYear & strSportGenderKey & strSchool & ".htm"
    End Function

    Shared Function GetPicturesFileNameDB(ByVal strYear As String, ByVal strSportGenderKey As String, ByVal strSchool As String) As String
        Try
            strSchool = strSchool.Replace(" ", "")
            strSchool = strSchool.Replace("-", "")
            strSchool = strSchool.Replace("(", "")
            strSchool = strSchool.Replace(")", "")
            strSchool = strSchool.Replace("\", "")
            strSchool = strSchool.Replace("/", "")
        Catch
        End Try
        Return "pix" & strYear & strSportGenderKey & strSchool & ".htm"
    End Function


    Shared Function GetPicturesFileNameDBOSSAA(ByVal strYear As String, ByVal strSportGenderKey As String, ByVal strSchool As String) As String
        Try
            strSchool = strSchool.Replace(" ", "")
            strSchool = strSchool.Replace("-", "")
            strSchool = strSchool.Replace("(", "")
            strSchool = strSchool.Replace(")", "")
            strSchool = strSchool.Replace("\", "")
            strSchool = strSchool.Replace("/", "")
        Catch
        End Try
        Return "pixOSSAA" & strYear & strSportGenderKey & strSchool & ".htm"
    End Function

    Shared Function GetPicturesHTMLContentFromDbHeader(ByVal strTitle As String, ByVal strPathURL As String, strSchool As String) As String
        Dim strHTML As String = ""
        Dim strHeader As String = ""

        strTitle = "IWasAtTheGame.com : " & strTitle
        'strHeader = strTitle
        strHTML = strHTML & "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>"
        strHTML = strHTML & "<html xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'>"
        strHTML = strHTML & "<head>"
        strHTML = strHTML & "<title>" & strTitle & "</title>"
        strHTML = strHTML & "<meta name='Description' content='I Was At The Game (IWasAtTheGame.com) and The Sports Engine (TheSportsEngine.com) bring you State Champions from High School Sports around the Nation.' />"
        strHTML = strHTML & "<meta name='Keywords' content='" & strSchool & " high school, I Was At The Game, iwasatthegame.com, sports, oklahoma, high school, basketball, football, baseball, high school state champions, sports engine, state champions, oklahoma state champions, state championships, OSSAA, oklahoma high school rankings' />"
        strHTML = strHTML & "<meta http-equiv='content-type' content='text/html;charset=utf-8' />"
        strHTML = strHTML & "<link rel='stylesheet' href='" & strPathURL & "/engine/css/vlightbox1.css' type='text/css' />"
        strHTML = strHTML & "<link rel='stylesheet' href='" & strPathURL & "/engine/css/visuallightbox.css' type='text/css' media='screen' />"
        strHTML = strHTML & "<script src='" & strPathURL & "/engine/js/jquery.min.js' type='text/javascript'></script>"
        strHTML = strHTML & "<script src='" & strPathURL & "/engine/js/visuallightbox.js' type='text/javascript'></script>"
        strHTML = strHTML & "<script type='text/javascript'>"
        strHTML = strHTML & "function showLightBox()"
        strHTML = strHTML & "{"
        strHTML = strHTML & "Lightbox.start(document.getElementById('firstImage'));"
        strHTML = strHTML & "}"
        strHTML = strHTML & "</script>"
        strHTML = strHTML & "</head>"
        strHTML = strHTML & "<body bgcolor='#ffffff' onload='showLightBox()'>"
        strHTML = strHTML & "<span style='font-family: Arial; font-size: 14px; color:Maroon;'><b>" & strTitle & "</b></span>"
        strHTML = strHTML & "<div id='vlightbox1'>"

        Return strHTML

    End Function

    Shared Function GetPicturesHTMLContentFromDbFooter(ByVal strPathURL As String) As String
        Dim strHTML As String = ""

        strHTML = strHTML & "</div>"
        strHTML = strHTML & "<script src='" & strPathURL & "/engine/js/vlbdata1.js' type='text/javascript'></script>"
        strHTML = strHTML & "</body>"
        strHTML = strHTML & "</html>"

        Return strHTML
    End Function

    Shared Function GetPictureHTMLContentDbImage() As String
        Dim strHTML As String = ""

        Return strHTML
    End Function

    Shared Function GetPicturesHTMLContent(ByVal strYear As String, ByVal strSport As String, ByVal strSchool As String, ByVal strTitle As String, ByVal strPathServer As String, ByVal strPathURL As String, ByVal ysnOSSAAOnly As Boolean, ysnHideTitle As Boolean) As String
        Dim strHTML As String = ""
        Dim strHTMLNo As String = ""
        Dim strHeader As String

        If ysnHideTitle Then
            'strTitle = strTitle & " - IWasAtTheGame.com"
        Else
            strTitle = "IWasAtTheGame.com - " & strTitle
        End If
        If InStr(strSport, "Basketball") > 0 Then
            strSport = "basketball"
        ElseIf InStr(strSport, "Track") > 0 Then
            strSport = "track"
        ElseIf InStr(strSport, "Swimming") > 0 Then
            strSport = "swimming"
        End If
        strHeader = strTitle
        strHTML = strHTML & "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>"
        strHTML = strHTML & "<html xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'>"
        strHTML = strHTML & "<head>"
        strHTML = strHTML & "<title>" & strTitle & "</title>"
        strHTML = strHTML & "<meta name='Description' content='I Was At The Game (IWasAtTheGame.com) and The Sports Engine (TheSportsEngine.com) bring you State Champions from High School Sports around the Nation.' />"
        strHTML = strHTML & "<meta name='Keywords' content='" & strSchool & " high school " & strSport & ", I Was At The Game, iwasatthegame.com, sports, oklahoma, high school, basketball, football, baseball, high school state champions, sports engine, state champions, oklahoma state champions, state championships, OSSAA, oklahoma high school rankings' />"
        strHTML = strHTML & "<meta http-equiv='content-type' content='text/html;charset=utf-8' />"
        strHTMLNo = strHTML
        strHTML = strHTML & "<link rel='stylesheet' href='../engine/css/vlightbox1.css' type='text/css' />"
        strHTML = strHTML & "<link rel='stylesheet' href='../engine/css/visuallightbox.css' type='text/css' media='screen' />"
        strHTML = strHTML & "<script src='../engine/js/jquery.min.js' type='text/javascript'></script>"
        strHTML = strHTML & "<script src='../engine/js/visuallightbox.js' type='text/javascript'></script>"
        strHTML = strHTML & "<script type='text/javascript'>"
        strHTML = strHTML & "function showLightBox()"
        strHTML = strHTML & "{"
        strHTML = strHTML & "Lightbox.start(document.getElementById('firstImage'));"
        strHTML = strHTML & "}"
        strHTML = strHTML & "</script>"
        strHTML = strHTML & "</head>"
        strHTMLNo = strHTMLNo & "</head>"
        'strHTML = strHTML & "<body bgcolor='#ffffff'>"
        strHTML = strHTML & "<body bgcolor='#ffffff' onload='showLightBox()'>"

        'strHTML = strHTML & "<span style='font-family: Arial; font-size: 14px; color:Maroon;'><b>IWasAtTheGame.com</b></span>"
        'strHTML = strHTML & "<br>"
        strHTML = strHTML & "<span style='font-family: Arial; font-size: 14px; color:Maroon;'><b>" & strHeader & "</b></span>"
        'strHTMLNo = strHTMLNo & "<span style='font-family: Arial; font-size: 14px; color:Maroon;'><b>IWasAtTheGame.com</b></span>"
        'strHTMLNo = strHTMLNo & "<br>"
        strHTMLNo = strHTMLNo & "<span style='font-family: Arial; font-size: 14px; color:Maroon;'><b>" & strHeader & "</b></span>"
        strHTML = strHTML & "<div id='vlightbox1'>"

        Dim intStart As Integer
        Dim strPathOriginal As String

        Dim objDir As System.IO.Directory
        Dim objFiles() As String

        Dim objDirOSSAA As System.IO.Directory
        Dim objFilesOSSAA() As String

        Dim strFile As String
        Dim strFileThumbnail As String
        Dim strHTMLFiles As String = ""

        strPathOriginal = strPathServer
        strSchool = strSchool.Replace(" ", "")
        strSchool = strSchool.Replace("-", "")
        strSchool = strSchool.Replace("(", "")
        strSchool = strSchool.Replace(")", "")
        strSchool = strSchool.Replace("/", "")
        strSchool = strSchool.Replace("\", "")

        If strSport = "SPSoftball" Then
            strSport = "SlowPitch"
        ElseIf strSport = "FPSoftball" Then
            strSport = "FastPitch"
        End If

        If ysnOSSAAOnly Then

        Else
            ' IMAGES folder...
            strPathOriginal = strPathServer & "data/images" & strYear
            Try
                objFiles = objDir.GetFiles(strPathOriginal, "*")
            Catch
            End Try

            If objFiles Is Nothing Then
                'strHTML = strHTML & "<span style='font-family: Verdana; font-size: 14px'><b>NO PICTURES AVAILABLE</b></span>"
            Else
                For Each strFile In objFiles
                    intStart = 0
                    intStart = InStr(strFile, "data/images")
                    strFile = Mid(strFile, intStart)
                    If InStr(strFile.ToUpper, strYear.ToUpper) > 0 And InStr(strFile.ToUpper, strSport.ToUpper) > 0 And (InStr(strFile.ToUpper, ("_" & strSchool.ToUpper & "_")) > 0 Or InStr(strFile.ToUpper, ("_" & strSchool.ToUpper & ".")) > 0) Then
                        strFileThumbnail = Replace(strFile, "images" & strYear, "thumbnails" & strYear)
                        If strHTMLFiles = "" Then
                            strHTMLFiles = strHTMLFiles & strFileThumbnail
                            strHTML = strHTML & "<a class='vlightbox1' href='" & strPathURL & strFile & "' id='firstImage'><img src='" & strPathURL & strFileThumbnail & "'/></a>"
                        Else
                            strHTMLFiles = strHTMLFiles & strFileThumbnail
                            strHTML = strHTML & "<a class='vlightbox1' href='" & strPathURL & strFile & "'><img src='" & strPathURL & strFileThumbnail & "'/></a>"
                        End If
                        strFile = ""
                        strFileThumbnail = ""
                    Else
                        strFile = ""
                        strFileThumbnail = ""
                    End If
                Next
            End If

        End If

        ' OSSAA Folder...
        strPathOriginal = strPathServer & "data/OSSAA" & strYear
        Try
            objFilesOSSAA = objDirOSSAA.GetFiles(strPathOriginal, "*")
        Catch
        End Try

        If objFilesOSSAA Is Nothing Then
            'strHTML = strHTML & "<span style='font-family: Verdana; font-size: 14px'><b>NO PICTURES AVAILABLE</b></span>"
        Else
            For Each strFile In objFilesOSSAA
                intStart = 0
                intStart = InStr(strFile, "data/OSSAA")
                strFile = Mid(strFile, intStart)
                If InStr(strFile.ToUpper, strYear.ToUpper) > 0 And InStr(strFile.ToUpper, strSport.ToUpper) > 0 And InStr(strFile.ToUpper, ("_" & strSchool.ToUpper)) > 0 Then
                    strFileThumbnail = Replace(strFile, "OSSAA" & strYear, "OSSAA" & strYear & "TN")
                    If strHTMLFiles = "" Then
                        strHTMLFiles = strHTMLFiles & strFileThumbnail
                        strHTML = strHTML & "<a class='vlightbox1' href='" & strPathURL & strFile & "' id='firstImage'><img src='" & strPathURL & strFileThumbnail & "'/></a>"
                    Else
                        strHTMLFiles = strHTMLFiles & strFileThumbnail
                        strHTML = strHTML & "<a class='vlightbox1' href='" & strPathURL & strFile & "'><img src='" & strPathURL & strFileThumbnail & "'/></a>"
                    End If
                    strFile = ""
                    strFileThumbnail = ""
                Else
                    strFile = ""
                    strFileThumbnail = ""
                End If
            Next
        End If

        ' Nothing was found...
        If strHTMLFiles = "" Then
            If InStr(strHTML, "NO PICTURES") > 0 Then
            Else
                strHTMLNo = strHTMLNo & "<span style='font-family: Verdana; font-size: 14px'><b><br><br>NO PICTURES AVAILABLE</b></span>"
            End If
        End If

        strHTML = strHTML & "</div>"
        strHTML = strHTML & "<script src='../engine/js/vlbdata1.js' type='text/javascript'></script>"
        strHTML = strHTML & "</body>"
        strHTML = strHTML & "</html>"

        If InStr(strHTMLNo, "NO PICTURES AVAILABLE") > 0 Then
            strHTML = strHTMLNo
        Else

        End If
        'If InStr(strHTML, "NO PICTURES") Then
        '    strHTML = ""
        'End If
        Return strHTML

    End Function

End Class
