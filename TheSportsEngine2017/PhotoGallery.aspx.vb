﻿Imports Telerik.Web.UI

Public Class PhotoGallery
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalid") = 0
        Session("globalid") = clsFunctions.VerifyString(Request.QueryString("id"))

        Try
            clsLog.LogEvent("PHOTOGALLERY", Me.Page.AppRelativeVirtualPath.ToString, Session("globalid"), "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Protected Sub RadImageGallery2_NeedDataSource(sender As Object, e As ImageGalleryNeedDataSourceEventArgs)
        RadImageGallery2.DataSource = GetDataTable()
    End Sub

    Public Function GetDataTable() As DataSet

        Dim strSQL As String = "SELECT DISTINCT Id, IdStateChampion, strImage, intSort, strAltText, strSubfolder, intYear, ysnActive, strSportGenderKey, strImageURL FROM viewStateChampionsImages WHERE IdStateChampion = " & Session("globalid") & " ORDER BY intSort"
        Dim ds As DataSet
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        Return ds

    End Function


    'Private Sub Page_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
    '    If sender.ClientQueryString.ToString = "header=no" Then
    '        MasterPageFile = "MasterPage2017NoMenuNoHeader.Master"
    '    End If
    'End Sub

End Class