Imports Telerik.Web.UI

Partial Class StateChampionshipCount
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("globalUser") = "yes"

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONSHIP COUNT")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "Champions"

        lblOneColumnDetail.Text = "STATE CHAMPIONS (1918-2019)"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("STATECHAMPIONS", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        Dim intCount As Integer = 0

        If (TypeOf e.Item Is GridDataItem AndAlso e.Item.OwnerTableView.DataSourceID = "SqlDataSource1") Then
            Dim lbl As Label = CType(e.Item.FindControl("numberLabel"), Label)
            Try
                intCount = CInt((e.Item.ItemIndex + 1).ToString)
            Catch
            End Try
            If intValue = CLng(e.Item.Cells(4).Text) Then
                ' There is a tie, so show nothing...
            Else
                lbl.Text = (e.Item.ItemIndex + 1).ToString & "&nbsp;"
            End If
            Try
                intValue = CLng(e.Item.Cells(4).Text)
            Catch
            End Try
        End If
    End Sub

    Protected Sub cboDecade_SelectedIndexChanged(sender As Object, e As DropDownListEventArgs)
        Dim strSQL As String = ""

        Select Case sender.SelectedValue
            Case "2010"
                strSQL = "SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 2010) AND (intYear <= 2019) AND (ysnSport = 1) GROUP BY strSchool ORDER BY intStateChampionshipCount DESC, strSchool"
            Case "2000"
                strSQL = "SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 2000) AND (intYear <= 2009) AND (ysnSport = 1) GROUP BY strSchool ORDER BY intStateChampionshipCount DESC, strSchool"
            Case "1990"
                strSQL = "SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 1990) AND (intYear <= 1999) AND (ysnSport = 1) GROUP BY strSchool ORDER BY intStateChampionshipCount DESC, strSchool"
            Case "1980"
                strSQL = "SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 1980) AND (intYear <= 1989) AND (ysnSport = 1) GROUP BY strSchool ORDER BY intStateChampionshipCount DESC, strSchool"
            Case "1970"
                strSQL = "SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 1970) AND (intYear <= 1979) AND (ysnSport = 1) GROUP BY strSchool ORDER BY intStateChampionshipCount DESC, strSchool"
            Case "1960"
                strSQL = "SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 1960) AND (intYear <= 1969) AND (ysnSport = 1) GROUP BY strSchool ORDER BY intStateChampionshipCount DESC, strSchool"
            Case "1950"
                strSQL = "SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 1950) AND (intYear <= 1959) AND (ysnSport = 1) GROUP BY strSchool ORDER BY intStateChampionshipCount DESC, strSchool"
            Case "1940"
                strSQL = "SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 1940) AND (intYear <= 1949) AND (ysnSport = 1) GROUP BY strSchool ORDER BY intStateChampionshipCount DESC, strSchool"
            Case "1930"
                strSQL = "SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 1930) AND (intYear <= 1939) AND (ysnSport = 1) GROUP BY strSchool ORDER BY intStateChampionshipCount DESC, strSchool"
            Case "1920"
                strSQL = "SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 1920) AND (intYear <= 1929) AND (ysnSport = 1) GROUP BY strSchool ORDER BY intStateChampionshipCount DESC, strSchool"
            Case "1918"
                strSQL = "SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 1918) AND (intYear <= 1919) AND (ysnSport = 1) GROUP BY strSchool ORDER BY intStateChampionshipCount DESC, strSchool"
            Case Else
                strSQL = "SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 1918) AND (intYear <= 2019) AND (ysnSport = 1) AND (COUNT(Id) >= 15) GROUP BY strSchool ORDER BY intStateChampionshipCount DESC, strSchool"
        End Select

        SqlDataSource1.SelectCommand = strSQL

    End Sub
End Class