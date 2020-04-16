<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ucIStateChampions.ascx.vb" Inherits="TheSportsEngine2017.ucIStateChampions" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="AjaxControl" %>

<link href="ajax.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Khand' rel='stylesheet' type='text/css' />
<link href="styles/iwatg.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>

<table>
<tr>
    <td colspan="2"><asp:Label ID="lblDD1" runat="server" Text="SELECT BY SPORT and YEAR :" CssClass="LabelGoogle"></asp:Label></td>
    <td>&nbsp;</td>
</tr>
<tr>
    <td colspan="2">
        <asp:DropDownList ID="cboSport" runat="server" CssClass="DropDownListGoogle" AutoPostBack="true" width="150px" DataSourceID="SqlDataSource3" 
        DataTextField="strSport" DataValueField="strSportGenderKey">
        </asp:DropDownList>
        <asp:DropDownList ID="cboYear" runat="server" CssClass="DropDownListGoogle" AutoPostBack="true" width="100px" DataSourceID="SqlDataSource4" 
        DataTextField="intYear" DataValueField="intYear">
        </asp:DropDownList><br />
    </td>
    <td>&nbsp;&nbsp;<asp:HyperLink ID="hlCompleteList" runat="server" CssClass="Hyperlink" style="color:Navy;" visible="false" NavigateUrl="" Target="_blank">List Of Champions</asp:HyperLink></td>
</tr>
<tr>
<td><asp:Label ID="lblDD2" runat="server" Text="SELECT BY SCHOOL :" CssClass="LabelGoogle"></asp:Label></td>
<td><asp:Label ID="Label1" runat="server" Text="SELECT BY YEAR :" CssClass="LabelGoogle" Visible="false" ></asp:Label></td>
<td>&nbsp;</td>
</tr>
<tr>
<td>
    <asp:DropDownList ID="cboSchool" runat="server" CssClass="DropDownListGoogle"
        AutoPostBack="True" width="150px" DataSourceID="SqlDataSource1" 
        DataTextField="strSchool" DataValueField="strSchool">
    </asp:DropDownList>
</td>
<td>
    <asp:DropDownList ID="cboYearSelect" runat="server" CssClass="DropDownListGoogle" 
        AutoPostBack="True" width="100px" DataSourceID="SqlDataSource2" 
        DataTextField="intYear" DataValueField="intYear" Visible="false">
    </asp:DropDownList><br />
