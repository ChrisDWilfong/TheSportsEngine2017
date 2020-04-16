<%@ Page Title="Playoff Central : Oklahoma High School Basketball" Language="VB" AutoEventWireup="false" MasterPageFile="MasterPageBasketballNOAJAX.Master" CodeBehind="PlayoffCentralBK.aspx.vb" Inherits="TheSportsEngine2017.PlayoffCentralBK"  %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/gridPS.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper01">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">  
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="12" SpanSm="12" SpanXs="12" SpanMd="12" SpanLg="12" SpanXl="12">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Image runat="server" ID="playoffCentralAd" ImageUrl="~/images/ads/PlayoffCentralBKDPWeb.png" />
                                    <br />
                                         <asp:DropDownList runat="server" ID="cboClass" AutoPostBack="true" Font-Bold="true" Width="450px" Height="45px" Font-Size="xx-Large" BackColor="Yellow" style="border-color:lightgray; border-radius:5px;">
                                            <asp:ListItem Text="Class 4A Boys AREA" Value="BasketballBoys4A"></asp:ListItem>
                                            <asp:ListItem Text="Class 4A Girls AREA" Value="BasketballGirls4A"></asp:ListItem>
                                            <asp:ListItem Text="Class 3A Boys AREA" Value="BasketballBoys3A"></asp:ListItem>
                                            <asp:ListItem Text="Class 3A Girls AREA" Value="BasketballGirls3A"></asp:ListItem>
                                            <asp:ListItem Text="Class 2A Boys AREA" Value="BasketballBoys2A"></asp:ListItem>
                                            <asp:ListItem Text="Class 2A Girls AREA" Value="BasketballGirls2A"></asp:ListItem>
                                            <asp:ListItem Text="Class A Boys AREA" Value="BasketballBoysA-A"></asp:ListItem>
                                            <asp:ListItem Text="Class A Girls AREA" Value="BasketballGirlsA-A"></asp:ListItem>
                                            <asp:ListItem Text="Class B Boys AREA" Value="BasketballBoysB-A"></asp:ListItem>
                                            <asp:ListItem Text="Class B Girls AREA" Value="BasketballGirlsB-A"></asp:ListItem>
                                            <asp:ListItem Text="Class A Boys STATE" Value="BasketballBoysA"></asp:ListItem>
                                            <asp:ListItem Text="Class A Girls STATE" Value="BasketballGirlsA"></asp:ListItem>
                                            <asp:ListItem Text="Class B Boys STATE" Value="BasketballBoysB"></asp:ListItem>
                                            <asp:ListItem Text="Class B Girls STATE" Value="BasketballGirlsB"></asp:ListItem>
                                        </asp:DropDownList><br />
                                    <asp:Label runat="server" ID="lblHeaderBoys" Font-Size="XX-Large" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;"></asp:Label>
                                    <asp:Table runat="server" ID="tblPlayoffCentralBK" Width="1180px" BorderColor="Black" BorderWidth="2">
                                        <asp:TableRow ID="row1" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR1C0" Text="" Width="20%"></asp:TableCell>
                                            <asp:TableCell ID="cellR1CI" Text="AREA 1 @" Font-Bold="true" Width="20%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR1CII" Text="AREA 2 @" Font-Bold="true" Width="20%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR1CIII" Text="AREA 3 @" Font-Bold="true" Width="20%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR1CIV" Text="AREA 4 @" Font-Bold="true" Width="20%" HorizontalAlign="center"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row0" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR0C0" Width="20%" Text="BRACKETS :&nbsp;" HorizontalAlign="right" Font-Bold="true" ForeColor="Black"></asp:TableCell>
                                            <asp:TableCell ID="cellR0CI" Font-Bold="true" Width="20%" HorizontalAlign="center" ><asp:HyperLink runat="server" ID="hlR0CI" Target="_blank" Text="BRACKETS" Font-Size="X-Large"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR0CII" Font-Bold="true" Width="20%" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR0CII" Target="_blank" Text="BRACKETS" Font-Size="X-Large"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR0CIII" Font-Bold="true" Width="20%" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR0CIII" Target="_blank" Text="BRACKETS" Font-Size="X-Large"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR0CIV" Font-Bold="true" Width="20%" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR0CIV" Target="_blank" Text="BRACKETS" Font-Size="X-Large"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row2" BackColor="LightGray" Height="30px">
                                            <asp:TableCell ID="cellR2C0" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR2CI" HorizontalAlign="center"><asp:Label runat="server" ID="lblR2CI"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR2CII" HorizontalAlign="center"><asp:Label runat="server" ID="lblR2CII"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR2CIII" HorizontalAlign="center"><asp:Label runat="server" ID="lblR2CIII"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR2CIV" HorizontalAlign="center"><asp:Label runat="server" ID="lblR2CIV"></asp:Label></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row3" BackColor="LightBlue" Height="30px">
                                            <asp:TableCell ID="cellR3C0" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR3CI" HorizontalAlign="center"><asp:Label runat="server" ID="lblR3CI"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR3CII" HorizontalAlign="center"><asp:Label runat="server" ID="lblR3CII"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR3CIII" HorizontalAlign="center"><asp:Label runat="server" ID="lblR3CIII"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR3CIV" HorizontalAlign="center"><asp:Label runat="server" ID="lblR3CIV"></asp:Label></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row4" BackColor="LightGray" Height="30px">
                                            <asp:TableCell ID="cellR4C0" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR4CI" HorizontalAlign="center"><asp:Label runat="server" ID="lblR4CI"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR4CII" HorizontalAlign="center"><asp:Label runat="server" ID="lblR4CII"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR4CIII" HorizontalAlign="center"><asp:Label runat="server" ID="lblR4CIII"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR4CIV" HorizontalAlign="center"><asp:Label runat="server" ID="lblR4CIV"></asp:Label></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row5" BackColor="LightBlue" Height="30px">
                                            <asp:TableCell ID="cellR5C0" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR5CI" HorizontalAlign="center"><asp:Label runat="server" ID="lblR5CI"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR5CII" HorizontalAlign="center"><asp:Label runat="server" ID="lblR5CII"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR5CIII" HorizontalAlign="center"><asp:Label runat="server" ID="lblR5CIII"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR5CIV" HorizontalAlign="center"><asp:Label runat="server" ID="lblR5CIV"></asp:Label></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row6" BackColor="LightGray" Height="30px">
                                            <asp:TableCell ID="cellR6C0" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR6CI" HorizontalAlign="center"><asp:Label runat="server" ID="lblR6CI"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR6CII" HorizontalAlign="center"><asp:Label runat="server" ID="lblR6CII"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR6CIII" HorizontalAlign="center"><asp:Label runat="server" ID="lblR6CIII"></asp:Label></asp:TableCell>
                                            <asp:TableCell ID="cellR6CIV" HorizontalAlign="center"><asp:Label runat="server" ID="lblR6CIV"></asp:Label></asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>
