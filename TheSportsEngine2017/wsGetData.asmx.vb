Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports System.Collections
Imports System.Collections.Generic
Imports System.Collections.Specialized
Imports AjaxControlToolkit

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> <System.Web.Script.Services.ScriptService()>
<ToolboxItem(False)>
Public Class WSGetData
    Inherits System.Web.Services.WebService

    <WebMethod()>
    Public Function GetSchools(ByVal knownCategoryValues As String, ByVal category As String, strState As String) As CascadingDropDownNameValue()
        Dim i As New Long
        Dim mydobSchool As New List(Of CascadingDropDownNameValue)
        Dim ds As DataSet
        Dim strSQL As String
        Dim strSplit As Array

        knownCategoryValues = knownCategoryValues.Replace(";", "")
        strSplit = knownCategoryValues.Split(":")

        strSQL = "SELECT DISTINCT(strSchool) AS SchoolAbb FROM tblStateChampions WHERE strState = '" & strState & "' ORDER BY strSchool"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To ds.Tables(0).Rows.Count - 1
                mydobSchool.Add(New CascadingDropDownNameValue(ds.Tables(0).Rows(x).Item("SchoolAbb"), ds.Tables(0).Rows(x).Item("SchoolAbb")))
            Next
        End If

        Return mydobSchool.ToArray

    End Function

    <WebMethod()>
    Public Function GetYearsForSport(ByVal knownCategoryValues As String, ByVal category As String, contextKey As String) As CascadingDropDownNameValue()
        Dim i As New Long
        Dim mydobyear As New List(Of CascadingDropDownNameValue)
        Dim ds As DataSet
        Dim strSQL As String
        Dim strSplit As Array
        Dim strSplitState As Array
        Dim strSportGenderKey As String
        Dim strThisYear As String = "2018"
        Dim strLastYear As String = "2017"
        Dim strState As String = "OK"

        knownCategoryValues = knownCategoryValues.Replace(";", "")
        strSplit = knownCategoryValues.Split(":")

        strSportGenderKey = strSplit(1)
        strState = contextKey

        strSQL = "SELECT DISTINCT intYear FROM tblStateChampions WHERE strSportGenderKey = '" & strSportGenderKey & "' AND strState = '" & strState & "' ORDER BY intYear DESC"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To ds.Tables(0).Rows.Count - 1
                mydobyear.Add(New CascadingDropDownNameValue(ds.Tables(0).Rows(x).Item("intYear"), ds.Tables(0).Rows(x).Item("intYear")))
            Next
        End If

        ' Now lets add the Decades...
        Select Case strSportGenderKey
            Case "Baseball"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1944-1949", "1944-1949"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1950-1959", "1950-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strThisYear, "2010-" & strThisYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("10 Years Ago", "2003"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("25 Years Ago", "1988"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("50 Years Ago", "1963"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "BaseballFall"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1955-1959", "1955-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strLastYear, "2010-" & strLastYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("10 Years Ago", "2002"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("25 Years Ago", "1987"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("50 Years Ago", "1962"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "BasketballBoys"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1918-1919", "1918-1919"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1920-1929", "1920-1929"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1930-1939", "1930-1939"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1940-1949", "1940-1949"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1950-1959", "1950-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strThisYear, "2010-" & strThisYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("10 Years Ago", "2003"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("25 Years Ago", "1988"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("50 Years Ago", "1963"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("75 Years Ago", "1938"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "BasketballGirls"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1919-1929", "1919-1929"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1930-1939", "1930-1939"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1940-1949", "1940-1949"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1950-1959", "1950-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-2013", "2010-2013"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("10 Years Ago", "2003"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("25 Years Ago", "1988"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("50 Years Ago", "1963"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("75 Years Ago", "1938"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "Cheerleading"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1989-1999", "1989-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-2013", "2010-2013"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "CrossCountryBoys"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1937-1939", "1937-1939"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1940-1949", "1940-1949"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1950-1959", "1950-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strLastYear, "2010-" & strLastYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "CrossCountryGirls"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1975-1979", "1975-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strLastYear, "2010-" & strLastYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "Football"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1944-1949", "1944-1949"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1950-1959", "1950-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strLastYear, "2010-" & strLastYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("10 Years Ago", "2002"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("25 Years Ago", "1987"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("50 Years Ago", "1962"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "FPSoftball"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1950-1959", "1950-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strLastYear, "2010-" & strLastYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "SoccerGirls", "SoccerBoys"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1985-1989", "1985-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strLastYear, "2010-" & strLastYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "SwimmingGirls"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1957-1959", "1957-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strThisYear, "2010-" & strThisYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "SwimmingBoys"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1937-1939", "1937-1939"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1940-1949", "1940-1949"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1950-1959", "1950-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strThisYear, "2010-" & strThisYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "SPSoftball"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1983-1989", "1983-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strLastYear, "2010-" & strLastYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("10 Years Ago", "2002"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("25 Years Ago", "1987"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "TennisBoys", "TennisGirls"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1958-1959", "1958-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strLastYear, "2010-" & strLastYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "TrackBoys"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1944-1949", "1944-1949"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1950-1959", "1950-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strLastYear, "2010-" & strLastYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "TrackGirls"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1958-1959", "1958-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strLastYear, "2010-" & strLastYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "Volleyball"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1955-1959", "1955-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strLastYear, "2010-" & strLastYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "Wrestling"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1920-1929", "1922-1929"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1930-1939", "1930-1939"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1940-1949", "1940-1949"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1950-1959", "1950-1959"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1960-1969", "1960-1969"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1970-1979", "1970-1979"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1980-1989", "1980-1989"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("1990-1999", "1990-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strThisYear, "2010-" & strThisYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case "WrestlingDual"
                mydobyear.Insert(0, New CascadingDropDownNameValue("1989-1999", "1989-1999"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2000-2009", "2000-2009"))
                mydobyear.Insert(0, New CascadingDropDownNameValue("2010-" & strThisYear, "2010-" & strThisYear))
                mydobyear.Insert(0, New CascadingDropDownNameValue("List of Champions", "List of Champions"))
            Case Else
        End Select

        Return mydobyear.ToArray

    End Function

    <WebMethod()>
    Public Function GetSports(ByVal knownCategoryValues As String, ByVal category As String, contextKey As String) As CascadingDropDownNameValue()
        On Error Resume Next

        Dim objSports As New List(Of CascadingDropDownNameValue)
        Dim ds As DataSet
        Dim x As Integer
        Dim strState As String = "OK"

        If contextKey = "" Then
        Else
            strState = contextKey
        End If

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT strSport, strSportGenderKey, strState FROM tblSports WHERE intActive > 0 AND strState = '" & strState & "' ORDER BY intActive")
        If ds Is Nothing Then
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT strSport, strSportGenderKey, strState FROM tblSports WHERE intActive > 0 AND strState = 'OK' ORDER BY intActive")
        ElseIf ds.Tables.Count = 0 Then
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT strSport, strSportGenderKey, strState FROM tblSports WHERE intActive > 0 AND strState = 'OK' ORDER BY intActive")
        ElseIf ds.Tables(0).Rows.Count = 0 Then
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT strSport, strSportGenderKey, strState FROM tblSports WHERE intActive > 0 AND strState = 'OK' ORDER BY intActive")
        End If

        For x = 0 To ds.Tables(0).Rows.Count - 1
            'objSports.Add(New CascadingDropDownNameValue(ds.Tables(0).Rows(x).Item("strSport"), ds.Tables(0).Rows(x).Item("strSportGenderKey") & "-" & ds.Tables(0).Rows(x).Item("strState")))
            objSports.Add(New CascadingDropDownNameValue(ds.Tables(0).Rows(x).Item("strSport"), ds.Tables(0).Rows(x).Item("strSportGenderKey")))
        Next

        Return objSports.ToArray
    End Function


    <WebMethod()>
    Public Function GetSportsOK(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()
        On Error Resume Next

        Dim objSports As New List(Of CascadingDropDownNameValue)
        Dim ds As DataSet
        Dim x As Integer
        Dim strState As String = "OK"

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT strSport, strSportGenderKey, strState FROM tblSports WHERE intActive > 0 AND strState = 'OK' ORDER BY intActive")
        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To ds.Tables(0).Rows.Count - 1
                'objSports.Add(New CascadingDropDownNameValue(ds.Tables(0).Rows(x).Item("strSport"), ds.Tables(0).Rows(x).Item("strSportGenderKey") & "-" & ds.Tables(0).Rows(x).Item("strState")))
                objSports.Add(New CascadingDropDownNameValue(ds.Tables(0).Rows(x).Item("strSport"), ds.Tables(0).Rows(x).Item("strSportGenderKey")))
            Next
        End If

        Return objSports.ToArray
    End Function

    <WebMethod()>
    Shared Function GetChampionshipCount(ByVal strSchool As String, ByVal strState As String, ByVal strSportGenderKey As String) As Integer
        Dim strSQL As String
        Dim intCount As Integer = 0
        If strSportGenderKey = "" Then
            '            If strState = "OK" Then
            strSQL = "SELECT COUNT(Id) FROM tblStateChampions WHERE strSchool = '" & strSchool & "' AND strState = '" & strState & "'"
            '       Else
            '            strSQL = "SELECT COUNT(Id) FROM tblStateChampions" & strState & " WHERE strSchool = '" & strSchool & "' AND strState = '" & strState & "'"
            'End If
        Else
            '        If strState = "OK" Then
            strSQL = "SELECT COUNT(Id) FROM tblStateChampions WHERE strSchool = '" & strSchool & "' AND strSportGenderKey = '" & strSportGenderKey & "' AND strState = '" & strState & "'"
            '       Else
            '          strSQL = "SELECT COUNT(Id) FROM tblStateChampions" & strState & " WHERE strSchool = '" & strSchool & "' AND strSportGenderKey = '" & strSportGenderKey & "' AND strState = '" & strState & "'"
            '     End If
        End If

        intCount = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        Return intCount

    End Function

End Class