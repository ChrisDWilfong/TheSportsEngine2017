<%@ Page Title="Oklahoma High School Sports" Language="VB" AutoEventWireup="false" MasterPageFile="MasterPage2017.Master" CodeBehind="PlayoffCentralBK.aspx.vb" Inherits="TheSportsEngine2017.PlayoffCentralBK"  %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/gridPS.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text=""></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text=""></asp:Label></h3>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper1">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">  
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="12" SpanSm="12" SpanXs="12" SpanMd="12" SpanLg="12" SpanXl="12">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:DropDownList runat="server" ID="cboClass" AutoPostBack="true" Font-Bold="true" Width="250px" Font-Size="x-Large" BackColor="LightYellow" style="border-color:lightgray; border-radius:5px; padding-left:5px; padding-right:25px; padding-top:5px; padding-bottom:5px;">
                                        <asp:ListItem Text="Class 4A" Value="4A" Enabled="false"></asp:ListItem>
                                        <asp:ListItem Text="Class 3A" Value="3A" Enabled="false"></asp:ListItem>
                                        <asp:ListItem Text="Class 2A" Value="2A" Enabled="false"></asp:ListItem>
                                        <asp:ListItem Text="Class A" Value="A"></asp:ListItem>
                                        <asp:ListItem Text="Class B" Value="B"></asp:ListItem>
                                    </asp:DropDownList><br />
                                    <asp:Label runat="server" ID="lblHeaderBoys" Font-Size="XX-Large" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;"></asp:Label>
                                    <asp:Table runat="server" ID="tblPlayoffCentralBK" Width="1180px" BorderColor="Black" BorderWidth="2">
                                        <asp:TableRow ID="row1" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR1C1" Text="" Width="20%"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C2" Text="AREA 1 @" Font-Bold="true" Width="20%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C3" Text="AREA 2 @" Font-Bold="true" Width="20%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C4" Text="AREA 3 @" Font-Bold="true" Width="20%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C5" Text="AREA 4 @" Font-Bold="true" Width="20%" HorizontalAlign="center"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row2" BackColor="LightGray" Height="30px">
                                            <asp:TableCell ID="cellR2C1" Text="CHAMPIONSHIP :&nbsp;" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR2C2" HorizontalAlign="center"><asp:Label runat="server" ID="lblR2C2"></asp:Label><asp:ImageButton runat="server" id="imgR2C2" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton>
                                                <ajax:PopupControlExtender ID="PopupControlExtenderR2C2" runat="server" PopupControlId="PanelPopup"
                                                    TargetControlId="imgR2C2" DynamicContextKey="1_1" dynamiccontrolid="PanelPopup"
                                                    DynamicServiceMethod="GetDynamicContent" position="Bottom">
                                                </ajax:PopupControlExtender>  
                                            </asp:TableCell>
                                            <asp:TableCell ID="cellR2C3" HorizontalAlign="center"><asp:Label runat="server" ID="lblR2C3"></asp:Label><asp:ImageButton runat="server" id="imgR2C3" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR2C4" HorizontalAlign="center"><asp:Label runat="server" ID="lblR2C4"></asp:Label><asp:ImageButton runat="server" id="imgR2C4" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR2C5" HorizontalAlign="center"><asp:Label runat="server" ID="lblR2C5"></asp:Label><asp:ImageButton runat="server" id="imgR2C5" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row3" BackColor="LightBlue" Height="30px">
                                            <asp:TableCell ID="cellR3C1" Text="CONS CHAMPIONSHIP :&nbsp;" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR3C2" HorizontalAlign="center"><asp:Label runat="server" ID="lblR3C2"></asp:Label><asp:ImageButton runat="server" id="imgR3C2" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR3C3" HorizontalAlign="center"><asp:Label runat="server" ID="lblR3C3"></asp:Label><asp:ImageButton runat="server" id="imgR3C3" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR3C4" HorizontalAlign="center"><asp:Label runat="server" ID="lblR3C4"></asp:Label><asp:ImageButton runat="server" id="imgR3C4" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR3C5" HorizontalAlign="center"><asp:Label runat="server" ID="lblR3C5"></asp:Label><asp:ImageButton runat="server" id="imgR3C5" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row4" BackColor="LightGray" Height="30px">
                                            <asp:TableCell ID="cellR4C1" Text="THURS CONSOLATION :&nbsp;" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR4C2" HorizontalAlign="center"><asp:Label runat="server" ID="lblR4C2"></asp:Label><asp:ImageButton runat="server" id="imgR4C2" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR4C3" HorizontalAlign="center"><asp:Label runat="server" ID="lblR4C3"></asp:Label><asp:ImageButton runat="server" id="imgR4C3" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR4C4" HorizontalAlign="center"><asp:Label runat="server" ID="lblR4C4"></asp:Label><asp:ImageButton runat="server" id="imgR4C4" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR4C5" HorizontalAlign="center"><asp:Label runat="server" ID="lblR4C5"></asp:Label><asp:ImageButton runat="server" id="imgR4C5" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row5" BackColor="LightBlue" Height="30px">
                                            <asp:TableCell ID="cellR5C1" Text="THURS CONSOLATION :&nbsp;" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR5C2" HorizontalAlign="center"><asp:Label runat="server" ID="lblR5C2"></asp:Label><asp:ImageButton runat="server" id="imgR5C2" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR5C3" HorizontalAlign="center"><asp:Label runat="server" ID="lblR5C3"></asp:Label><asp:ImageButton runat="server" id="imgR5C3" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR5C4" HorizontalAlign="center"><asp:Label runat="server" ID="lblR5C4"></asp:Label><asp:ImageButton runat="server" id="imgR5C4" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR5C5" HorizontalAlign="center"><asp:Label runat="server" ID="lblR5C5"></asp:Label><asp:ImageButton runat="server" id="imgR5C5" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    <br /><br />
                                </Content>

                            </telerik:LayoutRow>

                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Label runat="server" ID="lblHeaderGirls" Font-Bold="true" Font-Size="XX-Large" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;"></asp:Label>
                                    <asp:Table runat="server" ID="tblPlayoffCentralBK2" Width="1180px" BorderColor="Black" BorderWidth="2">
                                        <asp:TableRow ID="row6" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR6C1" Text="" Width="20%"></asp:TableCell>
                                            <asp:TableCell ID="cellR6C2" Text="AREA 1 @" Font-Bold="true" Width="20%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR6C3" Text="AREA 2 @" Font-Bold="true" Width="20%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR6C4" Text="AREA 3 @" Font-Bold="true" Width="20%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR6C5" Text="AREA 4 @" Font-Bold="true" Width="20%" HorizontalAlign="center"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row7" BackColor="LightGray" Height="30px">
                                            <asp:TableCell ID="cellR7C1" Text="CHAMPIONSHIP :&nbsp;" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR7C2" HorizontalAlign="center"><asp:Label runat="server" ID="lblR7C2"></asp:Label><asp:ImageButton runat="server" id="imgR7C2" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR7C3" HorizontalAlign="center"><asp:Label runat="server" ID="lblR7C3"></asp:Label><asp:ImageButton runat="server" id="imgR7C3" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR7C4" HorizontalAlign="center"><asp:Label runat="server" ID="lblR7C4"></asp:Label><asp:ImageButton runat="server" id="imgR7C4" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR7C5" HorizontalAlign="center"><asp:Label runat="server" ID="lblR7C5"></asp:Label><asp:ImageButton runat="server" id="imgR7C5" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row8" BackColor="LightPink" Height="30px">
                                            <asp:TableCell ID="cellR8C1" Text="CONS CHAMPIONSHIP :&nbsp;" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR8C2" HorizontalAlign="center"><asp:Label runat="server" ID="lblR8C2"></asp:Label><asp:ImageButton runat="server" id="imgR8C2" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR8C3" HorizontalAlign="center"><asp:Label runat="server" ID="lblR8C3"></asp:Label><asp:ImageButton runat="server" id="imgR8C3" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR8C4" HorizontalAlign="center"><asp:Label runat="server" ID="lblR8C4"></asp:Label><asp:ImageButton runat="server" id="imgR8C4" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR8C5" HorizontalAlign="center"><asp:Label runat="server" ID="lblR8C5"></asp:Label><asp:ImageButton runat="server" id="imgR8C5" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row9" BackColor="LightGray" Height="30px">
                                            <asp:TableCell ID="cellR9C1" Text="THURS CONSOLATION :&nbsp;" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR9C2" HorizontalAlign="center"><asp:Label runat="server" ID="lblR9C2"></asp:Label><asp:ImageButton runat="server" id="imgR9C2" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR9C3" HorizontalAlign="center"><asp:Label runat="server" ID="lblR9C3"></asp:Label><asp:ImageButton runat="server" id="imgR9C3" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR9C4" HorizontalAlign="center"><asp:Label runat="server" ID="lblR9C4"></asp:Label><asp:ImageButton runat="server" id="imgR9C4" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR9C5" HorizontalAlign="center"><asp:Label runat="server" ID="lblR9C5"></asp:Label><asp:ImageButton runat="server" id="imgR9C5" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row10" BackColor="LightPink" Height="30px">
                                            <asp:TableCell ID="cellR10C1" Text="THURS CONSOLATION :&nbsp;" HorizontalAlign="right" Font-Bold="true"></asp:TableCell>
                                            <asp:TableCell ID="cellR10C2" HorizontalAlign="center"><asp:Label runat="server" ID="lblR10C2"></asp:Label><asp:ImageButton runat="server" id="imgR10C2" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR10C3" HorizontalAlign="center"><asp:Label runat="server" ID="lblR10C3"></asp:Label><asp:ImageButton runat="server" id="imgR10C3" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR10C4" HorizontalAlign="center"><asp:Label runat="server" ID="lblR10C4"></asp:Label><asp:ImageButton runat="server" id="imgR10C4" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
                                            <asp:TableCell ID="cellR10C5" HorizontalAlign="center"><asp:Label runat="server" ID="lblR10C5"></asp:Label><asp:ImageButton runat="server" id="imgR10C5" ImageUrl="../images/BasketballBoys40.gif" Width="20px" ImageAlign="Middle" OnClientClick="return false;" ></asp:ImageButton></asp:TableCell>
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
        <asp:Panel ID="PanelPopup" runat="server">
        </asp:Panel>
    </telerik:RadAjaxPanel>
</asp:Content>
