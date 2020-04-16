Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Management
Imports System.DirectoryServices
Imports System.Web.UI.WebControls

Partial Public Class AppPool
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        'Response.Write(System.Environment.MachineName)
        'status()
    End Sub

    Protected Sub status()
        Dim appPoolName As String = "iwasatthegame.com"
        Dim appPoolPath As String = "IIS://" & System.Environment.MachineName & "/W3SVC/AppPools/" & appPoolName
        Dim intStatus As Integer = 0

        Try
            Dim w3svc As DirectoryEntry = New DirectoryEntry(appPoolPath)
            intStatus = CInt(w3svc.InvokeGet("AppPoolState"))

            Select Case intStatus
                Case 2
                    lblStatus.Text = "Running"
                Case 4
                    lblStatus.Text = "Stopped"
                Case Else
                    lblStatus.Text = "Unknown"
            End Select

        Catch ex As Exception
            Response.Write(ex.ToString())
        End Try
    End Sub

    Protected Sub stopAppPool(ByVal sender As Object, ByVal e As EventArgs)
        Dim btn As Button = CType(sender, Button)
        Dim appPoolName As String = btn.CommandArgument
        Dim appPoolPath As String = "IIS://" & System.Environment.MachineName & "/W3SVC/AppPools/" & appPoolName

        Try
            Dim w3svc As DirectoryEntry = New DirectoryEntry(appPoolPath)
            w3svc.Invoke("Stop", Nothing)
            status()
        Finally
        End Try
    End Sub

    Private Sub cmdGetStatus_Click(sender As Object, e As EventArgs) Handles cmdGetStatus.Click
        Response.Write(System.Environment.MachineName)
        status()
    End Sub
End Class
