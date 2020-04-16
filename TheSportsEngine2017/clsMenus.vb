Public Class clsMenus
    Shared Function GetMenu(objState As Object) As String
        Dim strState As String

        If objState Is Nothing Then
            strState = "OK"
        ElseIf objState = "" Then
            strState = "OK"
        Else
            strState = objState
        End If

        Select Case strState
            Case "OK"
                Return "menu.xml"
            Case "FL"
                Return "menuFL.xml"
            Case "MI"
                Return "menuMI.xml"
            Case "IL"
                Return "menuIL.xml"
            Case "TX"
                Return "menuTX.xml"
            Case "LOC"
                Return "menuLOC.xml"
            Case Else
                Return "menu.xml"
        End Select

    End Function

    Shared Function GetTitle(strState As String) As String
        Dim strReturn As String
        Select Case strState
            Case "FL"
                strReturn = "Florida High School Sports: Football, Basketball, Baseball, Academic, Non-Athletic State Championships Champions"
            Case "MI"
                strReturn = "Michigan High School Sports: Football, Basketball, Baseball, Academic, Non-Athletic State Championships Champions"
            Case "IL"
                strReturn = "Illinois High School Sports: Football, Basketball, Baseball, Academic, Non-Athletic State Championships Champions"
            Case "TX"
                strReturn = "Texas High School Sports: Football, Basketball, Baseball, Academic, Non-Athletic State Championships Champions"
            Case "OK"
                strReturn = "Oklahoma High School Sports: Football, Basketball, Baseball, Academic, Non-Athletic State Championships Champions"
            Case "LOC"
                strReturn = "List of Champions"
            Case Else
                strReturn = "Oklahoma High School Sports: Football, Basketball, Baseball, Academic, Non-Athletic State Championships Champions"
        End Select
        Return strReturn
    End Function

End Class