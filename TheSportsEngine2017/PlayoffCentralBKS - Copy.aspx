<%@ Page Title="Playoff Central : Oklahoma High School Basketball" Language="VB" AutoEventWireup="false" MasterPageFile="MasterPageBasketball.Master" CodeBehind="PlayoffCentralBKS.aspx.vb" Inherits="TheSportsEngine2017.PlayoffCentralBKS"  %>
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
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper1">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">  
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="10" SpanSm="10" SpanXs="10" SpanMd="10" SpanLg="10" SpanXl="10">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Image runat="server" ID="playoffCentralAd" ImageUrl="~/images/ads/PlayoffCentralBKDPWeb.png" />
                                    <br />

                                    <asp:DropDownList runat="server" ID="cboClass" AutoPostBack="true" Font-Bold="true" Width="450px" Height="45px" Font-Size="xx-Large" BackColor="Yellow" style="border-color:lightgray; border-radius:5px;">
                                            <asp:ListItem Text="Class A Boys STATE" Value="BasketballBoysA"></asp:ListItem>
                                            <asp:ListItem Text="Class A Girls STATE" Value="BasketballGirlsA"></asp:ListItem>
                                            <asp:ListItem Text="Class B Boys STATE" Value="BasketballBoysB"></asp:ListItem>
                                            <asp:ListItem Text="Class B Girls STATE" Value="BasketballGirlsB"></asp:ListItem>
                                            <asp:ListItem Text="Class 4A Boys AREA" Value="BasketballBoys4A"></asp:ListItem>
                                            <asp:ListItem Text="Class 4A Girls AREA" Value="BasketballGirls4A"></asp:ListItem>
                                            <asp:ListItem Text="Class 3A Boys AREA" Value="BasketballBoys3A"></asp:ListItem>
                                            <asp:ListItem Text="Class 3A Girls AREA" Value="BasketballGirls3A"></asp:ListItem>
                                            <asp:ListItem Text="Class 2A Boys AREA" Value="BasketballBoys2A"></asp:ListItem>
                                            <asp:ListItem Text="Class 2A Girls AREA" Value="BasketballGirls2A"></asp:ListItem>
                                <asp:ListItem Text="Class 6A Boys STATE" Value="BasketballBoys6A"></asp:ListItem>
                                <asp:ListItem Text="Class 6A Girls STATE" Value="BasketballGirls6A"></asp:ListItem>
                                <asp:ListItem Text="Class 5A Boys STATE" Value="BasketballBoys5A"></asp:ListItem>
                                <asp:ListItem Text="Class 5A Girls STATE" Value="BasketballGirls5A"></asp:ListItem>
                                <asp:ListItem Text="Class 4A Boys STATE" Value="BasketballBoys4A"></asp:ListItem>
                                <asp:ListItem Text="Class 4A Girls STATE" Value="BasketballGirls4A"></asp:ListItem>
                                <asp:ListItem Text="Class 3A Boys STATE" Value="BasketballBoys3A"></asp:ListItem>
                                <asp:ListItem Text="Class 3A Girls STATE" Value="BasketballGirls3A"></asp:ListItem>
                                <asp:ListItem Text="Class 2A Boys STATE" Value="BasketballBoys2A"></asp:ListItem>
                                <asp:ListItem Text="Class 2A Girls STATE" Value="BasketballGirls2A"></asp:ListItem>
                                <asp:ListItem Text="Class A Boys STATE" Value="BasketballBoysA"></asp:ListItem>
                                <asp:ListItem Text="Class A Girls STATE" Value="BasketballGirlsA"></asp:ListItem>
                                <asp:ListItem Text="Class B Boys STATE" Value="BasketballBoysB"></asp:ListItem>
                                <asp:ListItem Text="Class B Girls STATE" Value="BasketballGirlsB"></asp:ListItem>

                                    </asp:DropDownList><br />
                                    <asp:Label runat="server" ID="lblHeaderBoys" Font-Size="XX-Large" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;"></asp:Label><br />
                                    <asp:Label runat="server" ID="Label1" Font-Size="Medium" Font-Italic="true" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Text="Click the team below to see season scores and playoff history."></asp:Label>
                                    <asp:Table runat="server" ID="tblPlayoffCentralBK" Width="1180px" BorderColor="Black" BorderWidth="1">
                                        <asp:TableRow>
                                            <asp:TableCell ColumnSpan="7">
                                                <asp:HyperLink runat="server" ID="hlState" Font-Bold="true" Font-Size="X-Large" Target="_blank"></asp:HyperLink>&nbsp;&nbsp;
                                                <asp:HyperLink runat="server" ID="hlArea1" Font-Bold="true" Font-Size="X-Large" Target="_blank"></asp:HyperLink>&nbsp;&nbsp;
                                                <asp:HyperLink runat="server" ID="hlArea2" Font-Bold="true" Font-Size="X-Large" Target="_blank"></asp:HyperLink>&nbsp;&nbsp;
                                                <asp:HyperLink runat="server" ID="hlArea3" Font-Bold="true" Font-Size="X-Large" Target="_blank"></asp:HyperLink>&nbsp;&nbsp;
                                                <asp:HyperLink runat="server" ID="hlArea4" Font-Bold="true" Font-Size="X-Large" Target="_blank"></asp:HyperLink>&nbsp;&nbsp;
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

    <asp:Table runat="server" ID="tblBKPlayoffMatchup">  
                  
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="center">
                <asp:HyperLink ID="hlTitleAd1" runat="server" ImageUrl="images/ads/StateTitleTalkBanner100s.png" NavigateUrl="http://ok.statetitletalk.com/" Visible="false" Target="_blank" Width="100%" ></asp:HyperLink>
            </asp:TableCell>
        </asp:TableRow>

       <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
                <h2><asp:Label runat="server" ID="lblTeamVSTeam" Font-Bold="true"></asp:Label></h2>
            </asp:TableCell>
       </asp:TableRow>
       
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="center" ColumnSpan="2"><asp:HyperLink runat="server" ID="hlSchoolAd1" Visible="true" Target="_blank"></asp:HyperLink></asp:TableCell>
        </asp:TableRow>

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
                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Season" UniqueName="strDisplay" HeaderText="2017-18 SEASON" 
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

            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">&nbsp;</asp:TableCell>
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OSSAARankingsConnectionString %>" 
        SelectCommand="SELECT * FROM __IWATGBasketballScores WHERE SchoolName = @team AND strSportGenderKey = @selectedSport ORDER BY gameDate">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="team" SessionField="globalTeam" DefaultValue="Dodgers" Type="String" />
            <asp:ControlParameter Name="selectedSport" ControlID="cboClass" DefaultValue="DODGERS" />
        </SelectParameters>
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM __viewBasketballStateTournamentGamesSort WHERE strState = @state AND (strWinner = @team OR strLoser = @team) ORDER BY intYear DESC, intSortRound">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="team" SessionField="globalTeam" DefaultValue="Dodgers" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>  
</asp:Content>
