Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Configuration
Imports System.IO
Imports System.Data.SqlClient

Imports Telerik.Web.UI

Public Class PhotoMgr
    Inherits RadAjaxPage

    Dim idstrStateChampion As String = ""
    Dim idstrStateChampionSchool As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub UploadDocument_Click(sender As Object, e As EventArgs)

        Dim strReturnURL As String = ""

        If RadDropDownListYear.SelectedIndex >= 0 And RadDropDownListSport.SelectedIndex >= 0 And RadDropDownListSchool.SelectedIndex >= 0 And RadDropDownListClass.SelectedIndex >= 0 Then

            If RadAsyncUpload1.InitialFileInputsCount < 1 Then
                UploadStatusLabel.Text = "Selected Image is required."
                Session("ReturnURL") = strReturnURL
                Exit Sub
            End If

            'Dim savePath As String = Server.MapPath(ConfigurationManager.AppSettings("documentsSavePath")) & "\"
            Dim savePath As String = ConfigurationManager.AppSettings("documentsSavePath")
            Dim linkPath As String = ConfigurationManager.AppSettings("documentsLinkPath")

            ' Parse the Subfolder (ie : IMAGES1966)
            linkPath = linkPath & "IMAGES" & RadDropDownListYear.SelectedValue
            Session("globalSubFolder") = "IMAGES" & RadDropDownListYear.SelectedValue
            Me.strSubFolder.Text = Session("globalSubFolder")

            If RadAsyncUpload1.UploadedFiles.Count > 0 Then

                Dim file As UploadedFile = RadAsyncUpload1.UploadedFiles(0)
                Dim fileName As String = file.FileName
                Dim newFileName As String = RadDropDownListYear.SelectedValue & "-" & RadDropDownListClass.SelectedValue & "_" & RadDropDownListSport.SelectedValue & "__" & RadDropDownListSchool.SelectedValue & "--" & Now.Second & Now.Millisecond
                Dim strExtension As String = ""

                idstrStateChampion = "OK_" & RadDropDownListSport.SelectedValue & "_" & RadDropDownListYear.SelectedValue & "_" & RadDropDownListClass.SelectedValue
                idstrStateChampionSchool = idstrStateChampion & "_" & RadDropDownListSchool.SelectedValue

                Me.txtidstrStateChampion.Text = idstrStateChampion
                Me.txtidstrStateChampionSchool.Text = idstrStateChampionSchool

                ' Get the Extension...
                If fileName.ToUpper.Contains(".JPG") Then
                    strExtension = ".JPG"
                ElseIf fileName.ToUpper.Contains(".PNG") Then
                    strExtension = ".PNG"
                ElseIf fileName.ToUpper.Contains(".GIF") Then
                    strExtension = ".GIF"
                ElseIf fileName.ToUpper.Contains(".BMP") Then
                    strExtension = ".BMP"
                Else
                    lblMessage.Text = "INVALID GRAPHIC FORMAT"
                    Exit Sub
                End If

                Session("globalnewFilename") = "IMAGES" & RadDropDownListYear.SelectedValue & "\" & newFileName & strExtension
                Me.strImage.Text = Session("globalnewFilename")

                savePath = savePath & Session("globalnewFilename")

                lblMessage.Text = savePath

                RadAsyncUpload1.UploadedFiles(0).SaveAs(savePath)

                linkPath = linkPath & "\" & newFileName & strExtension

                strReturnURL = ConfigurationManager.AppSettings("documentsURL") & Replace(linkPath, "\", "/")

                Session("ReturnURL") = strReturnURL

                GetNewID()

                UploadStatusLabel.Text = "Link uploaded : " & linkPath
                lblMessage.Text = savePath

            Else
                ' Notify the user that a file was not uploaded.
                UploadStatusLabel.Text = "You did not specify a file to upload."
            End If

            If Session("ReturnURL") = "" Then
            Else
                Me.strLink.Text = Session("ReturnURL")
            End If
        Else
            lblMessage.Text = "You must complete the DROPDOWN selections."
        End If

    End Sub

    Private Sub cmdSubmit_Click(sender As Object, e As EventArgs) Handles cmdSubmit.Click
        Dim strSQL As String = ""
        Dim intSort As Integer = 0


        If idChampionship.Text = "" Or idChampionship.Text = "0" Then
            lblMessage.Text = "Make selections above."
        Else
            Try
                intSort = CInt(Me.intSort.ToString)
            Catch ex As Exception
                intSort = 0
            End Try
            strSQL = "INSERT INTO tblStateChampionsImages (idStateChampion, strImage, intSort, strAltText, strSubFolder, intYear, ysnActive, strSportGenderKey, idstrStateChampion, idstrStateChampionSchool, strState) VALUES ("
            strSQL = strSQL & Me.idChampionship.Text & ", "
            strSQL = strSQL & "'" & Me.strImage.Text & "', "
            strSQL = strSQL & intSort & ", "
            strSQL = strSQL & "'" & Me.strDescription.Text & "', "
            strSQL = strSQL & "'" & Me.strSubFolder.Text & "', "
            strSQL = strSQL & Me.RadDropDownListYear.SelectedValue & ","
            strSQL = strSQL & "1,"
            strSQL = strSQL & "'" & Me.RadDropDownListSport.SelectedValue & "',"
            strSQL = strSQL & "'" & Me.txtidstrStateChampion.Text & "', "
            strSQL = strSQL & "'" & Me.txtidstrStateChampionSchool.Text & "', "
            strSQL = strSQL & "'OK')"
            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

            RadDropDownListClass.SelectedIndex = -1
            RadDropDownListSchool.SelectedIndex = -1

            lblMessage.Text = "Changes saved."
            'lblMessage.Text = strSQL
        End If

    End Sub

    Private Sub RadDropDownListClass_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownListClass.SelectedIndexChanged
        strDescription.Text = GetSubscription()
        GetNewID()
    End Sub

    Public Sub GetNewID()
        ' Now get the State Championship id...
        Dim id As Long = 0
        Dim strSQL As String = "SELECT Id FROM tblStateChampions WHERE strState = 'OK' AND strSportGenderKey = '" & RadDropDownListSport.SelectedValue & "' AND intYear = " & RadDropDownListYear.SelectedValue & " AND strClass = '" & RadDropDownListClass.SelectedValue & "'"
        id = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        idChampionship.Text = id
    End Sub
    Private Sub RadDropDownListSchool_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownListSchool.SelectedIndexChanged
        strDescription.Text = GetSubscription()
    End Sub

    Private Sub RadDropDownListSport_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownListSport.SelectedIndexChanged
        strDescription.Text = GetSubscription()
    End Sub

    Private Sub RadDropDownListYear_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs) Handles RadDropDownListYear.SelectedIndexChanged
        strDescription.Text = GetSubscription()
        intYear.Text = sender.SelectedValue
    End Sub

    Public Function GetSubscription() As String
        Dim strResult As String = ""

        strResult = RadDropDownListSchool.SelectedValue & " : " & RadDropDownListYear.SelectedValue & " Class " & RadDropDownListClass.SelectedValue & " " & RadDropDownListSport.SelectedText

        Return strResult
    End Function
End Class