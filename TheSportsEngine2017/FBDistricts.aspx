<%@ Page Title="Oklahoma High School Football Games" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootballNOAJAX.Master" CodeBehind="FBDistricts.aspx.vb" Inherits="TheSportsEngine2017.FBDistricts" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football District Standings" />
    <meta name="twitter:description" content="ALL-TIME High School Football District Standings (since 1944)" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Logo_Football.png" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <asp:Panel ID="RadAjaxPanel12" runat="server" CssClass="grid_wrapper">
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
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="RadAjaxPanel100" runat="server" CssClass="grid_wrapper">
        <asp:Table runat="server" ID="tblDist" HorizontalAlign="center">
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell HorizontalAlign="Center">
                    <telerik:RadDropDownList ID="RadDropDownListYear" runat="server" DataSourceID="SqlDataSourceYears" DataTextField="intYear" DataValueField="intYear" 
                        AutoPostBack="True" DefaultMessage="Select Year..." Width="125px" BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                    </telerik:RadDropDownList>
                    &nbsp;&nbsp;
                    <telerik:RadDropDownList ID="RadDropDownListClass" runat="server" DataSourceID="SqlDataSourceClasses" DataTextField="strClass" DataValueField="strClass" 
                        AutoPostBack="True" DefaultMessage="Select Class..." Width="100px" BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                    </telerik:RadDropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSeasonInfo" runat="server" Font-Size="Large" Font-Bold="true"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
    <asp:TableRow><asp:TableCell>
    <asp:Label ID="lblHeader1" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
    </asp:TableCell></asp:TableRow>
    <asp:TableRow><asp:TableCell>

    <asp:GridView ID="GridView1" VWidth="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ShowFooter="True" HorizontalAlign="center" >
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
        <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>

<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader1d" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView1d" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource1d" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
        <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict">
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>

<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader2" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView2" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader2a" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView2a" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource2a" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
        <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>

<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader2d" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView2d" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource2d" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
        <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>

<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader3" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView3" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>

    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>

<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader3d" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView3d" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource3d" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>

    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>


<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader4" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView4" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>

<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader4d" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView4d" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource4d" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>


<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader5" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView5" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict">
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader6" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView6" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict">
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader7" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView7" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader7a" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView7a" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource7a" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict">
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader8" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView8" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource8" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center" />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader9" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView9" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource9" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader10" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView10" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource10" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader11" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView11" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource11" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict">
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader12" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView12" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource12" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict">
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader13" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView13" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource13" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader14" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView14" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource14" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict">
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader15" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView15" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource15" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:Label ID="lblHeader16" runat="server" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" BackColor="Maroon" Height="24px" Text="" ForeColor="#FFFFCC" Width="450px" Font-Bold="true" style="vertical-align:middle; text-align:center; padding-left:5px;"></asp:Label>
</asp:TableCell></asp:TableRow>
<asp:TableRow><asp:TableCell>
<asp:GridView ID="GridView16" Width="450px" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="8pt" AutoGenerateColumns="False" DataSourceID="SqlDataSource16" ShowFooter="True" HorizontalAlign="center" >
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false" />
        <asp:BoundField DataField="intPlace" SortExpression="intPlace" >
            <ItemStyle Width="20px" HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:BoundField DataField="strSchool" HeaderText="Team" SortExpression="strSchool" >
            <ItemStyle Width="140px" HorizontalAlign="left" />
        </asp:BoundField>
        <asp:BoundField DataField="intW" HeaderText="Wins" SortExpression="intW">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intL" HeaderText="Loss" SortExpression="intL">
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDW" HeaderText="Dist W" SortExpression="intDW" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intDL" HeaderText="Dist L" SortExpression="intDL" >
            <ItemStyle Width="30px" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="intPointDiff" HeaderText="+/-" SortExpression="intPointDiff" >
            <ItemStyle Width="30px" HorizontalAlign="Right" />
        </asp:BoundField>        
        <asp:BoundField DataField="intYear" HeaderText="Year" SortExpression="intYear" Visible="False" />
        <asp:BoundField DataField="strClass" SortExpression="strClass" Visible="False" />
        <asp:BoundField DataField="strDistrict" SortExpression="strDistrict" >
            <ItemStyle Width="1px" HorizontalAlign="Center"  />
        </asp:BoundField>
    </Columns>
    <FooterStyle BackColor="#FFFFCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="30px" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</asp:TableCell></asp:TableRow>
