<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TestTiles1.aspx.vb" Inherits="TheSportsEngine2017.TestTiles1" %>

<!DOCTYPE html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>
<head runat="server">
    <title>Telerik ASP.NET Example</title>
    <link href="styles/tiles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager runat="server" ID="RadScriptManager1" />
    <telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="true" />
    <telerik:RadTileList RenderMode="Lightweight" runat="server" ID="RadTileList1" Height="500px" TileRows="3"
        SelectionMode="Multiple" EnableDragAndDrop="true">
        <Groups>
            <telerik:TileGroup Title="AJAX Suite Overview">
                <telerik:RadImageAndTextTile Shape="Wide" NavigateUrl="http://www.telerik.com/developer-productivity-tools.aspx"
                    Target="_blank" Text="UI controls for ASP.NET AJAX, MVC, WPF, Silverlight, Windows 8 and Windows Phone"
                    ImageUrl="../../images/Wide/baseball100.gif" BackColor="#00b37d" Selected="true">
                    <PeekTemplate>
                        <img src="../../images/Wide/baseball24.gif" alt="DevTools" style="display:block;" />
                    </PeekTemplate>
                    <PeekTemplateSettings Animation="Slide" AnimationDuration="800" Easing="easeInOutBack"
                        ShowInterval="5000" CloseDelay="5000" ShowPeekTemplateOnMouseOver="true" HidePeekTemplateOnMouseOut="true" />
                </telerik:RadImageAndTextTile>

                <telerik:RadContentTemplateTile NavigateUrl="http://www.telerik.com/forums/aspnet-ajax"
                    Target="_blank" Shape="Wide" BackColor="#07a9bc">
                    <Title Text="Talk with peers in the forums"></Title>
                    <ContentTemplate>
                        <div class="wideContent font14">
                            <div class="font22">
                                Peer-to-Peer Forums</div>
                            <div>
                                We've been developing controls for ASP.NET AJAX since the technology�s inception
                                &amp; the contributions from the community prove that.</div>
                        </div>
                    </ContentTemplate>
                </telerik:RadContentTemplateTile>

                <telerik:RadContentTemplateTile NavigateUrl="http://tv.telerik.com/products/aspnet-ajax"
                    Target="_blank" Shape="Wide" BackColor="#b53e60">
                    <ContentTemplate>
                        <div class="wideContent font14">
                            <div class="font22">
                                Video Tutorials</div>
                            <div>
                                Over 300 videos (and growing!) on Telerik TV that guide you through new features
                                and controls for ASP.NET AJAX.</div>
                        </div>
                    </ContentTemplate>
                    <Title ImageUrl="../../images/Icons/icon_video.png"></Title>
                </telerik:RadContentTemplateTile>

            </telerik:TileGroup>

            <telerik:TileGroup Title="Popular Controls and Demo Counts">

                <telerik:RadIconTile Name="ComboBox" NavigateUrl="http://demos.telerik.com/aspnet-ajax/combobox/examples/overview/defaultcs.aspx"
                    Target="_blank" Shape="Square" ImageUrl="../../images/wide/football40.gif" BackColor="#f37928">
                    <Title Text="2017 Football Team Scoring (FINAL)"></Title>
                </telerik:RadIconTile>

                <telerik:RadIconTile Name="PivotGrid" NavigateUrl="http://demos.telerik.com/aspnet-ajax/pivotgrid/examples/firstlook/defaultcs.aspx"
                    Target="_blank" Shape="Wide" ImageUrl="../../images/wide/football300.gif">
                    <Title Text="Playoff Years W/O Championship"></Title>
                </telerik:RadIconTile>

                <telerik:RadIconTile Name="PivotGrid1" NavigateUrl="http://demos.telerik.com/aspnet-ajax/pivotgrid/examples/firstlook/defaultcs.aspx"
                    Target="_blank" Shape="Wide" ImageUrl="../../images/wide/baseball100.gif">
                    <Title Text="OBCA Coaches W-L Records"></Title>
                </telerik:RadIconTile>

                <telerik:RadIconTile Name="Editor" NavigateUrl="http://demos.telerik.com/aspnet-ajax/editor/examples/overview/defaultcs.aspx"
                    Target="_blank" Shape="Wide" ImageUrl="../../images/wide/baseball100.gif" BackColor="#03953f">
                    <Title Text="LIST OF CHAMPIONS Almanac"></Title>
                    <PeekTemplate>
                        <img src="../../images/wide/baseball100.gif" alt="Alternate Text" />
                    </PeekTemplate>
                    <PeekTemplateSettings Animation="Slide" ShowInterval="4000" CloseDelay="3000" AnimationDuration="800"
                        ShowPeekTemplateOnMouseOver="true" HidePeekTemplateOnMouseOut="true" Easing="easeOutExpo" />
                </telerik:RadIconTile>

                <telerik:RadIconTile Name="TreeView" NavigateUrl="http://demos.telerik.com/aspnet-ajax/treeview/examples/overview/defaultcs.aspx"
                    Target="_blank" Shape="Wide" ImageUrl="../../images/wide/Baseball100.gif" BackColor="#82c92f">
                    <Title Text="LIST OF CHAMPIONS ALMANAC"></Title>
                    <PeekTemplate>
                        <div style="background-color: #82c92f" class="wideContent font18">
                            Order yours TODAY for $17
                        </div>
                    </PeekTemplate>
                    <PeekTemplateSettings Animation="Fade" ShowPeekTemplateOnMouseOver="true" HidePeekTemplateOnMouseOut="true" />
                    <PeekTemplateSettings />
                </telerik:RadIconTile>

                <telerik:RadIconTile Name="Gauge" NavigateUrl="http://demos.telerik.com/aspnet-ajax/gauge/examples/overview/defaultcs.aspx"
                    Target="_blank" Shape="Square" ImageUrl="../../images/wide/baseball100.gif" BackColor="#03953f">
                    <Title Text="Gauge"></Title>
                    <PeekTemplate>
                        <img src="../../images/wide/baseball32.gif" alt="" />
                    </PeekTemplate>
                    <PeekTemplateSettings Animation="Slide" ShowInterval="2000" CloseDelay="5000" ShowPeekTemplateOnMouseOver="true"
                        HidePeekTemplateOnMouseOut="true" />
                </telerik:RadIconTile>

                <telerik:RadIconTile Name="Menu" NavigateUrl="http://demos.telerik.com/aspnet-ajax/Menu/examples/overview/defaultcs.aspx"
                    Target="_blank" Shape="Wide" ImageUrl="../../images/wide/baseball100.gif" BackColor="#f8b617">
                    <Title Text="Menu"></Title>
                    <PeekTemplate>
                        <div style="background-color: #f8b617" class="wideContent font18">
                            Lightweight, SEO-friendly menu navigation. Flexible and easy-to-customize.
                        </div>
                    </PeekTemplate>
                    <PeekTemplateSettings Animation="Fade" ShowInterval="4000" ShowPeekTemplateOnMouseOver="true"
                        HidePeekTemplateOnMouseOut="true" />
                </telerik:RadIconTile>

            </telerik:TileGroup>
        </Groups>
    </telerik:RadTileList>

    </form>
</body>
</html>
