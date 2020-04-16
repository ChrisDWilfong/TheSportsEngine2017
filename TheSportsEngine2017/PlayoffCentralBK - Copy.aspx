<%@ Page Title="Oklahoma High School Sports" Language="VB" AutoEventWireup="false" MasterPageFile="MasterPage2017.Master" CodeBehind="PlayoffCentralBK.aspx.vb" Inherits="TheSportsEngine2017.PlayoffCentralBK"  %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

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
                    <telerik:CompositeLayoutColumn Span="3" SpanSm="3" SpanXs="3" SpanMd="3" SpanLg="3" SpanXl="3">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Table runat="server" ID="tblPlayoffCentralBK">
                                        <asp:TableRow ID="row1">
                                            <asp:TableCell ID="cellR1C1" Text=""></asp:TableCell>
                                            <asp:TableCell ID="cellR1C2" Text="AREA 1 @"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C3" Text="AREA 2 @"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C4" Text="AREA 3 @"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C5" Text="AREA 4 @"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row2">
                                            <asp:TableCell ID="cellR2C1" Text="Championship"></asp:TableCell>
                                            <asp:TableCell ID="cellR2C2"></asp:TableCell>
                                            <asp:TableCell ID="cellR2C3"></asp:TableCell>
                                            <asp:TableCell ID="cellR2C4"></asp:TableCell>
                                            <asp:TableCell ID="cellR2C5"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row3">
                                            <asp:TableCell ID="cellR3C1" Text="Cons Championship"></asp:TableCell>
                                            <asp:TableCell ID="cellR3C2"></asp:TableCell>
                                            <asp:TableCell ID="cellR3C3"></asp:TableCell>
                                            <asp:TableCell ID="cellR3C4"></asp:TableCell>
                                            <asp:TableCell ID="cellR3C5"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row4">
                                            <asp:TableCell ID="cellR4C1" Text="Consolation"></asp:TableCell>
                                            <asp:TableCell ID="cellR4C2"></asp:TableCell>
                                            <asp:TableCell ID="cellR4C3"></asp:TableCell>
                                            <asp:TableCell ID="cellR4C4"></asp:TableCell>
                                            <asp:TableCell ID="cellR4C5"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row5">
                                            <asp:TableCell ID="cellR5C1" Text="Consolation"></asp:TableCell>
                                            <asp:TableCell ID="cellR5C2"></asp:TableCell>
                                            <asp:TableCell ID="cellR5C3"></asp:TableCell>
                                            <asp:TableCell ID="cellR5C4"></asp:TableCell>
                                            <asp:TableCell ID="cellR5C5"></asp:TableCell>
                                        </asp:TableRow>

                                    </asp:Table>

                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>&nbsp;</Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>CHAMPIONSHIP</Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>CONS CHAMPIONSHIP</Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>THURS CONSOLATION</Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>THURS CONSOLATION</Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>

                    <telerik:CompositeLayoutColumn Span="2" SpanSm="2" SpanXs="2" SpanMd="2" SpanLg="2" SpanXl="2">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><strong>AREA I</strong></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIFriday"></asp:Label></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaISaturday" Text="Saturday"></asp:Label></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIThursday1"></asp:Label></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIThursday2"></asp:Label></Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="2" SpanSm="2" SpanXs="2" SpanMd="2" SpanLg="2" SpanXl="2">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><strong>AREA II</strong></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIIFriday"></asp:Label></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIISaturday" Text="Saturday"></asp:Label></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIIThursday1"></asp:Label></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIIThursday2"></asp:Label></Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="2" SpanSm="2" SpanXs="2" SpanMd="2" SpanLg="2" SpanXl="2">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><strong>AREA III</strong></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIIIFriday"></asp:Label></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIIISaturday" Text="Saturday"></asp:Label></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIIIThursday1"></asp:Label></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIIIThursday2"></asp:Label></Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="2" SpanSm="2" SpanXs="2" SpanMd="2" SpanLg="2" SpanXl="2">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><strong>AREA IV</strong></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIVFriday"></asp:Label></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIVSaturday" Text="Saturday"></asp:Label></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIVThursday1"></asp:Label></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:Label runat="server" ID="lblAreaIVThursday2"></asp:Label></Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>
