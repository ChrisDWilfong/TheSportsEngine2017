<%@ Page Title="Oklahoma High School Football" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBTeamPages.aspx.vb" Inherits="TheSportsEngine2017.FBTeamPages" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/TileList.css" rel="stylesheet" />
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
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper">
        <asp:Table runat="server" ID="tblFBOD">
            <asp:TableRow>
                <asp:TableCell>
                    <div class="demo-container no-bg">
                    <div class="directoryHeader"></div>
                    <telerik:RadTileList ID="RadTileList1" runat="server" RenderMode="Lightweight" SelectionMode="Single" DataSourceID="SqlDataSource1" OnTileCreated="RadTileList1_TileCreated1" TileRows="80">
                        <DataBindings>
                            <CommonTileBinding TileType="RadImageAndTextTile" Shape="Square" DataNavigateUrlField="strURL" Target="_blank" />
                            <ImageAndTextTileBinding DataTextField="strDisplay" DataImageUrlField="imageURL" />
                            <TilePeekTemplate>
                                
                            </TilePeekTemplate>
                        </DataBindings>
                    </telerik:RadTileList>
                    </div>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>  
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM viewFBScoresYears ORDER BY strSchool">
    </asp:SqlDataSource>    

</asp:Content>



