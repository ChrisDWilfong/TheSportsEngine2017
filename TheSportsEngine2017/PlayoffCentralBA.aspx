<%@ Page Title="Playoff Central : Oklahoma High School Baseball" Language="VB" AutoEventWireup="false" MasterPageFile="MasterPageBaseballPS.Master" CodeBehind="PlayoffCentralBA.aspx.vb" Inherits="TheSportsEngine2017.PlayoffCentralBA"  %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/gridPS.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
    <link href="styles/TableStyle.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanelMOBILE" runat="server" CssClass="grid_wrapper0">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <asp:Label runat="server" ID="lblHeaderBoysM" Font-Size="Medium" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;"></asp:Label><br />
                        <asp:Label runat="server" ID="lblHeaderBoys1M" Font-Size="Small" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Text=""></asp:Label><br />
                        <asp:Label runat="server" ID="Label3" Font-Size="Small" Font-Italic="true" Font-Bold="true" ForeColor="Red" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Text="Click the team below to see season scores and playoff history."></asp:Label>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>

            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                         <asp:DropDownList runat="server" ID="cboClassm" AutoPostBack="true" Font-Bold="true" Height="42px" Width="100%" Font-Size="X-Large" BackColor="Yellow" style="border-color:lightgray; border-radius:5px;">
                            <asp:ListItem Text="Select Class..." Value =""></asp:ListItem>   
                            <asp:ListItem Text="Select Class..." Value =""></asp:ListItem>   
                            <asp:ListItem Text="Class 6A STATE" Value="Baseball6A"></asp:ListItem>
                            <asp:ListItem Text="Class 5A STATE" Value="Baseball5A"></asp:ListItem>
                            <asp:ListItem Text="Class 4A STATE" Value="Baseball4A"></asp:ListItem>
                            <asp:ListItem Text="Class 3A STATE" Value="Baseball3A"></asp:ListItem> 
                            <asp:ListItem Text="Class 2A STATE" Value="Baseball2A"></asp:ListItem>                                
                            <asp:ListItem Text="Class A STATE" Value="BaseballA"></asp:ListItem>
                            <asp:ListItem Text="Class B STATE" Value="BaseballB"></asp:ListItem>
                        </asp:DropDownList>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div style="background-color:gray;font-size:xx-large;text-align:left;padding-left:5px;">
                            <asp:Label runat="server" ID="cellQFm" Text="QUARTERFINALS" Font-Bold="true" Width="100%" ForeColor="White" Height="45px"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivTop" style="background-color:#f0efef;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR1C1m" Text="&nbsp;" BackColor="#f0efef" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR1C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivTop" style="background-color:#f0efef;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR2C1m" Text="&nbsp;" BackColor="#f0efef" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR2C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivBottom" style="background-color:lightgray;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR3C1m" Text="&nbsp;" BackColor="lightgray" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR3C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivBottom" style="background-color:lightgray;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR4C1m" Text="&nbsp;" BackColor="lightgray" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR4C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivTop" style="background-color:#f0efef;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR5C1m" Text="&nbsp;" BackColor="#f0efef" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR5C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivTop" style="background-color:#f0efef;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR6C1m" Text="&nbsp;" BackColor="#f0efef" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR6C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivBottom" style="background-color:lightgray;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR7C1m" Text="&nbsp;" BackColor="lightgray" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR7C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivBottom" style="background-color:lightgray;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR8C1m" Text="&nbsp;" BackColor="lightgray" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR8C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>

            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div style="background-color:gray;font-size:xx-large;text-align:left;padding-left:5px;">
                            <asp:Label runat="server" ID="Label2" Text="SEMIFINALS" Font-Bold="true" Width="100%" ForeColor="White" Height="45px"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivTop" style="background-color:#f0efef;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR9C1m" Text="&nbsp;" BackColor="#f0efef" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR9C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivTop" style="background-color:#f0efef;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR10C1m" Text="&nbsp;" BackColor="#f0efef" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR10C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivBottom" style="background-color:lightgray;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR11C1m" Text="&nbsp;" BackColor="lightgray" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR11C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivBottom" style="background-color:lightgray;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR12C1m" Text="&nbsp;" BackColor="lightgray" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR12C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div style="background-color:gray;font-size:xx-large;text-align:left;padding-left:5px;">
                            <asp:Label runat="server" ID="Label4" Text="CHAMPIONSHIP" Font-Bold="true" Width="100%" ForeColor="White" Height="45px"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivTop" style="background-color:#f0efef;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR13C1m" Text="&nbsp;" BackColor="#f0efef" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR13C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div class="theDivTop" style="background-color:#f0efef;padding-left:5px;padding-top:10px;height:40px;width:100%;">
                            <asp:HyperLink runat="server" ID="hlR14C1m" Text="&nbsp;" BackColor="#f0efef" Font-Size="X-Large" Width="85%"></asp:HyperLink>
                            <asp:Label runat="server" ID="hlR14C2m" Text="&nbsp;" CssClass="teamScore" Font-Size="X-Large"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div style="background-color:gray;font-size:small;text-align:left;padding-left:5px;">
                            <asp:TableCell BackColor="LightGray" ColumnSpan="2"><h3><asp:Label runat="server" ID="lblTeam1SeasonInfoM" ForeColor="Yellow"></asp:Label></h3></asp:TableCell>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <telerik:RadGrid ID="RadGridTeamSeasonM" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                             AllowPaging="false" >
                            <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                <Columns>
                                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Season" UniqueName="strDisplay" HeaderText="2018 SEASON" 
                                        AllowFiltering="false" AllowSorting="false" >
                                        <HeaderStyle Font-Bold="true"  />
                                    </telerik:GridBoundColumn>
                                </Columns>
                            </MasterTableView>
                        </telerik:RadGrid>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <div style="background-color:gray;font-size:small;text-align:left;padding-left:5px;">
                            <asp:TableCell BackColor="LightGray" ColumnSpan="2"><h3><asp:Label runat="server" ID="lblTeam2SeasonInfoM" ForeColor="Yellow"></asp:Label></h3></asp:TableCell>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <telerik:RadGrid ID="RadGridTeamHistoryM" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"
                                     AllowPaging="false" >
                            <MasterTableView DataSourceID="SqlDataSource2" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                <Columns>
                                    <telerik:GridBoundColumn DataField="strDisplayFinal" HeaderAbbr="Playoff History" UniqueName="strDisplayFinal" HeaderText="PLAYOFF HISTORY" 
                                            AllowFiltering="false" AllowSorting="false" >
                                        <HeaderStyle Font-Bold="true"  />
                                    </telerik:GridBoundColumn>
                                </Columns>
                            </MasterTableView>
                        </telerik:RadGrid>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <br />
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow Visible="false">
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <asp:HyperLink ID="hlBottomM" runat="server" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4XH5CLU3AKTVW" ImageUrl="~/images/OK/ORDER100YearSpecial.png" Target="_blank"></asp:HyperLink>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>

    <telerik:RadAjaxPanel ID="RadAjaxPanelWEB" runat="server" CssClass="grid_wrapper01">          
            <asp:Table runat="server" ID="tblHeader" HorizontalAlign="Center" Visible="true">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="cboClass" AutoPostBack="true" Font-Bold="true" Width="450px" Height="45px" Font-Size="xx-Large" BackColor="Yellow" style="border-color:lightgray; border-radius:5px;">
                            <asp:ListItem Text="Select Class..." Value =""></asp:ListItem>   
                            <asp:ListItem Text="Class 6A STATE" Value="Baseball6A"></asp:ListItem>
                            <asp:ListItem Text="Class 5A STATE" Value="Baseball5A"></asp:ListItem>
                            <asp:ListItem Text="Class 4A STATE" Value="Baseball4A"></asp:ListItem> 
                            <asp:ListItem Text="Class 3A STATE" Value="Baseball3A"></asp:ListItem> 
                            <asp:ListItem Text="Class 2A STATE" Value="Baseball2A"></asp:ListItem>  
                            <asp:ListItem Text="Class A STATE" Value="BaseballA"></asp:ListItem>
                            <asp:ListItem Text="Class B STATE" Value="BaseballB"></asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table runat="server" ID="tblContent" HorizontalAlign="Center" visible="true">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" ID="lblHeaderBoys" Font-Size="XX-Large" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;"></asp:Label><br />
                        <asp:Label runat="server" ID="lblHeaderBoys1" Font-Size="Large" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Text=""></asp:Label><br />
                        <asp:Label runat="server" ID="lblNote" Font-Size="Medium" Font-Italic="true" Font-Bold="true" ForeColor="Red" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Text="Click the team below to see season scores and playoff history."></asp:Label><br />
                        <asp:HyperLink runat="server" Text="SHOW ME THE BRACKET!" ID="hlShowBracket" NavigateUrl="~/PlayoffCentralBA.aspx" Font-Bold="true" Font-Size="XX-Large"></asp:HyperLink>   
                        <asp:Table runat="server" ID="tblPlayoffCentralBA" Width="1080px" BorderColor="Black" BorderWidth="1">
                                        <asp:TableRow>
                                            <asp:TableCell ColumnSpan="7">
                                                <asp:HyperLink runat="server" ID="hlState" Font-Bold="true" Font-Size="X-Large" Target="_blank"></asp:HyperLink>&nbsp;&nbsp;
                                                <asp:HyperLink runat="server" ID="hlNews" Font-Bold="true" Font-Size="X-Large" ForeColor="Red" Target="_blank"></asp:HyperLink>&nbsp;&nbsp;
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row1" BackColor="DarkGray" ForeColor="White" BorderWidth="0">
                                            <asp:TableCell ID="cellR1C1" Text="QUARTERFINALS" Font-Bold="true" Width="20%" HorizontalAlign="center" BackColor="Gray"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C2" Text="" Font-Bold="true" Width="5%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C3" Text="SEMI FINALS" Font-Bold="true" Width="20%" HorizontalAlign="center" BackColor="Gray"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C4" Text="" Font-Bold="true" Width="5%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C5" Text="CHAMPIONSHIP" Font-Bold="true" Width="20%" HorizontalAlign="center" BackColor="Gray"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C6" Text="" Font-Bold="true" Width="5%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C7" Text="CHAMPIONS" Font-Bold="true" Width="20%" HorizontalAlign="center" BackColor="Gray"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row2" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR2C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black" ><asp:HyperLink runat="server" ID="hlR2C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR2C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR2C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR2C3" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR2C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR2C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR2C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR2C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR2C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR2C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR2C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR2C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR2C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row3" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR3C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR3C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR3C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR3C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR3C3" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR3C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR3C4" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR3C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR3C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR3C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR3C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR3C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR3C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR3C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row4" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR4C1" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR4C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR4C2" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR4C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR4C3" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR4C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR4C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR4C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR4C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR4C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR4C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR4C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR4C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR4C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row5" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR5C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR5C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR5C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR5C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR5C3" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR5C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR5C4" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR5C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR5C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR5C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR5C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR5C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR5C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR5C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row6" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR6C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR6C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR6C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR6C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR6C3" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR6C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR6C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR6C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR6C5" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR6C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR6C6" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR6C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR6C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR6C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row7" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR7C1" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR7C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR7C2" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR7C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR7C3" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR7C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR7C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR7C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR7C5" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR7C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR7C6" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR7C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR7C7" Font-Bold="true" HorizontalAlign="center" BackColor="Red" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR7C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row8" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR8C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR8C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR8C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR8C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR8C3" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR8C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR8C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR8C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR8C5" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR8C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR8C6" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR8C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR8C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR8C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row9" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR9C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR9C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR9C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR9C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR9C3" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR9C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR9C4" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR9C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR9C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR9C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR9C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR9C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR9C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR9C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row10" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR10C1" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR10C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR10C2" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR10C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR10C3" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR10C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR10C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR10C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR10C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR10C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR10C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR10C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR10C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR10C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row11" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR11C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR11C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR11C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR11C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR11C3" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR11C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR11C4" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR11C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR11C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR11C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR11C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR11C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR11C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR11C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row12" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR12C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR12C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR12C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR12C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR12C3" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR12C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR12C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR12C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR12C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR12C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR12C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR12C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR12C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR12C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                    </asp:TableCell>
                </asp:TableRow>
    </asp:Table>
    <asp:Table runat="server" ID="tblBKPlayoffMatchup" Width="980px" HorizontalAlign="Center">  
    
       <asp:TableRow>
                <asp:TableCell BackColor="LightGray"><h3><asp:Label runat="server" ID="lblTeam1SeasonInfo"></asp:Label></h3></asp:TableCell>
                <asp:TableCell BackColor="LightGray"><h3><asp:Label runat="server" ID="lblTeam2SeasonInfo"></asp:Label></h3></asp:TableCell>
      </asp:TableRow>

      <asp:TableRow>
                <asp:TableCell VerticalAlign="Top">
                    <telerik:RadGrid ID="RadGridTeamSeason" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                         AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                            <Columns>
                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Season" UniqueName="strDisplay" HeaderText="2018 SEASON" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true"  />
                                </telerik:GridBoundColumn>
                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
                <asp:TableCell VerticalAlign="Top">
                    <telerik:RadGrid ID="RadGridTeamHistory" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"
                         AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSource2" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                            <Columns>
                                <telerik:GridBoundColumn DataField="strDisplayFinal" HeaderAbbr="Playoff History" UniqueName="strDisplayFinal" HeaderText="PLAYOFF HISTORY" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true"  />
                                </telerik:GridBoundColumn>
                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow Visible="false">
                <asp:TableCell ColumnSpan="2"><asp:HyperLink ID="hlBottom" runat="server" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4XH5CLU3AKTVW" ImageUrl="~/images/OK/ORDER100YearSpecial.png" Target="_blank" Visible="false"></asp:HyperLink></asp:TableCell>
            </asp:TableRow>
        </asp:Table>        

    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OSSAARankingsConnectionString %>" 
        SelectCommand="SELECT * FROM __IWATGBaseballSpringScores WHERE SchoolName = @team AND strSportGenderKey = @selectedSport ORDER BY gameDate">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="team" SessionField="globalTeam" DefaultValue="Dodgers" Type="String" />
            <asp:ControlParameter Name="selectedSport" ControlID="cboClass" DefaultValue="DODGERS" />
        </SelectParameters>
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM __viewBaseballStateTournamentGamesSort WHERE strState = @state AND (strWinner = @team OR strLoser = @team) AND strSportGenderKey = @sportGenderKey ORDER BY intYear DESC, intSortRound">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="team" SessionField="globalTeamTourney" DefaultValue="Dodgers" Type="String" />
            <asp:SessionParameter Name="sportGenderKey" SessionField="globalSportGenderKey" DefaultValue="Dodgers" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>  
</asp:Content>
