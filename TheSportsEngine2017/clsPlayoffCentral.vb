Public Class clsPlayoffCentral

    Shared Function GetOSSAAPDF(strSportGenderKey As String, intArea As Integer) As String
        Dim strPDF As String = ""

        Select Case strSportGenderKey
            Case "BasketballBoys6A"
                If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_6AStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_6ABArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballGirls6A"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_6AStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_6AGArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballBoys5A"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_5AStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_5ABArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballGirls5A"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_5AStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_5AGArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballBoys4A"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_4AStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_4ABArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballGirls4A"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_4AStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_4AGArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballBoys3A"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_3AStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_3ABArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballGirls3A"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_3AStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_3AGArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballBoys2A"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_2AStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_2ABArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballGirls2A"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_2AStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_2AGArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballBoysA"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_AStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_ABArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballGirlsA"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_AStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_AGArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballBoysB"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_BStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_BBArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "BasketballGirlsB"
				If intArea = 0 Then
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_BStateBrackets.pdf?id=" & Rnd()
				Else
					strPDF = "http://www.ossaa.net/docs/2019-20/Basketball/BK_2019-20_BGArea" & intArea & ".pdf?id=" & Rnd()
				End If
			Case "SPSoftball6A"
				strPDF = "http://www.ossaa.net/docs/2019-20/SlowPitch/SP_2019-20_6AStateBracket.pdf#page=4?id=" & Rnd()
			Case "SPSoftball5A"
				strPDF = "http://www.ossaa.net/docs/2019-20/SlowPitch/SP_2019-20_5AStateBracket.pdf#page=4?id=" & Rnd()
			Case "SPSoftball4A"
				strPDF = "http://www.ossaa.net/docs/2019-20/SlowPitch/SP_2019-20_4AStateBracket.pdf#page=4?id=" & Rnd()
			Case "SPSoftball3A"
				strPDF = "http://www.ossaa.net/docs/2019-20/SlowPitch/SP_2019-20_3AStateBracket.pdf#page=4?id=" & Rnd()
			Case "SPSoftball2A"
				strPDF = "http://www.ossaa.net/docs/2019-20/SlowPitch/SP_2019-20_2AStateBracket.pdf#page=4?id=" & Rnd()
			Case "SPSoftballA"
				strPDF = "http://www.ossaa.net/docs/2019-20/SlowPitch/SP_2019-20_AStateBracket.pdf#page=4?id=" & Rnd()
			Case "Baseball6A"
				strPDF = "http://www.ossaa.net/docs/2019-20/Baseball/BA_2019-20_6AStateBracket.pdf?id=" & Rnd() * 10000
			Case "Baseball5A"
				strPDF = "http://www.ossaa.net/docs/2019-20/Baseball/BA_2019-20_5AStateBracket.pdf?id=" & Rnd() * 10000
			Case "Baseball4A"
				strPDF = "http://www.ossaa.net/docs/2019-20/Baseball/BA_2019-20_4AStateBracket.pdf?id=" & Rnd() * 10000
			Case "Baseball3A"
				strPDF = "http://www.ossaa.net/docs/2019-20/Baseball/BA_2019-20_3AStateBracket.pdf?id=" & Rnd() * 10000
			Case "Baseball2A"
				strPDF = "http://www.ossaa.net/docs/2019-20/Baseball/BA_2019-20_2AStateBracket.pdf?id=" & Rnd() * 10000
			Case "BaseballA"
				strPDF = "http://www.ossaa.net/docs/2019-20/Baseball/BA_2019-20_AStateBracket.pdf?id=" & Rnd() * 10000
			Case "BaseballB"
				strPDF = "http://www.ossaa.net/docs/2019-20/Baseball/BA_2019-20_BStateBracket.pdf?id=" & Rnd() * 10000
		End Select

        Return strPDF
    End Function

End Class
