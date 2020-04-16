Public Class clsAds

    Shared Function getAdHyperlink(hl As HyperLink, strSchool As String, strState As String) As HyperLink
        Dim strAd As String = ""
        Dim strURL As String = ""

        If strState = "" Then strState = "OK"

        strAd = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT TOP 1 adImage FROM tblSchoolAds WHERE (strSchool = '" & strSchool & "' OR strSchool = 'ALL') AND strState = '" & strState & "' AND intSort > 0")
        If strAd = "" Then
            hl.Visible = False
        Else
            strURL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT TOP 1 adNavigateURL FROM tblSchoolAds WHERE strSchool = '" & strSchool & "' AND intSort > 0")
            hl.ImageUrl = strAd
            hl.NavigateUrl = strURL
            hl.Visible = True
        End If

        Return hl
    End Function

    Shared Function GetTitleSponsorImageURLFull(intSecond As Long) As String
        Return ConfigurationManager.AppSettings("TitleSponsorImageFull")
    End Function

    Shared Function GetTitleSponsorImageURLMobile(intSecond As Long) As String
        Return ConfigurationManager.AppSettings("TitleSponsorImageMobile")
    End Function

    Shared Function GetTitleSponsorURL(intSecond As Long) As String
        Return ConfigurationManager.AppSettings("TitleSponsorURL")
    End Function

End Class
