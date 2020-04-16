Imports Telerik.Web.UI

Public Class BAMLBNoH
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strDateLast As String
        strDateLast = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT TOP 1 strDateLast FROM tblBaseballHSMLB WHERE NOT strDateLast Is Null")
        lblOneColumnDetail0.Text = "(as of " & strDateLast & ")"
        lblOneColumnDetail.Text = "(as of " & strDateLast & ")"
        Try
            clsLog.LogEvent("BASEBALL", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Protected Sub RadGrid1_CustomAggregate(sender As Object, e As GridCustomAggregateEventArgs)
        Dim intAB As Integer = 0
        Dim intH As Integer = 0
        intAB = CInt(e.Item.Cells(3).Text)
        intH = CInt(e.Item.Cells(4).Text)
        e.Result = intH / intAB
    End Sub

    Protected Sub RadGrid2_CustomAggregate(sender As Object, e As GridCustomAggregateEventArgs)
        Dim strIP As String
        Dim dblERA As Double
        Dim dblWHIP As Double

        strIP = e.Item.Cells(3).Text
        If strIP.Contains(".6") Then
            strIP.Replace(".6", ".2")
        ElseIf strIP.Contains(".3") Then
            strIP.Replace(".3", ".1")
        End If

        Try
            e.Item.Cells(3).Text = strIP
            dblERA = (CDbl(e.Item.Cells(8).Text) / CDbl(e.Item.Cells(3).Text)) * 9
            e.Item.Cells(10).Text = Format(dblERA, "0.00")
        Catch
        End Try

        Try
            dblWHIP = (CDbl(e.Item.Cells(6).Text) + CDbl(e.Item.Cells(7).Text)) / CDbl(e.Item.Cells(3).Text)
            e.Item.Cells(11).Text = Format(dblWHIP, "0.00")
            e.Result = Format(dblWHIP, "0.00")
        Catch

        End Try

        e.Item.Cells(2).Text = "TOTALS : " & e.Item.Cells(4).Text & "-" & e.Item.Cells(5).Text & " W/L"
        'End If
    End Sub
End Class