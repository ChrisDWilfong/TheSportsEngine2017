Imports System.Net
Imports System.Web.Http
Public Class IWATGController

	Public Function GetValues() As IEnumerable(Of String)
		Return New String() {"value1", "value2"}
	End Function

End Class
