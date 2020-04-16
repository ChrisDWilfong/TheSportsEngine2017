Public Class clsStateHeader

    Public getStateName As String
    Public getStateAbb As String
    Public getMenu As String
    Public getHomePage As String

    Public Sub New(ByRef strURL As String)

        If strURL.ToUpper.Contains("FL.LISTOFCHAMPIONS.COM") Then
            getStateName = "Florida"
            getStateAbb = "FL"
            getMenu = "menuFL.xml"
            getHomePage = "DefaultLOC.aspx"
        ElseIf strURL.ToUpper.Contains("MI.LISTOFCHAMPIONS.COM") Or strURL.ToUpper.Contains("LOCALHOST1") Then
            getStateName = "Michigan"
            getStateAbb = "MI"
            getMenu = "menuMI.xml"
            getHomePage = "DefaultLOC.aspx"
        ElseIf strURL.ToUpper.Contains("IL.LISTOFCHAMPIONS.COM") Then
            getStateName = "Illinois"
            getStateAbb = "IL"
            getMenu = "menuIL.xml"
            getHomePage = "DefaultLOC.aspx"
        ElseIf strURL.ToUpper.Contains("TX.LISTOFCHAMPIONS.COM") Then
            getStateName = "Texas"
            getStateAbb = "TX"
            getMenu = "menuTX.xml"
            getHomePage = "DefaultLOC.aspx"
        Else
            getStateName = "Oklahoma"
            getStateAbb = "OK"
            getMenu = "menu.xml"
            getHomePage = "StateChampionshipsBySchool.aspx"
        End If

    End Sub

End Class
