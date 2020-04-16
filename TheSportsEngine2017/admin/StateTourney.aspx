<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StateTourney.aspx.vb" Inherits="TheSportsEngine2017.StateTourney" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../styles/default.css" rel="stylesheet" />
    <link href="../styles/grid.css" rel="stylesheet" />
    <link href="speech.css" rel="stylesheet" />
    <link href="~/Content/main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function RowSelected(sender, eventArgs) {   
            var grid = sender;
            var MasterTable = grid.get_masterTableView();
            var row = MasterTable.get_dataItems()[eventArgs.get_itemIndexHierarchical()];
            var cell = MasterTable.getCellByColumnUniqueName(row, "Id");
        }

    </script>
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
        <script type="text/javascript">
            function rowDblClick(sender, eventArgs) {
                sender.get_masterTableView().editItem(eventArgs.get_itemIndexHierarchical());
            }
        </script>
    </telerik:RadCodeBlock>
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager runat="server"></telerik:RadScriptManager>
    <telerik:RadAjaxManager runat="server" ID="RadAjaxManager1" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadGrid1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                    <telerik:AjaxUpdatedControl ControlID="RadWindowManager1" />
                    <telerik:AjaxUpdatedControl ControlID="RadInputManager1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <telerik:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel1" />
    <div class="white-box">
        <div>
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <telerik:RadDropDownList runat="server" ID="RadDropDownSports" AutoPostBack="true" CssClass="RadButton" >
                            <Items>
                                <telerik:DropDownListItem Text="Select Sport..." Value="Select..." />
                                <telerik:DropDownListItem Text="Wrestling Dual" Value="WrestlingDual" />
                            </Items>
                        </telerik:RadDropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <telerik:RadDropDownList runat="server" ID="RadDropDownYear" DataSourceID="SqlDataSource2" DataTextField="intYear" DataValueField="intYear" CssClass="RadButton" AutoPostBack="true">
                        </telerik:RadDropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <telerik:RadDropDownList runat="server" ID="RadDropDownClass" CssClass="RadButton" AutoPostBack="true" SkinID="Bootstrap">
                            <Items>
                                <telerik:DropDownListItem Value="Select..." Text="Select..." />
                                <telerik:DropDownListItem Value="6A" Text="6A" />
                                <telerik:DropDownListItem Value="5A" Text="5A" />
                                <telerik:DropDownListItem Value="4A" Text="4A" />
                                <telerik:DropDownListItem Value="3A" Text="3A" />
                                <telerik:DropDownListItem Value="2A" Text="2A" />
                            </Items>
                        </telerik:RadDropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="left">
                    <asp:TableCell>
                        <telerik:RadGrid RenderMode="Lightweight" ID="RadGrid1" runat="server" EnableViewState="true" Width="700px">
                            <ClientSettings EnableRowHoverStyle="true"></ClientSettings>
                                <MasterTableView DataSourceID="SqlDataSourceWrestlingDual" DataKeyNames="Id" InsertItemPageIndexAction="ShowItemOnCurrentPage"
                                    AllowFilteringByColumn="true" AllowSorting="false" CommandItemDisplay="Top"     
                                    EditMode="InPlace" AutoGenerateColumns="false" EditFormSettings-PopUpSettings-KeepInScreenBounds="true" >
                                    <CommandItemSettings ShowSaveChangesButton="false" ShowAddNewRecordButton="true" ShowPrintButton="false" ShowRefreshButton="false" />
                                        <BatchEditingSettings EditType="Row" /> 
                                        <FilterItemStyle ForeColor="Black" />
                                        <Columns>
                                            <telerik:GridEditCommandColumn />
                                            <telerik:GridBoundColumn DataField="strRound" HeaderText="Q/S/C" Display="true" AllowFiltering="false" UniqueName="strRound">
                                                <HeaderStyle Width="75px" HorizontalAlign="Center" />
                                                <ItemStyle Width="75px" HorizontalAlign="Center" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="intGameNo" HeaderText="GM #" Display="true" AllowFiltering="false" UniqueName="intGameNo">
                                                <HeaderStyle Width="75px" HorizontalAlign="Center" />
                                                <ItemStyle Width="75px" HorizontalAlign="Center" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="strWinner" HeaderText="Winner" Display="true" AllowFiltering="false" UniqueName="strWinner">
                                               <HeaderStyle Width="150px" HorizontalAlign="Center" />
                                                <ItemStyle Width="150px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="strLoser" HeaderText="Loser" Display="true" AllowFiltering="false" UniqueName="strLoser">
                                               <HeaderStyle Width="150px" HorizontalAlign="Center" />
                                                <ItemStyle Width="150px" />
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn DataField="intWinner" HeaderText="Winner #" Display="true" AllowFiltering="false" UniqueName="intWinner">
                                                <HeaderStyle Width="75px" HorizontalAlign="Center" />
                                                <ItemStyle Width="75px" />
                                            </telerik:GridBoundColumn> 
                                            <telerik:GridBoundColumn DataField="intLoser" HeaderText="Loser #" Display="true" AllowFiltering="false" UniqueName="intLoser">
                                                <HeaderStyle Width="75px" HorizontalAlign="Center" />
                                                <ItemStyle Width="75px" />
                                            </telerik:GridBoundColumn>
                                        </Columns>
                                </MasterTableView>
                                <ClientSettings>
                                    <ClientEvents OnRowDblClick="rowDblClick" />
                                </ClientSettings>
                        </telerik:RadGrid>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Label runat="server" ID="lblMessage" ForeColor="Red"></asp:Label>
            </div>
            </div>
    </form>
    <asp:SqlDataSource ID="SqlDataSourceWrestlingDual" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>"   
        SelectCommand="SELECT * FROM tblWrestlingDual WHERE intYear = @Year AND strClass = @Class AND strState = @State ORDER BY intGameNo">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="OK" Name="State" QueryStringField="st" />
            <asp:ControlParameter ControlID="RadDropDownYear" DefaultValue="1900" PropertyName="SelectedValue" Name="Year" Type="Int16" />
            <asp:ControlParameter ControlID="RadDropDownClass" DefaultValue="None" PropertyName="SelectedValue" Name="Class" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>"       
        SelectCommand="SELECT DISTINCT [intYear] FROM [tblStateChampions] WHERE Not intYear Is Null AND strSportGenderKey = @SportGenderKey AND strState = @State ORDER BY [intYear] DESC">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="OK" Name="State" QueryStringField="st" />
            <asp:ControlParameter ControlID="RadDropDownSports" DefaultValue="None" PropertyName="SelectedValue" Name="SportGenderKey" />
        </SelectParameters>
    </asp:SqlDataSource>
</body>
</html>
