<%@ Page Title="Oklahoma High School Sports Page" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageSchoolPageNOAJAX.Master" CodeBehind="SchoolPage.aspx.vb" Inherits="TheSportsEngine2017.SchoolPage" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/billboard.css" rel="stylesheet" />
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/billboard.css" rel="stylesheet" />
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="List of Champions from IWasAtTheGame.com" />
    <meta name="twitter:description" content="Your OKLAHOMA schools complete List of Champions dating back to 1918!" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/ListOfChampions.PNG" />  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <asp:Panel runat="server" ID="panelAd1" Visible="true">    
                        <br />
							<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
							<!-- Banner Football -->
							<ins class="adsbygoogle"
								 style="display:block"
								 data-ad-client="ca-pub-6403098483302166"
								 data-ad-slot="6936940687"
								 data-ad-format="auto"
								 data-full-width-responsive="true"></ins>
							<script>
								(adsbygoogle = window.adsbygoogle || []).push({});
							</script>
                        </asp:Panel>
                        <h1><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text="" Font-Names="Lalezar"></asp:Label><asp:Image runat="server" ID="imgMascot0" Height="75px" Visible="false" /></h1>
                        <div style="text-align:center;">
                        <telerik:RadImageGallery ID="RadImageGallery1" runat="server" DataSourceID="SqlDataSource1" RenderMode="Lightweight" DisplayAreaMode="LightBox" Width="900px" 
                            DataImageField="strImageFull" DataThumbnailField="strImageFull" DataTitleField="strAltTextYear" ShowLoadingPanel="true" 
                            Visible="false" SkinID="Metro" BorderColor="black" BorderWidth="3" BorderStyle="Solid" >
                            <ImageAreaSettings Height="400px" ShowDescriptionBox="true" CloseButtonText="Close" NextImageButtonText="Next" PrevImageButtonText="Previous" ShowNextPrevImageButtons="true" NavigationMode="Button" />
                            <ThumbnailsAreaSettings Height="100" ShowScrollButtons="true" ShowScrollbar="false" EnableZoneScroll="false" />
                        </telerik:RadImageGallery>
                        <asp:Label runat="server" ID="lblInfo" Text="If you want an AD-FREE version of this page for your school website, email us at chris@iwasatthegame.com!" ForeColor="White" Font-Size="small"></asp:Label>
                        <% =Session("billboardHTML")%>
                        </div>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <asp:Panel runat="server" ID="panelAd2" Visible="true">    
                            <div style="text-align:center;">
                            <br /><br />
                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- Billboard Mobile -->
                            <ins class="adsbygoogle"
                                 style="display:inline-block;width:320px;height:100px"
                                 data-ad-client="ca-pub-6403098483302166"
                                 data-ad-slot="6146036330"></ins>
                            <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>   
                            </div>
                        </asp:Panel>
                        <h1><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text="" ForeColor="Black" Font-Names="Lalezar"></asp:Label><asp:Image runat="server" ID="imgMascot" Height="75px" Visible="false" /></h1>
                        <asp:Label runat="server" ID="lblInfo1" Text="If you want an AD-FREE version of this page for your school website, email us at chris@iwasatthegame.com!" ForeColor="White" Font-Size="small"></asp:Label>
                        <% =Session("billboardHTML1")%>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblStateChampionsImages WHERE strSchool = @school ORDER BY strType DESC, intYear, intSort">
        <SelectParameters>
            <asp:SessionParameter Name="school" SessionField="globalSchool" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>   
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>



