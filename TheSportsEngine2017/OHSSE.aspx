<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageOHSSE.Master" CodeBehind="OHSSE.aspx.vb" Inherits="TheSportsEngine2017.OHSSE" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
    <link href="styles/RadRotator.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Van Shea Iven's Oklahoma High School Sports Express FLASHBACK" />
    <meta name="twitter:description" content="Oklahoma High School Sports" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/Images/OHSSE/IWATG.OHSSE.PNG" />  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <br />  
                        <asp:Image runat="server" ImageUrl="~/images/OHSSE/IWATG.OHSSE.PNG" Width="100%" />
                        <div style="text-align:center;">
                        <br />
                        <br />
                        </div>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <asp:Image runat="server" ImageUrl="~/images/OHSSE/IWATG.OHSSE.PNG" Width="100%" />
                        <div style="text-align:center;">
                        <br />
                        <br />
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout21">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="1" SpanXl="1" SpanLg="1" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:center; color:white;">
                                    <br />
                                    </div>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="6" SpanXl="6" SpanLg="6" HiddenMd="true" HiddenSm="true" HiddenXs="true" >
                        <Rows>
                            <telerik:LayoutRow ID="urlVideo1">
                                <Content>
                                    <div style="text-align:center;">
                                    <asp:Label runat="server" ID="lblScroller1" Text="CLICK THE VIDEO BELOW TO WATCH..." ForeColor="Red" Font-Size="Larger" Font-Bold="true" ></asp:Label>
                                        <%= Session("vimeoCode") %>
                                    </div>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="6" HiddenXl="true" HiddenLg="true" SpanMd="12" SpanSm="12" SpanXs="12" >
                        <Rows>
                            <telerik:LayoutRow ID="urlVideo2">
                                <Content>
                                    <div style="text-align:center;">
                                        <asp:Label runat="server" ID="lblScroller2" Text="CLICK THE VIDEO BELOW TO WATCH..." forecolor="Red" Font-Size="Larger" Font-Bold="true"></asp:Label>
                                        <%= Session("vimeoCodeMobile") %>
                                    </div>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:center; color:white;">
                                    <br />
                                    <%= Session("vimeoText") %>
                                    </div>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>  
</asp:Content>

