<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IWasAtTheGame_OSSAA.aspx.vb" Inherits="TheSportsEngine2017.IWasAtTheGame_OSSAA" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/base.css" rel="stylesheet" />
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/OSSAA.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager runat="server"></telerik:RadScriptManager>
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="10" SpanXl="10" SpanLg="10" SpanMd="12" SpanSm="12" SpanXs="12">
                        <asp:Panel ID="RadAjaxPanel100" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="tblOSSAA" HorizontalAlign="center">
                                <asp:TableRow HorizontalAlign="Left">
                                    <asp:TableCell ColumnSpan="2">
                                        <asp:Label runat="server" ID="Label0" Text="SELECT BY ACTIVITY/YEAR" Font-Size="Small"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="Left">
                                    <asp:TableCell>
                                        <asp:DropDownList ID="RadDropDownListSports" runat="server" DataSourceID="SqlDataSource3" DataTextField="strSport" DataValueField="strSportGenderKey" AutoPostBack="True" DefaultMessage="Select Sport..."
                                            Width="250px" BackColor="Navy" ForeColor="White" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:DropDownList ID="RadDropDownListSportsYears" runat="server" DataSourceID="SqlDataSource4" DataTextField="intYear" DataValueField="intYear" AutoPostBack="True" DefaultMessage="Select Year..."
                                            Width="200px" BackColor="Navy" ForeColor="White" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="Left">
                                    <asp:TableCell ColumnSpan="2">
                                        <asp:Label runat="server" ID="Label1" Text="SELECT BY SCHOOL" Font-Size="Small"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="Left">
                                    <asp:TableCell ColumnSpan="2">
                                        <asp:DropDownList ID="RadDropDownListSchools" runat="server" DataSourceID="SqlDataSource1" DataTextField="strSchool" DataValueField="strSchool" AutoPostBack="True" DefaultMessage="Select School..."
                                            Width="300px" BackColor="Navy" ForeColor="White" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="Left">
                                    <asp:TableCell ColumnSpan="2">
                                        <asp:Label runat="server" ID="Label2" Text="SELECT BY YEAR" Font-Size="Small"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="Left">
                                    <asp:TableCell ColumnSpan="2">
                                        <asp:DropDownList ID="RadDropDownListYears" runat="server" DataSourceID="SqlDataSource2" DataTextField="intYear" DataValueField="intYear" AutoPostBack="True" DefaultMessage="Select Year..."
                                            Width="125px" BackColor="Navy" ForeColor="White" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow><asp:TableCell ColumnSpan="2"><hr /></asp:TableCell></asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell ColumnSpan="2">
                                        <asp:Label runat="server" ID="lblHeader" Text="Make selections above..." Font-Bold="true" Font-Size="Large" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Visible="true"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow BackColor="#fcf6d8">
                                    <asp:TableCell ColumnSpan="2" CssClass="HTMLTable">
                                        <div class="MainStyle">
                                        <%= Session("HTMLContentOSSAA") %>
                                        </div>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell ColumnSpan="2">
                                        <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" 
                                            DataSourceID="SqlDataSource1" AllowPaging="false" Visible="false" Width="600px" >
                                            <MasterTableView DataSourceID="SqlDataSource5" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="Make selection above...">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="STATE CHAMPIONS" 
                                                        AllowFiltering="false" AllowSorting="false" >
                                                        <HeaderStyle Font-Bold="true" />
                                                    </telerik:GridBoundColumn>
                                                </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                        </asp:Panel>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="12" SpanSm="12" SpanXs="12">
                        &nbsp;
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IWATGConnectionString%>" 
        SelectCommand="SELECT DISTINCT [strSchool] FROM [tblStateChampions] WHERE Not strSchool Is Null AND strState = 'OK' ORDER BY [strSchool]">
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT [intYear] FROM [tblStateChampions] WHERE Not intYear Is Null AND strState = 'OK' ORDER BY [intYear] DESC">
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strSport, strSportGenderKey FROM tblSports WHERE intActive > 0 AND strState = 'OK' ORDER BY intActive">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="OK" Name="State" QueryStringField="st" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT intYear FROM tblStateChampions WHERE strSportGenderKey = @selSport AND strState = 'OK' ORDER BY intYear DESC">
            <SelectParameters>
                <asp:ControlParameter Name="selSport" ControlID="RadDropDownListSports" DefaultValue="Dodgers" />
            </SelectParameters>
        </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT intYear FROM tblStateChampions WHERE strSportGenderKey = 'NONE' AND strState = 'OK' ORDER BY intYear DESC">
        </asp:SqlDataSource>  
    </form>
</body>
</html>