</asp:Table>

</asp:Panel>
    <asp:SqlDataSource ID="SqlDataSourceClasses" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strClass, intYear FROM tblFootballDistricts WHERE intYear = @year ORDER BY intYear">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadDropDownListYear" DefaultValue="" PropertyName="SelectedValue" Type="String" Name="year" />
        </SelectParameters>    
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSourceYears" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT intYear FROM tblYears WHERE strSport = 'Football' ORDER BY intYear DESC">
    </asp:SqlDataSource> 

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL],CAST((CAST([intW] AS decimal) / (CAST([intW] AS decimal)+CAST([intL] AS decimal))) AS decimal(5,3)) As WinPerc, [intDW], [intDL], CAST((CAST([intDW] AS decimal) / (CAST([intDW] AS decimal)+CAST([intDL] AS decimal))) AS decimal(5,3)) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-1') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1d" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL],CAST((CAST([intW] AS decimal) / (CAST([intW] AS decimal)+CAST([intL] AS decimal))) AS decimal(5,3)) As WinPerc, [intDW], [intDL], CAST((CAST([intDW] AS decimal) / (CAST([intDW] AS decimal)+CAST([intDL] AS decimal))) AS decimal(5,3)) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-I-1') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND ([strDistrict] = @strClass+'-2' OR [strDistrict] = @strClass+'-2N')) ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2a" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND ([strDistrict] = @strClass+'-2S')) ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2d" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL],CAST((CAST([intW] AS decimal) / (CAST([intW] AS decimal)+CAST([intL] AS decimal))) AS decimal(5,3)) As WinPerc, [intDW], [intDL], CAST((CAST([intDW] AS decimal) / (CAST([intDW] AS decimal)+CAST([intDL] AS decimal))) AS decimal(5,3)) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-I-2') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND ([strDistrict] = @strClass+'-3')) ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource3d" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL],CAST((CAST([intW] AS decimal) / (CAST([intW] AS decimal)+CAST([intL] AS decimal))) AS decimal(5,3)) As WinPerc, [intDW], [intDL], CAST((CAST([intDW] AS decimal) / (CAST([intDW] AS decimal)+CAST([intDL] AS decimal))) AS decimal(5,3)) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-II-1') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-4') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource4d" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL],CAST((CAST([intW] AS decimal) / (CAST([intW] AS decimal)+CAST([intL] AS decimal))) AS decimal(5,3)) As WinPerc, [intDW], [intDL], CAST((CAST([intDW] AS decimal) / (CAST([intDW] AS decimal)+CAST([intDL] AS decimal))) AS decimal(5,3)) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-II-2') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-5') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-6') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND ([strDistrict] = @strClass+'-7' OR [strDistrict] = @strClass+'-7E')) ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource7a" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND ([strDistrict] = @strClass+'-7W')) ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-8') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-9') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-10') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-11') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-12') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-13') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-14') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-15') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
    SelectCommand="SELECT [Id], [strSchool], [intW], [intL], dbo.getWinPercentage(intW, intL) As WinPerc, [intDW], [intDL], dbo.getWinPercentage(intDW, intDL) As DistWinPerc, [intPointDiff], [intPlace], [intYear], [strClass], [strDistrict] FROM [tblFootballDistricts] WHERE (([intYear] = @intYear) AND ([strClass] = @strClass) AND [strDistrict] = @strClass+'-16') ORDER BY [strDistrict], [intPlace]">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="intYear" SessionField="distYear" Type="Int16" />
        <asp:SessionParameter DefaultValue="Z" Name="strClass" SessionField="distClass" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>



</asp:Content>



