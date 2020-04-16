Imports System
Imports Telerik.Web.UI
Imports System.Xml
Imports System.Web
Imports System.Collections.Generic
'Imports Telerik.QuickStart

Public Class TestTiles
    Inherits RadAjaxPage

    Protected Sub Page_Load(sender As Object, e As EventArgs)
        'For Each tile As RadBaseTile In RadTileList1.GetAllTiles()
        '    If Not String.IsNullOrEmpty(tile.Name) Then
        '        Dim result As XmlNode = ExamplesProvider.Instance.CategoryList.Find(Function(node) node.Attributes("text").Value = tile.Name)
        '        If Not Object.Equals(result, Nothing) Then
        '            tile.Badge.Value = result.SelectNodes(".//example").Count
        '        End If
        '    End If
        'Next
    End Sub

End Class