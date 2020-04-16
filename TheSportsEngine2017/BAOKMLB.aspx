<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPageBaseball.Master" CodeBehind="BAOKMLB.aspx.vb" Inherits="TheSportsEngine2017.BAOKMLB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text="OKLAHOMA HIGH SCHOOL PLAYERS IN THE MAJOR LEAGUES"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text="Data provided by Baseball-Reference.com"></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text="OKLAHOMA HIGH SCHOOL PLAYERS IN THE MAJOR LEAGUES"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text="Data provided by Baseball-Reference.com"></asp:Label></h3>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" SpanMd="12" SpanLg="12" SpanXl="12">
                        <div style="text-align:center;">
                            <asp:Table runat="server" HorizontalAlign="Center">
                                <asp:TableRow><asp:TableCell><h2><strong>HITTERS</strong></h2></asp:TableCell></asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><h3>JT REALMUTO - Philadelphia Phillies (Carl Albert HS)</h3></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><script type="text/javascript" src="//widgets.sports-reference.com/wg.fcgi?css=1&site=br&url=%2Fplayers%2Fr%2Frealmjt01.shtml&div=div_batting_standard&del_row=2,3,4,5,6,7,8,9,10,11,12&del_col=22,23,24,25,26,27,28,29,30"></script></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><h3>MATT KEMP - Cincinnati Reds (Midwest City HS)</h3></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><script type="text/javascript" src="//widgets.sports-reference.com/wg.fcgi?css=1&site=br&url=%2Fplayers%2Fk%2Fkempma01.shtml&div=div_batting_standard&del_row=2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23&del_col=22,23,24,25,26,27,28,29,30"></script></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><h3>JORDY MERCER - Detroit Tigers (Taloga HS)</h3></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><script type="text/javascript" src="//widgets.sports-reference.com/wg.fcgi?css=1&site=br&url=%2Fplayers%2Fm%2Fmercejo03.shtml&div=div_batting_standard&del_row=2,3,4,5,6,7,8,9,10,11,12,13,14&del_col=22,23,24,25,26,27,28,29,30"></script></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><h3>BRIAN ANDERSON - Miami Marlins (Deer Creek HS)</h3></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><script type="text/javascript" src="//widgets.sports-reference.com/wg.fcgi?css=1&site=br&url=%2Fplayers%2Fa%2Fanderbr06.shtml&div=div_batting_standard&del_row=2,3,4,5,6&del_col=22,23,24,25,26,27,28,29,30"></script></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><h3>JACOBY JONES - Detroit Tigers (Chickasah HS)</h3></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><script type="text/javascript" src="//widgets.sports-reference.com/wg.fcgi?css=1&site=br&url=%2Fplayers%2Fj%2Fjonesja07.shtml&div=div_batting_standard&del_row=2,3,4,5,6,7,8,9&del_col=22,23,24,25,26,27,28,29,30"></script></asp:TableCell>
                                </asp:TableRow>
                               <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell ColumnSpan="2"><h2><strong>PITCHERS</strong></h2></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><h3>DYLAN BUNDY - Baltimore Orioles (Owasso HS)</h3></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><script type="text/javascript" src="//widgets.sports-reference.com/wg.fcgi?css=1&site=br&url=%2Fplayers%2Fb%2Fbundydy01.shtml&div=div_pitching_standard&del_row=2,3,4,5,6,7,8&del_col=22,23,24,25,26,27,28,29,30"></script></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><h3>MICHAEL FULMER - Detroit Tigers (Deer Creek HS)</h3></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><script type="text/javascript" src="//widgets.sports-reference.com/wg.fcgi?css=1&site=br&url=%2Fplayers%2Ff%2Ffulmemi01.shtml&div=div_pitching_standard&del_row=2,3,4,5,6,7,8,9,10&del_col=22,23,24,25,26,27,28,29,30"></script></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><h3>DALLAS KEUCHEL - Houston Astros (Bishop Kelley HS)</h3></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><script type="text/javascript" src="//widgets.sports-reference.com/wg.fcgi?css=1&site=br&url=%2Fplayers%2Fk%2Fkeuchda01.shtml&div=div_pitching_standard&del_row=2,3,4,5,6,7,8,9,10,11,12,13&del_col=22,23,24,25,26,27,28,29,30"></script></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><h3>JON GRAY - Colorado Rockies (Chandler HS)</h3></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><script type="text/javascript" src="//widgets.sports-reference.com/wg.fcgi?css=1&site=br&url=%2Fplayers%2Fg%2Fgrayjo02.shtml&div=div_pitching_standard&del_row=2,3,4,5,6,7,8,9,10&del_col=22,23,24,25,26,27,28,29,30"></script></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><h3>ARCHIE BRADLEY - Arizona Diamondbacks (Broken Arrow HS)</h3></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><script type="text/javascript" src="//widgets.sports-reference.com/wg.fcgi?css=1&site=br&url=%2Fplayers%2Fb%2Fbradlar01.shtml&div=div_pitching_standard&del_row=2,3,4,5,6,7,8,9,10&del_col=22,23,24,25,26,27,28,29,30"></script></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><h3>BRETT ANDERSON - Oakland A's (Stillwater HS)</h3></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><script type="text/javascript" src="//widgets.sports-reference.com/wg.fcgi?css=1&site=br&url=%2Fplayers%2Fa%2Fanderbr04.shtml&div=div_pitching_standard&del_row=2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21&del_col=22,23,24,25,26,27,28,29,30"></script></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><h3>GARRETT RICHARDS - San Diego Padres (Edmond Memorial HS)</h3></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell><script type="text/javascript" src="//widgets.sports-reference.com/wg.fcgi?css=1&site=br&url=%2Fplayers%2Fr%2Frichaga01.shtml&div=div_pitching_standard&del_row=2,3,4,5,6,7,8,9,10,11,12,13,14,15&del_col=22,23,24,25,26,27,28,29,30"></script></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>                             
                        </div>
                    </telerik:LayoutColumn> 
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

