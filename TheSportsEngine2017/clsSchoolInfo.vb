Imports System.Data

Public Class clsSchoolInfo

    Public getSchoolName As String
    Public getSchoolMascot As String
    Public getForeColor As String
    Public getBackColor As String
    Public getSchoolMascotGraphic As String
    Public getSchoolMascotGraphicOP As String
    Public getStateAbb As String
    Public getState As String
    Public getGUID As String
    Public getGUIDTemp As String
    Public getTheType As String

    Public Sub New(ByRef strSchool As String, ByVal GUID As String)
        Dim strSQL As String
        Dim ds As DataSet
        Dim objGUID As Guid
        Dim objGUIDTemp As Guid
        Dim GUIDCompareS As String = ""
        Dim GUIDCompareM As String = ""
        Dim GUIDCompareP As String = ""

        If GUID = "" Then
            strSQL = "SELECT * FROM tblSchoolInfo WHERE strSchoolName = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "'"
        Else
            strSQL = "SELECT * FROM tblSchoolInfo WHERE GUIDTemp = '" & GUID & "' OR GUIDMedia = '" & GUID & "' OR GUID = '" & GUID & "'"
        End If

        Try
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        Catch

        End Try

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            With ds.Tables(0).Rows(0)
                Try
                    GUIDCompareS = .Item("GUIDTemp").ToString
                Catch
                    GUIDCompareS = ""
                End Try
                Try
                    GUIDCompareM = .Item("GUIDMedia").ToString
                Catch
                    GUIDCompareM = ""
                End Try
                Try
                    GUIDCompareP = .Item("GUID").ToString
                Catch
                    GUIDCompareP = ""
                End Try

                Try
                    If GUID.ToUpper = GUIDCompareS.ToUpper Then
                        getTheType = "SCHOOL"
                    ElseIf GUID.ToUpper = GUIDCompareM.ToUpper Then
                        getTheType = "MEDIA"
                    ElseIf GUID.ToUpper = GUIDCompareP.ToUpper Then
                        getTheType = "PUBLIC"
                    Else
                        getTheType = "UNKNOWN"
                    End If
                Catch
                    getTheType = "UNKNOWN"
                End Try

                If GUID <> "" Then
                    strSchool = .Item("strSchoolName")
                End If

                getSchoolName = .Item("strSchoolName")
                Try
                    getStateAbb = .Item("strState")
                Catch
                    getStateAbb = "OK"
                End Try
                getState = GetTheState(getStateAbb)
                Try
                    getSchoolMascot = .Item("strMascot")
                Catch
                    getSchoolMascot = ""
                End Try
                Try
                    getForeColor = .Item("strBillboardForeColor")
                Catch
                    getForeColor = ""
                End Try
                Try
                    getBackColor = .Item("strBillboardBackColor")
                Catch
                    getBackColor = ""
                End Try
                Try
                    getSchoolMascotGraphic = .Item("strMascotGraphic")
                Catch ex As Exception
                    getSchoolMascotGraphic = ""
                End Try
                Try
                    getSchoolMascotGraphicOP = .Item("strMascotGraphicOP")
                Catch ex As Exception
                    getSchoolMascotGraphicOP = ""
                End Try
                Try
                    objGUID = .Item("GUID")
                    getGUID = objGUID.ToString
                Catch ex As Exception
                    getGUID = ""
                End Try
                Try
                    objGUIDTemp = .Item("GUIDTemp")
                    getGUIDTemp = objGUIDTemp.ToString
                Catch ex As Exception
                    getGUIDTemp = ""
                End Try

            End With
        End If

    End Sub

    Shared Function GetTheState(strStateAbb As String) As String
        Dim strResult As String = ""
        Select Case strStateAbb
            Case "CO"
                strResult = "Colorado"
            Case Else
                strResult = "Oklahoma"
        End Select
        Return strResult
    End Function

End Class
