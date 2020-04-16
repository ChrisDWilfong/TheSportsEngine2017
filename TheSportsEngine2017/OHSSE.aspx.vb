Public Class OHSSE
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Request.QueryString("id") = "08232009" Then
            Session("vimeoCode") = "<iframe src='https://player.vimeo.com/video/6225016' width='704' height='470' frameborder='1' allow='autoplay; fullscreen' allowfullscreen></iframe>"
            Session("vimeoCodeMobile") = "<iframe src='https://player.vimeo.com/video/6225016' width='512' height='341' frameborder='1' allow='autoplay; fullscreen' allowfullscreen></iframe>"
            Session("vimeoText") = GetText("OCA2009")
        ElseIf Request.QueryString("id") = "08222010" Then
            Session("vimeoCode") = "<iframe src='https://player.vimeo.com/video/14166951' width='704' height='470' frameborder='1' allow='autoplay; fullscreen' allowfullscreen></iframe>"
            Session("vimeoCodeMobile") = "<iframe src='https://player.vimeo.com/video/14166951' width='512' height='341' frameborder='1' allow='autoplay; fullscreen' allowfullscreen></iframe>"
            Session("vimeoText") = GetText("OCA2010")
        ElseIf Request.QueryString("id") = "08212011" Then
            Session("vimeoCode") = "<iframe src='https://player.vimeo.com/video/27860422' width='704' height='470' frameborder='1' allow='autoplay; fullscreen' allowfullscreen></iframe>"
            Session("vimeoCodeMobile") = "<iframe src='https://player.vimeo.com/video/27860422' width='512' height='341' frameborder='1' allow='autoplay; fullscreen' allowfullscreen></iframe>"
            Session("vimeoText") = GetText("OCA2011")
        ElseIf Request.QueryString("id") = "" Then
            Session("vimeoCode") = "<iframe src='https://player.vimeo.com/video/6225016' width='704' height='470' frameborder='1' allow='autoplay; fullscreen' allowfullscreen></iframe>"
            Session("vimeoCodeMobile") = "<iframe src='https://player.vimeo.com/video/6225016' width='512' height='341' frameborder='1' allow='autoplay; fullscreen' allowfullscreen></iframe>"
            Session("vimeoText") = GetText("OCA2009")
        Else
            Session("vimeoCode") = "<iframe src='https://player.vimeo.com/video/6225016' width='704' height='470' frameborder='1' allow='autoplay; fullscreen' allowfullscreen></iframe>"
            Session("vimeoCodeMobile") = "<iframe src='https://player.vimeo.com/video/6225016' width='512' height='341' frameborder='1' allow='autoplay; fullscreen' allowfullscreen></iframe>"
            Session("vimeoText") = GetText("OCA2009")
        End If

    End Sub

    Public Function GetText(key As String) As String
        Dim strReturn As String = ""

        If key = "OCA2009" Then
            strReturn = "<h3>OKLAHOMA HIGH SCHOOL SPORTS EXPRESS</h3>"
            strReturn += "<h4>A FLASHBACK To August 2009 And the OKLAHOMA ALL-STATE GAMES</h4>"
            strReturn += "<h4>- Large And Small School BOYS BASKETBALL</h4>"
            strReturn += "<h4>- Hall of Fame Inductions</h4>"
            strReturn += "<h4>- Boys And Girls GOLF</h4>"
            strReturn += "<h4>- Large And Small School BASEBALL</h4>"
            strReturn += "<h4>- Boys And Girls TENNIS</h4>"
            strReturn += "<h4>- Large And Small School VOLLEYBALL</h4>"
            strReturn += "<h4>- FCA Coaches Breakfast</h4>"
            strReturn += "<h4>- Large And Small School GIRLS BASKETBALL</h4>"
            strReturn += "<h4>- Large And Small School WRESTLING</h4>"
            strReturn += "<h4>- Boys And Girls SWIMMING</h4>"
            strReturn += "<h4>- Large And Small School FOOTBALL</h4>"
        ElseIf key = "OCA2010" Then
            strReturn = "<h3>OKLAHOMA HIGH SCHOOL SPORTS EXPRESS</h3>"
            strReturn += "<h4>A FLASHBACK To August 2010 And the OKLAHOMA ALL-STATE GAMES</h4>"
            strReturn += "<h4>- Large And Small School BOYS BASKETBALL</h4>"
            strReturn += "<h4>- Hall of Fame Inductions</h4>"
            strReturn += "<h4>- Boys And Girls GOLF</h4>"
            strReturn += "<h4>- Large And Small School BASEBALL</h4>"
            strReturn += "<h4>- Boys And Girls TENNIS</h4>"
            strReturn += "<h4>- Large And Small School VOLLEYBALL</h4>"
            strReturn += "<h4>- FCA Coaches Breakfast</h4>"
            strReturn += "<h4>- Large And Small School GIRLS BASKETBALL</h4>"
            strReturn += "<h4>- Large And Small School WRESTLING</h4>"
            strReturn += "<h4>- Boys And Girls SWIMMING</h4>"
            strReturn += "<h4>- Large And Small School FOOTBALL</h4>"
        ElseIf key = "OCA2011" Then
            strReturn = "<h3>OKLAHOMA HIGH SCHOOL SPORTS EXPRESS</h3>"
            strReturn += "<h4>A FLASHBACK To August 2011 And the OKLAHOMA ALL-STATE GAMES</h4>"
            strReturn += "<h4>- Large And Small School BOYS BASKETBALL</h4>"
            strReturn += "<h4>- Hall of Fame Inductions</h4>"
            strReturn += "<h4>- Boys And Girls GOLF</h4>"
            strReturn += "<h4>- Large And Small School BASEBALL</h4>"
            strReturn += "<h4>- Boys And Girls TENNIS</h4>"
            strReturn += "<h4>- Large And Small School VOLLEYBALL</h4>"
            strReturn += "<h4>- FCA Coaches Breakfast</h4>"
            strReturn += "<h4>- Large And Small School GIRLS BASKETBALL</h4>"
            strReturn += "<h4>- Large And Small School WRESTLING</h4>"
            strReturn += "<h4>- Boys And Girls SWIMMING</h4>"
            strReturn += "<h4>- Large And Small School FOOTBALL</h4>"
        ElseIf key = "KristinMilsterWashington" Then
            strReturn = ""
        Else
            strReturn = ""
        End If

        Return strReturn

    End Function

End Class