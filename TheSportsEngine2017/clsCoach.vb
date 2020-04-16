
Imports System.Data
Public Class clsCoach

    Public intCoachID As Long = 0
    Public strFirstName As String = ""
    Public strLastName As String = ""
    Public strFullName As String = ""
    Public strSportGenderKey As String = ""
    Public strLastSchool As String = ""

    Public Sub New(intCoachesID As Long)
        Dim strSQL As String
        Dim ds As DataSet

        strSQL = "SELECT * FROM tblBasketballCoachingRecords WHERE Id = " & intCoachesID
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            With ds.Tables(0).Rows(0)
                intCoachID = .Item("Id")
                strFirstName = .Item("strFirstName")
                strLastName = .Item("strLastName")
                strFullName = strFirstName & " " & strLastName
                strLastSchool = .Item("strLastSchool")
            End With
        End If
    End Sub

End Class
