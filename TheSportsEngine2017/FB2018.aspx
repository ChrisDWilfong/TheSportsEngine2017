<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootballNOAJAX.Master" CodeBehind="FB2018.aspx.vb" Inherits="TheSportsEngine2017.FB2018" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/flashback.css" rel="Stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.1&appId=2049549131962643&autoLogAppEvents=1';
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
    <Rows>
        <telerik:LayoutRow >
            <Columns>
                <telerik:CompositeLayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="3" SpanSm="12" SpanXs="12" >
                 <Rows>
                        <telerik:LayoutRow>
                            <Content>
                                <div style="text-align:center;">
                                <asp:Label runat="server" ID="Label1" Font-Size="XX-Large" Font-Bold="true" Font-Names="Anton">2018 Season</asp:Label>
                                </div>
                            </Content>
                        </telerik:LayoutRow>
                            
                        <telerik:LayoutRow>
                            <Content>
                                <div style="text-align:center;">
                                <br />
                                <asp:HyperLink runat="server" NavigateUrl="BAFOD.aspx" CssClass="button orange" style="width:300px;margin-top:-20px;">FALL BASEBALL RUNS SCORED<br />(thru 9/2/18)</asp:HyperLink><br /><br />
                                <asp:HyperLink runat="server" NavigateUrl="SBFOD.aspx" CssClass="button green" style="width:300px;margin-top:-20px;">FAST PITCH SOFTBALL RPI (thru 9/2/18)</asp:HyperLink><br /><br />
                                <asp:HyperLink runat="server" NavigateUrl="RPIBaseballFall.aspx" CssClass="button orange" style="width:300px;margin-top:-20px;">FALL BASEBALL RPI (thru 9/2/18)</asp:HyperLink><br /><br />
                                <asp:HyperLink runat="server" NavigateUrl="RPIFPSoftball.aspx" CssClass="button green" style="width:300px;margin-top:-20px;">FAST PITCH SOFTBALL RPI (thru 9/2/18)</asp:HyperLink><br /><br />
                                </div>
                            </Content>
                        </telerik:LayoutRow>
                    </Rows>
                </telerik:CompositeLayoutColumn>

                <telerik:CompositeLayoutColumn Span="7" SpanXl="7" SpanLg="7" SpanMd="7" SpanSm="12" SpanXs="12" >
                    <Rows>
                        <telerik:LayoutRow>
                            <Content>
                                <div style="text-align:center;">
                                <asp:Label runat="server" ID="lblCurrentWeek" Font-Size="XX-Large" Font-Bold="true" Font-Names="Anton"></asp:Label>
                                </div>
                            </Content>
                        </telerik:LayoutRow>
                    </Rows>
                    <Rows>
                        <telerik:LayoutRow>
                            <Content>
                            <div id="container03">
                            <div style="margin-top:-20px;">
                            <h5>
                            <asp:Label ID="lblDistrictStandings" runat="server">DISTRICT STANDINGS :</asp:Label>&nbsp;
                            <asp:HyperLink ID="hlDist6A" runat="server" NavigateUrl="~/FB2018.aspx?id=D6A">6A</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlDist5A" runat="server" NavigateUrl="~/FB2018.aspx?id=D5A">5A</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlDist4A" runat="server" NavigateUrl="~/FB2018.aspx?id=D4A">4A</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlDist3A" runat="server" NavigateUrl="~/FB2018.aspx?id=D3A">3A</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlDist2A" runat="server" NavigateUrl="~/FB2018.aspx?id=D2A">2A</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlDistA" runat="server" NavigateUrl="~/FB2018.aspx?id=DA">A</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlDistB" runat="server" NavigateUrl="~/FB2018.aspx?id=DB">B</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlDistC" runat="server" NavigateUrl="~/FB2018.aspx?id=DC">C</asp:HyperLink>&nbsp;-&nbsp;
                            <br />
                            <asp:Label runat="server">RESULTS :</asp:Label>&nbsp;
                            <asp:HyperLink ID="hlWeek00" runat="server" NavigateUrl="~/FB2018.aspx?id=WK0">Week 0</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlWeek01" runat="server" NavigateUrl="~/FB2018.aspx?id=WK1">1</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlWeek02" runat="server" NavigateUrl="~/FB2018.aspx?id=WK2">2</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlWeek03" runat="server" NavigateUrl="~/FB2018.aspx?id=WK3">3</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlWeek04" runat="server" NavigateUrl="~/FB2018.aspx?id=WK4">4</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlWeek05" runat="server" NavigateUrl="~/FB2018.aspx?id=WK5">5</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlWeek06" runat="server" NavigateUrl="~/FB2018.aspx?id=WK6">6</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlWeek07" runat="server" NavigateUrl="~/FB2018.aspx?id=WK7">7</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlWeek08" runat="server" NavigateUrl="~/FB2018.aspx?id=WK8">8</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlWeek09" runat="server" NavigateUrl="~/FB2018.aspx?id=WK9">9</asp:HyperLink>&nbsp;
                            <asp:HyperLink ID="hlWeek10" runat="server" NavigateUrl="~/FB2018.aspx?id=WK10">10</asp:HyperLink>&nbsp;
                            <br />
                            </h5>
                            <h2>
                            <asp:Label runat="server" ID="lblScheduleHeader" Font-Size="XX-Large" Font-Bold="true" Font-Names="Anton" ></asp:Label>
                            </h2>
                            <asp:Image runat="server" ID="imgSponsor" ImageUrl="~/images/IWATG/1999Block.png" Width="100%" />
                            <asp:Table runat="server" ID="tblContent">
                                <asp:TableRow ID="rowSchedule">
                                    <asp:TableCell>
                                    <telerik:RadGrid ID="RadGridSchedule6A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="" UniqueName="strDisplay" HeaderText="CLASS 6A Schedule/Results" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-VerticalAlign="Middle" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                        <br />
                                        <telerik:RadGrid ID="RadGridSchedule5A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="" UniqueName="strDisplay" HeaderText="CLASS 5A Schedule/Results" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-VerticalAlign="Middle" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                        <br />
                                        <telerik:RadGrid ID="RadGridSchedule4A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="" UniqueName="strDisplay" HeaderText="CLASS 4A Schedule/Results" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-VerticalAlign="Middle" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                        <br />
                                        <telerik:RadGrid ID="RadGridSchedule3A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="" UniqueName="strDisplay" HeaderText="CLASS 3A Schedule/Results" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-VerticalAlign="Middle" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                        <br />
                                        <telerik:RadGrid ID="RadGridSchedule2A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="" UniqueName="strDisplay" HeaderText="CLASS 2A Schedule/Results" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-VerticalAlign="Middle" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                        <br />
                                        <telerik:RadGrid ID="RadGridScheduleA" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="" UniqueName="strDisplay" HeaderText="CLASS A Schedule/Results" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-VerticalAlign="Middle" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                        <br />
                                        <telerik:RadGrid ID="RadGridScheduleB" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="" UniqueName="strDisplay" HeaderText="CLASS B Schedule/Results" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-VerticalAlign="Middle" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                        <br />
                                        <telerik:RadGrid ID="RadGridScheduleC" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="" UniqueName="strDisplay" HeaderText="CLASS C Schedule/Results" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-VerticalAlign="Middle" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="rowDistricts1" Visible="false">
                                    <asp:TableCell>
                                    <telerik:RadGrid ID="RadGridDistrict1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strSchoolName" HeaderAbbr="Team" UniqueName="strSchoolName" HeaderText="District 1" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="50%" HeaderStyle-Width="50%" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="W" HeaderAbbr="W" UniqueName="W" HeaderText="W" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="L" HeaderAbbr="L" UniqueName="L" HeaderText="L" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DW" HeaderAbbr="DW" UniqueName="DW" HeaderText="DW" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DL" HeaderAbbr="DL" UniqueName="DL" HeaderText="DL" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intDPtsDiff" HeaderAbbr="PTS" UniqueName="intDPtsDiff" HeaderText="PTS" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="rowDistricts2" Visible="false">
                                    <asp:TableCell>
                                    <telerik:RadGrid ID="RadGridDistrict2" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strSchoolName" HeaderAbbr="Team" UniqueName="strSchoolName" HeaderText="District 2" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="50%" HeaderStyle-Width="50%" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="W" HeaderAbbr="W" UniqueName="W" HeaderText="W" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="L" HeaderAbbr="L" UniqueName="L" HeaderText="L" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DW" HeaderAbbr="DW" UniqueName="DW" HeaderText="DW" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DL" HeaderAbbr="DL" UniqueName="DL" HeaderText="DL" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intDPtsDiff" HeaderAbbr="PTS" UniqueName="intDPtsDiff" HeaderText="PTS" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="rowDistricts3" Visible="false">
                                    <asp:TableCell>
                                    <telerik:RadGrid ID="RadGridDistrict3" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strSchoolName" HeaderAbbr="Team" UniqueName="strSchoolName" HeaderText="District 3" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="50%" HeaderStyle-Width="50%" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="W" HeaderAbbr="W" UniqueName="W" HeaderText="W" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="L" HeaderAbbr="L" UniqueName="L" HeaderText="L" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DW" HeaderAbbr="DW" UniqueName="DW" HeaderText="DW" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DL" HeaderAbbr="DL" UniqueName="DL" HeaderText="DL" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intDPtsDiff" HeaderAbbr="PTS" UniqueName="intDPtsDiff" HeaderText="PTS" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="rowDistricts4" Visible="false">
                                    <asp:TableCell>
                                    <telerik:RadGrid ID="RadGridDistrict4" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strSchoolName" HeaderAbbr="Team" UniqueName="strSchoolName" HeaderText="District 4" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="50%" HeaderStyle-Width="50%" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="W" HeaderAbbr="W" UniqueName="W" HeaderText="W" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="L" HeaderAbbr="L" UniqueName="L" HeaderText="L" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DW" HeaderAbbr="DW" UniqueName="DW" HeaderText="DW" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DL" HeaderAbbr="DL" UniqueName="DL" HeaderText="DL" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intDPtsDiff" HeaderAbbr="PTS" UniqueName="intDPtsDiff" HeaderText="PTS" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="rowDistricts5" Visible="false">
                                    <asp:TableCell>
                                    <telerik:RadGrid ID="RadGridDistrict5" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strSchoolName" HeaderAbbr="Team" UniqueName="strSchoolName" HeaderText="District 5" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="50%" HeaderStyle-Width="50%" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="W" HeaderAbbr="W" UniqueName="W" HeaderText="W" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="L" HeaderAbbr="L" UniqueName="L" HeaderText="L" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DW" HeaderAbbr="DW" UniqueName="DW" HeaderText="DW" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DL" HeaderAbbr="DL" UniqueName="DL" HeaderText="DL" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intDPtsDiff" HeaderAbbr="PTS" UniqueName="intDPtsDiff" HeaderText="PTS" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="rowDistricts6" Visible="false">
                                    <asp:TableCell>
                                    <telerik:RadGrid ID="RadGridDistrict6" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strSchoolName" HeaderAbbr="Team" UniqueName="strSchoolName" HeaderText="District 6" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="50%" HeaderStyle-Width="50%" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="W" HeaderAbbr="W" UniqueName="W" HeaderText="W" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="L" HeaderAbbr="L" UniqueName="L" HeaderText="L" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DW" HeaderAbbr="DW" UniqueName="DW" HeaderText="DW" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DL" HeaderAbbr="DL" UniqueName="DL" HeaderText="DL" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intDPtsDiff" HeaderAbbr="PTS" UniqueName="intDPtsDiff" HeaderText="PTS" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="rowDistricts7" Visible="false">
                                    <asp:TableCell>
                                    <telerik:RadGrid ID="RadGridDistrict7" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strSchoolName" HeaderAbbr="Team" UniqueName="strSchoolName" HeaderText="District 7" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="50%" HeaderStyle-Width="50%" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="W" HeaderAbbr="W" UniqueName="W" HeaderText="W" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="L" HeaderAbbr="L" UniqueName="L" HeaderText="L" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DW" HeaderAbbr="DW" UniqueName="DW" HeaderText="DW" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DL" HeaderAbbr="DL" UniqueName="DL" HeaderText="DL" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intDPtsDiff" HeaderAbbr="PTS" UniqueName="intDPtsDiff" HeaderText="PTS" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="rowDistricts8" Visible="false">
                                    <asp:TableCell>
                                    <telerik:RadGrid ID="RadGridDistrict8" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="false" >
                                            <MasterTableView TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" AllowPaging="false" UseAllDataFields="false" >
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strSchoolName" HeaderAbbr="Team" UniqueName="strSchoolName" HeaderText="District 8" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="50%" HeaderStyle-Width="50%" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="W" HeaderAbbr="W" UniqueName="W" HeaderText="W" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="L" HeaderAbbr="L" UniqueName="L" HeaderText="L" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DW" HeaderAbbr="DW" UniqueName="DW" HeaderText="DW" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="DL" HeaderAbbr="DL" UniqueName="DL" HeaderText="DL" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intDPtsDiff" HeaderAbbr="PTS" UniqueName="intDPtsDiff" HeaderText="PTS" 
                                                        AllowFiltering="false" AllowSorting="false" HeaderStyle-Font-Bold="true" ItemStyle-Width="10%" HeaderStyle-Width="10%" ItemStyle-HorizontalAlign="right" >
                                                    </telerik:GridBoundColumn>
                                                </Columns>
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                            </div>
                            </div>
                            <br /><br />
                            </Content>
                        </telerik:LayoutRow>
                    </Rows>
                </telerik:CompositeLayoutColumn>

                <telerik:CompositeLayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="2" SpanSm="12" SpanXs="12" >
                    <Rows>
                        <telerik:LayoutRow>
                            <Content>
                                &nbsp;
                            </Content>
                        </telerik:LayoutRow>
                    </Rows>
                </telerik:CompositeLayoutColumn>
            </Columns>
        </telerik:LayoutRow>
   </Rows>
    </telerik:RadPageLayout>
</asp:Content>
