<%@ Page Title="Oklahoma High School Football Playoffs" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBPlayoffsInfo.aspx.vb" Inherits="TheSportsEngine2017.FBPlayoffsInfo" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <br />
                        <h2><asp:Label ID="lblOneColumnHeader0" runat="server" Text="THROUGHOUT THE FOOTBALL PLAYOFFS, BE YOUR TEAMS TITLE SPONSOR!" Font-Bold="true"></asp:Label><br /></h2>
                        <h4>
                            <asp:Label ID="Label0" runat="server" Text="EMAIL US at <a href='mailto:chris@iwasatthegame.com'>chris@iwasatthegame.com</a> with : " Font-Bold="true"></asp:Label><br />
                            <asp:Label ID="Label1" runat="server" Text="    - Your Name : " Font-Bold="true"></asp:Label><br />
                            <asp:Label ID="Label2" runat="server" Text="    - Your Company Name : " Font-Bold="true"></asp:Label><br />
                            <asp:Label ID="Label4" runat="server" Text="    - Your School : " Font-Bold="true"></asp:Label><br />
                            <asp:Label ID="Label3" runat="server" Text="    - Your Mailing Address (so we can mail you a complimentary copy of our almanac!)" Font-Bold="true"></asp:Label><br />
                            <asp:Label ID="Label13" runat="server" Text="    - A 400x100 graphic (if you do not have one, we can create one for you) and the URL/Web Address of the site you want to go to when the graphic is clicked." Font-Bold="true"></asp:Label><br /><br />
                            <asp:Label ID="Label5" runat="server" Text="WE WILL... " Font-Bold="true"></asp:Label><br />
                            <asp:Label ID="Label6" runat="server" Text="    - Reply back to you with a link to an PayPal payment for $100" Font-Bold="true"></asp:Label><br />
                            <asp:Label ID="Label7" runat="server" Text="    - Once payment is complete..." Font-Bold="true"></asp:Label><br /><br />
                            <asp:Label ID="Label8" runat="server" Text="HERE IS WHAT YOU GET..." Font-Bold="true"></asp:Label><br />
                            <asp:Label ID="Label9" runat="server" Text="    - Anytime your team is selected in the PLAYOFF CENTRAL or FOOTBALL TEAM PAGE, your ad will appear above the schools name." Font-Bold="true"></asp:Label><br />
                            <asp:Label ID="Label10" runat="server" Text="    - If your team makes the SEMIFINALS or FINALS, your company's name will appear on our IWasAtTheGame.com page in the OFFICIAL STATE PLAYOFF PROGRAM sold at the games." Font-Bold="true"></asp:Label><br />
                            <asp:Label ID="Label11" runat="server" Text="    - We will also send you a complementary copy of our 384 page LIST OF CHAMPIONS ALMANAC." Font-Bold="true"></asp:Label><br />
                            <br />
                            <asp:Label ID="Label14" runat="server" Text="ONLY ONE AD PER SCHOOL WILL BE AVAILABLE. FIRST COME FIRST SERVE." Font-Bold="true"></asp:Label><br />
                            <asp:Label ID="Label15" runat="server" Text="THANK YOU FOR YOUR SUPPORT!" Font-Bold="true"></asp:Label><br /><br />
                            <asp:Label ID="Label12" runat="server" Text="<i>We reserve the right to refuse any potential ads for any reason.</i>" Font-Bold="true"></asp:Label><br />
                        </h4>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h5><asp:Label ID="lblOneColumnHeader" runat="server" Text="OKLAHOMA HIGH SCHOOL FOOTBALL PLAYOFFS" Font-Bold="true"></asp:Label><br />
                        <asp:Label ID="lblOneColumnHeadera" runat="server" Text="Click the Game below for your 'ONE STOP SHOP' for Football Playoff Info" Font-Bold="true"></asp:Label></h5>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

</asp:Content>



