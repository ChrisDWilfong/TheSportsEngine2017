<%@ Page Title="Test Tiles" Language="vb" AutoEventWireup="true" MasterPageFile="MasterPage2017Test.Master" CodeBehind="TestTiles.aspx.vb" Inherits="TheSportsEngine2017.TestTiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/tiles.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <telerik:RadTileList RenderMode="Lightweight" runat="server" ID="RadTileList1" Height="500px" TileRows="2"
        SelectionMode="None" EnableDragAndDrop="true">
        <Groups>
            <telerik:TileGroup Title="WHAT'S NEW">
                <telerik:RadIconTile runat="server" Name="New1" NavigateUrl="http://www.iwasatthegame.com/FBNoChampionship.aspx"
                    Shape="Wide" ImageUrl="images/football300.gif">
                    <Title Text="PLAYOFF YRS W/O CHAMPIONSHIP"></Title>
                </telerik:RadIconTile>
                <telerik:RadIconTile runat="server" Name="New2" NavigateUrl="http://www.iwasatthegame.com/OBCACoachingRecords.aspx"
                    Shape="Wide" ImageUrl="images/baseball300.gif">
                    <Title Text="OBCA COACHES W-L RECORDS"></Title>
                </telerik:RadIconTile>
                <telerik:RadIconTile runat="server" Name="New3" NavigateUrl="http://www.iwasatthegame.com/FBOD.aspx"
                    Shape="Wide" ImageUrl="images/football300.gif">
                    <Title Text="2017 TEAM SCORING (WK 4)"></Title>
                </telerik:RadIconTile>
                <telerik:RadIconTile runat="server" Name="Editor" NavigateUrl="http://www.okalmanac.com"
                    Target="_blank" Shape="Wide" ImageUrl="~/images/ads/ListOfChampionsBook300.png" BackColor="#03953f">
                    <Title Text="LIST OF CHAMPIONS Almanac"></Title>
                    <PeekTemplate>
                        <span style="text-align:center;">
                            <asp:Image runat="server" ImageUrl="~/images/ads/ListOfChampionsBook150.png" />
                        </span>
                    </PeekTemplate>
                    <PeekTemplateSettings Animation="Slide" ShowInterval="4000" CloseDelay="3000" AnimationDuration="800"
                        ShowPeekTemplateOnMouseOver="true" HidePeekTemplateOnMouseOut="true" Easing="easeOutExpo" />
                </telerik:RadIconTile>
            </telerik:TileGroup>

            <telerik:TileGroup Title="THIS WEEKS #LongTimeFootballMatchups">
                <telerik:RadIconTile runat="server" Name="Game1" NavigateUrl="http://www.iwasatthegame.com/FBH2HTW.aspx?s=Coalgate&o=Atoka"
                    Target="_blank" Shape="Square" ImageUrl="images/football100.gif" BackColor="#f37928">
                    <Title Text="Coalgate vs Atoka (105 games)"></Title>
                </telerik:RadIconTile>
                <telerik:RadIconTile runat="server" Name="Game2" NavigateUrl="http://www.iwasatthegame.com/FBH2HTW.aspx?s=Clinton&o=Elk City"
                    Target="_blank" Shape="Square" ImageUrl="images/football100.gif" BackColor="#f37928">
                    <Title Text="Clinton vs Elk City (74 games)"></Title>
                </telerik:RadIconTile>
            </telerik:TileGroup>
        </Groups>
    </telerik:RadTileList>
</asp:Content>
