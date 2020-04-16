<%@ Page Title="Oklahoma High School List of Champions" Language="VB" AutoEventWireup="false" MasterPageFile="MasterPageLOC.Master" CodeBehind="DefaultLOCOld.aspx.vb" Inherits="TheSportsEngine2017.DefaultLOCOld"  %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text="WELCOME TO ListOfChampions.com" Font-Names="Oswald"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text="Bringing you High School Sports and State Championship History & those making history today!" Font-Names="Oswald"></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true" >
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text="WELCOME TO ListOfChampions.com" Font-Names="Oswald"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text="Bringing you High School Sports and State Championship History & those making history today!" Font-Names="Oswald"></asp:Label></h3>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper0">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">  
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="6" SpanSm="12" SpanXs="12" SpanMd="6" SpanLg="6" SpanXl="6">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><asp:ImageButton runat="server" PostBackUrl="http://IL.listofchampions.com" ImageUrl="~/images/IL/LOC.IL.png" Width="100%" Style="vertical-align:middle;" /></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:ImageButton runat="server" PostBackUrl="http://MI.listofchampions.com" ImageUrl="~/images/MI/LOC.MI.png" Width="100%" Style="vertical-align:middle;" /></Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>

                    <telerik:CompositeLayoutColumn Span="6" SpanSm="12" SpanXs="12" SpanMd="6" SpanLg="6" SpanXl="6">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><asp:ImageButton runat="server" PostBackUrl="http://www.IWasAtTheGame.com" ImageUrl="~/images/OK/LOC.OK.png" Width="100%" Style="vertical-align:middle;" /></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:ImageButton runat="server" PostBackUrl="http://TX.listofchampions.com" ImageUrl="~/images/TX/LOC.TX.png" Width="100%" Style="vertical-align:middle;" /></Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>

        </Rows>
        <Rows>
            <telerik:LayoutRow Visible="false">
                <Content>
                    <br />
                    <div style="text-align:center;">
                    <asp:HyperLink ID="hlBottom" runat="server" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4XH5CLU3AKTVW" ImageUrl="~/images/OK/ORDER100YearSpecial.png" Target="_blank"></asp:HyperLink>
                    </div>
                </Content>
            </telerik:LayoutRow>
        </Rows>

    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>