</td>
<td>&nbsp;</td>
</tr>
</table>
<table width="100%">
    <tr>
    <td>
    <asp:Label CssClass="Label" runat="server" Text="" ID="lblWelcome"></asp:Label>
    <AjaxControl:Accordion id="AccordionLeft" runat="server" FadeTransitions="True" 
            selectedIndex="0" TransitionDuration="300"  HeaderCssClass="accordionHeader" 
            ContentCssClass="accordionContent" Width="100%" Height="100%" BackColor="LightGray" >
            <Panes>
                <AjaxControl:AccordionPane id="AccordionPaneArticles" runat="server" Width="100%" Visible="false" >
                    <Header><span style="font-family:Arial; font-size: 20px; color:Yellow;">Articles</span></Header>
                        <Content>
                            <table width="100%" style="height:100%;"">
                            <%= Session("YearArticlesContent")%>
                            </table>
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPaneSchool" runat="server" Width="100%" Visible="false" >
                    <Header><span style="font-family:Arial; font-size: 24px; color:Yellow;">&nbsp;&nbsp;<%= Session("SchoolHeader")%></span></Header>
                        <Content>
                            <table width="100%" style="height:100%;"">
                            <%= Session("YearArticlesContent")%>
                            </table>
                            <table width="100%">
                            <%= Session("SchoolContent")%>
                            </table>
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPaneYear" runat="server" Width="100%" Visible="false" >
                    <Header><span style="font-family:Arial; font-size: 24px; color:Yellow;">&nbsp;&nbsp;<%= Session("YearHeader")%></span></Header>
                        <Content>
                            <table width="100%" style="height:100%;" id="tblArticlesContent">
                            <%= Session("YearArticlesContent")%>
                            </table>
                            <table width="100%" style="height:100%;" id="tblYearContent">
                            <%= Session("YearContent")%>
                            </table>
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPaneDecade" runat="server" Width="100%" Visible="false" >
                    <Header><span style="font-family:Arial; font-size: 24px; color:Yellow;">&nbsp;&nbsp;<%= Session("DecadeHeader")%></span></Header>
                        <Content>
                            <table width="100%" style="height:100%;" id="Table1">
                            <%= Session("DecadeArticlesContent")%>
                            </table>
                            <table width="100%" style="height:100%;" id="Table2">
                            <%= Session("DecadeContent")%>
                            </table>
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPane6A" runat="server" Width="100%" >
                    <Header>&nbsp;&nbsp;<%= Session("6AHeader")%></Header>
                        <Content>
                            <asp:Button ID="cmdButton6A" runat="server" Text="View Game Articles" CssClass="Button" />
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPane5A" runat="server" Width="100%" >
                    <Header>&nbsp;&nbsp;<%= Session("5AHeader")%></Header>
                        <Content>
                            <asp:Button ID="cmdButton5A" runat="server" Text="View Game Articles" CssClass="Button"/>
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPane4A" runat="server" Width="100%" >
                    <Header>&nbsp;&nbsp;<%= Session("4AHeader")%></Header>
                        <Content>
                            <asp:Button ID="cmdButton4A" runat="server" Text="View Game Articles" CssClass="Button" />
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPane3A" runat="server" Width="100%" >
                    <Header>&nbsp;&nbsp;<%= Session("3AHeader")%></Header>
                        <Content>
                            <asp:Button ID="cmdButton3A" runat="server" Text="View Game Articles" CssClass="Button" />
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPane2A" runat="server" Width="100%" >
                    <Header>&nbsp;&nbsp;<%= Session("2AHeader")%></Header>
                        <Content>
                            <asp:Button ID="cmdButton2A" runat="server" Text="View Game Articles" CssClass="Button"/>
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPaneA" runat="server" Width="100%" >
                    <Header>&nbsp;&nbsp;<%= Session("AHeader")%></Header>
                        <Content>
                            <asp:Button ID="cmdButtonA" runat="server" Text="View Game Articles" CssClass="Button" />
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPaneB" runat="server" Width="100%" >
                    <Header>&nbsp;&nbsp;<%= Session("BHeader")%></Header>
                        <Content>
                            <asp:Button ID="cmdButtonB" runat="server" Text="View Game Articles" CssClass="Button"/>
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPaneC" runat="server" Width="100%" >
                    <Header>&nbsp;&nbsp;<%= Session("CHeader")%></Header>
                        <Content>
                            <asp:Button ID="cmdButtonC" runat="server" Text="View Game Articles" CssClass="Button" />
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPaneOther" runat="server" Width="100%" >
                    <Header>&nbsp;&nbsp;<%= Session("OtherHeader")%></Header>
                        <Content>
                            <asp:Button ID="cmdButtonOther" runat="server" Text="View Game Articles" CssClass="Button" />
                        </Content>
                </AjaxControl:AccordionPane>
                <AjaxControl:AccordionPane id="AccordionPaneSample" runat="server" Width="100%" >
                        <Content>
                            <iframe width="<%= Session("TableWidthSample") %>" height="<%= Session("TableHeightSample") %>" frameborder=0 scrolling="none" src="<%= Session("SampleHTML") %>"></iframe>
                        </Content>
                </AjaxControl:AccordionPane>
            </Panes>
        </AjaxControl:Accordion>
    </td>
    </tr>
    <tr><td><asp:Label runat="server" ID="lblFooter" Font-Size="1" ForeColor="White" Text="Powered by www.IWasAtTheGame.com"></asp:Label></td></tr>
</table>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:IWATGConnectionString%>" 
    SelectCommand="SELECT DISTINCT [strSchool] FROM [tblStateChampions] WHERE Not strSchool Is Null AND strState = @State ORDER BY [strSchool]">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="OK" Name="State" QueryStringField="st" />
        </SelectParameters>    
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT DISTINCT [intYear] FROM [tblStateChampions] WHERE Not intYear Is Null AND strState = @State ORDER BY [intYear] DESC">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="OK" Name="State" QueryStringField="st" />
        </SelectParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT strSport, strSportGenderKey, strState FROM tblSports WHERE intActive > 0 AND strState = 'OK' ORDER BY intActive">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="OK" Name="State" QueryStringField="st" />
        </SelectParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
    ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT DISTINCT intYear FROM tblStateChampions WHERE strSportGenderKey = @selSport AND strState = 'OK' ORDER BY intYear DESC">
        <SelectParameters>
            <asp:ControlParameter Name="selSport" ControlID="cboSport" DefaultValue="1900" />
        </SelectParameters>
    </asp:SqlDataSource>