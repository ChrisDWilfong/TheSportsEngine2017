Imports Telerik.Web.UI

Public Class CoachesInfo
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("coachID") = 0
        Session("coachID") = clsFunctions.VerifyString(Request.QueryString("id"))

        Dim objCoachInfo As New clsCoach(Session("coachID"))

        If objCoachInfo Is Nothing Then
        Else
            lblCoachName.Text = objCoachInfo.strFullName.ToUpper
        End If

        Try
            'clsLog.LogEvent("COACHESINFO", Me.Page.AppRelativeVirtualPath.ToString, Session("globalid"), "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

End Class