<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PlayoffScores.aspx.vb" Inherits="TheSportsEngine2017.PlayoffScores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link href="speech.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
	 <telerik:RadScriptManager runat="server"></telerik:RadScriptManager>
        <div>
			<telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper">
			<asp:Table runat="server" ID="tblPlayoffs">
				<asp:TableRow><asp:TableCell ColumnSpan="3" Font-Bold="true" Font-Size="Large">PLAYOFF SCORE ENTRY</asp:TableCell></asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<telerik:RadDropDownList ID="RadDropDownListYear" runat="server" DataSourceID="SqlDataSourceYears" DataTextField="intYear" DataValueField="intYear" AutoPostBack="true"></telerik:RadDropDownList>
					</asp:TableCell>
					<asp:TableCell>
						<telerik:RadTextBox runat="server" ID="txtDate"></telerik:RadTextBox>
					</asp:TableCell>
					<asp:TableCell>
						<telerik:RadDropDownList ID="RadDropDownListDay" runat="server" >
							<Items>
								<telerik:DropDownListItem Text="Select Day..." />
								<telerik:DropDownListItem Text="Thursday" />
								<telerik:DropDownListItem Text="Friday" />
								<telerik:DropDownListItem Text="Saturday" />
							</Items>
						</telerik:RadDropDownList>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<telerik:RadDropDownList ID="RadDropDownListSport" runat="server" AutoPostBack="true" >
							<Items>
								<telerik:DropDownListItem Text="Select Sport..." />
								<telerik:DropDownListItem Text="Basketball (Boys)" Value="BasketballBoys" />
								<telerik:DropDownListItem Text="Basketball (Girls)" Value="BasketballGirls" />
							</Items>
						</telerik:RadDropDownList>
					</asp:TableCell>
					<asp:TableCell>
						<telerik:RadDropDownList ID="RadDropDownListClass" runat="server" AutoPostBack="true" >
							<Items>
								<telerik:DropDownListItem Text="Select Class..." />
								<telerik:DropDownListItem Text="ALL" />
								<telerik:DropDownListItem Text="6A" />
								<telerik:DropDownListItem Text="5A" />
								<telerik:DropDownListItem Text="4A" />
								<telerik:DropDownListItem Text="3A" />
								<telerik:DropDownListItem Text="2A" />
								<telerik:DropDownListItem Text="A" />
								<telerik:DropDownListItem Text="B" />
								<telerik:DropDownListItem Text="C" />
							</Items>
						</telerik:RadDropDownList>
					</asp:TableCell>
					<asp:TableCell>
						<telerik:RadDropDownList ID="RadDropDownListLevel" runat="server" AutoPostBack="true" BackColor="Yellow" >
							<Items>
								<telerik:DropDownListItem Text="Select Level..." />
								<telerik:DropDownListItem Text="Area" Value="A" />
								<telerik:DropDownListItem Text="Regionals" Value="R" />
								<telerik:DropDownListItem Text="Districts" Value="D" />
							</Items>
						</telerik:RadDropDownList>
					</asp:TableCell>
					<asp:TableCell>
						<telerik:RadDropDownList ID="RadDropDownListRound" runat="server" >
							<Items>
								<telerik:DropDownListItem Text="Select Round..." />
								<telerik:DropDownListItem Text="1" Value="1" />
								<telerik:DropDownListItem Text="2" Value="2" />
								<telerik:DropDownListItem Text="Cons Finals" Value="CO" />
								<telerik:DropDownListItem Text="Finals" Value="C" />
							</Items>
						</telerik:RadDropDownList>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<telerik:RadAutoCompleteBox ID="RadAutoCompleteBoxLocation" runat="server" DataSourceID="SqlDataSourceLocations" DataTextField="strGameLocation" DataValueField="strGameLocation" AllowCustomEntry="true"></telerik:RadAutoCompleteBox>&nbsp;&nbsp;
					</asp:TableCell>
					<asp:TableCell>
						<telerik:RadDropDownList ID="RadDropDownRegionalNumber" runat="server" >
							<Items>
								<telerik:DropDownListItem Text="Select Regional #..." />
								<telerik:DropDownListItem Text="1" Value="1" />
								<telerik:DropDownListItem Text="2" Value="2" />
								<telerik:DropDownListItem Text="3" Value="3" />
								<telerik:DropDownListItem Text="4" Value="4" />
								<telerik:DropDownListItem Text="5" Value="5" />
								<telerik:DropDownListItem Text="6" Value="6" />
								<telerik:DropDownListItem Text="7" Value="7" />
								<telerik:DropDownListItem Text="8" Value="8" />
								<telerik:DropDownListItem Text="9" Value="9" />
								<telerik:DropDownListItem Text="10" Value="10" />
								<telerik:DropDownListItem Text="11" Value="11" />
								<telerik:DropDownListItem Text="12" Value="12" />
								<telerik:DropDownListItem Text="13" Value="13" />
								<telerik:DropDownListItem Text="14" Value="14" />
								<telerik:DropDownListItem Text="15" Value="15" />
								<telerik:DropDownListItem Text="16" Value="16" />
							</Items>
						</telerik:RadDropDownList>
					</asp:TableCell>					
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell ColumnSpan="4"><hr /></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell ColumnSpan="4">
						<asp:Label runat="server" ID="lblWinner" Text="WINNER:" Width="100px"></asp:Label>
						<telerik:RadAutoCompleteBox ID="RadAutoCompleteBoxWinner" runat="server" DataSourceID="SqlDataSourceSchools" DataTextField="strLoser" DataValueField="strLoser" AllowCustomEntry="true"></telerik:RadAutoCompleteBox>&nbsp;&nbsp;
						<telerik:RadTextBox runat="server" ID="txtWinnerScore" Width="50px"></telerik:RadTextBox>
						<asp:Label runat="server" ID="Label1" Text="&nbsp;&nbsp;<strong>No Score?</strong> enter 1-0 - <strong>FORFEIT?</strong> enter 2-0" Width="300px" Font-Italic="true"></asp:Label>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell ColumnSpan="4">
						<asp:Label runat="server" ID="lblLoser" Text="LOSER:" Width="100px"></asp:Label>
						<telerik:RadAutoCompleteBox ID="RadAutoCompleteBoxLoser" runat="server" DataSourceID="SqlDataSourceSchools" DataTextField="strLoser" DataValueField="strLoser" AllowCustomEntry="true"></telerik:RadAutoCompleteBox>&nbsp;&nbsp;
						<telerik:RadTextBox runat="server" ID="txtLoserScore" Width="50px"></telerik:RadTextBox>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell ColumnSpan="4">
						<asp:Label runat="server" ID="lblOT" Text="OT/FORFEIT:" Width="100px"></asp:Label>
						<telerik:RadTextBox runat="server" ID="txtOT" Width="75px"></telerik:RadTextBox>
						<asp:Label runat="server" ID="lblOTa" Text="&nbsp;&nbsp;OT or Forfeit" Width="300px" Font-Italic="true"></asp:Label>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell ColumnSpan="4">
						<telerik:RadButton runat="server" ID="cmdSave" Text="Save Changes" OnClick="cmdSave_Click"></telerik:RadButton>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow><asp:TableCell ColumnSpan="4"><asp:Label runat="server" ID="lblMessage" ForeColor="Red"></asp:Label></asp:TableCell></asp:TableRow>
				<asp:TableRow><asp:TableCell ColumnSpan="4"><hr /></asp:TableCell></asp:TableRow>
				<asp:TableRow>
					<asp:TableCell ColumnSpan="5">
						<telerik:RadGrid ID="RadGrid1" runat="server" DataSourceID="SqlDataSourceResults" AutoGenerateColumns="true" ShowHeader="false"></telerik:RadGrid>
					</asp:TableCell>
				</asp:TableRow>
			</asp:Table>
			</telerik:RadAjaxPanel>
        </div>
    </form>
	<asp:SqlDataSource ID="SqlDataSourceLocations" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strGameLocation FROM tblBasketballPlayoffs ORDER BY strGameLocation DESC">
    </asp:SqlDataSource> 
	<asp:SqlDataSource ID="SqlDataSourceYears" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT intYear FROM tblBASKETBALLTOURNAMENTimport ORDER BY intYear DESC">
    </asp:SqlDataSource> 
	<asp:SqlDataSource ID="SqlDataSourceSchools" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT tblTemp.strLoser FROM (SELECT DISTINCT strLoser FROM tblBASKETBALLTOURNAMENTimport 
			UNION 
			SELECT DISTINCT strLoser FROM tblBasketballPlayoffs) tblTemp ORDER BY tblTemp.strLoser">
    </asp:SqlDataSource> 
	<asp:SqlDataSource ID="SqlDataSourceResults" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT CASE WHEN strSportGenderKey = 'BasketballBoys' THEN 'Boys' ELSE 'Girls' END AS sport, intYear, strClass, strWinner + ' over ' + strLoser + ' (' + CAST(intWinner AS varchar(10)) + '-' + CAST(intLoser AS varchar(10)) + ')' AS strDisplay,
			strLevel, intDistrictNo, strGameLocation, strRound
			FROM tblBasketballPlayoffs 
			WHERE intYear = @selectedYear AND strClass = @selectedClass AND strSportGenderKey = @selectedSport AND strLevel = @selectedLevel
			ORDER BY intDistrictNo, strRound">
        <SelectParameters>
            <asp:ControlParameter Name="selectedYear" ControlID="RadDropDownListYear" PropertyName="SelectedValue" DefaultValue="0" />
			<asp:ControlParameter Name="selectedSport" ControlID="RadDropDownListSport" PropertyName="SelectedValue" DefaultValue="0" />
			<asp:ControlParameter Name="selectedClass" ControlID="RadDropDownListClass" PropertyName="SelectedText" DefaultValue="0" />
			<asp:ControlParameter Name="selectedLevel" ControlID="RadDropDownListLevel" PropertyName="SelectedValue" DefaultValue="0" />
		</SelectParameters> 
    </asp:SqlDataSource> 
</body>
</html>

