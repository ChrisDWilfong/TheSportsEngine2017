<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageAdminNoMenu.Master" CodeBehind="PhotoMgr.aspx.vb" Inherits="TheSportsEngine2017.PhotoMgr" %>
<asp:Content ID="Content0" ContentPlaceHolderID="head" runat="server">
    <link href="/styles/default.css" rel="stylesheet" />
    <link href="/styles/grid.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Table runat="server" ID="tblMemDets" style="padding-left:10px;">
        <asp:TableRow>
            <asp:TableCell ColumnSpan="4">
                <asp:Label ID="idChampionship" runat="server" BackColor="LightCoral" Width="100px"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Sport : "  ></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left" ColumnSpan="3">
                <telerik:RadDropDownList ID="RadDropDownListSport" runat="server" DataSourceID="SqlDataSourceSport" DataTextField="strSport1" DataValueField="strSportGenderKey" AutoPostBack="true" DefaultMessage="Select Sport...">
                </telerik:RadDropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Year : "  ></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left" ColumnSpan="3">
                <telerik:RadDropDownList ID="RadDropDownListYear" runat="server" DataSourceID="SqlDataSourceYear" DataTextField="strYear" DataValueField="intYear" AutoPostBack="true" DefaultMessage="Select Year...">
                </telerik:RadDropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server" Text="Class : "  ></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left" ColumnSpan="3">
                <telerik:RadDropDownList ID="RadDropDownListClass" runat="server" DataSourceID="SqlDataSourceClass" DataTextField="strClass" DataValueField="strClass" AutoPostBack="true" DefaultMessage="Select Class...">
                </telerik:RadDropDownList>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="School : "  ></asp:Label>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Left" ColumnSpan="3">
                <telerik:RadDropDownList ID="RadDropDownListSchool" runat="server" DataSourceID="SqlDataSourceSchool" DataTextField="strSchoolName" DataValueField="strSchoolKey" AutoPostBack="true" DefaultMessage="Select School...">
                </telerik:RadDropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="left">
            <asp:TableCell >
                <asp:TextBox ID="id" runat="server" Visible="false" CssClass="textbox" Font-Names="Verdana" Width="60px" CausesValidation="false" ForeColor="Blue"></asp:TextBox>
            </asp:TableCell >
                <asp:Label ID="lblDescription" runat="server" Text="Description: "  ></asp:Label>
            </asp:TableCell >
            <asp:TableCell >
                <asp:TextBox ID="strDescription" runat="server" CssClass="textbox" Font-Names="Verdana" Width="600px" TextMode="MultiLine" Rows="2" CausesValidation="false" ForeColor="Blue"></asp:TextBox>
            </asp:TableCell >
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="left">
                <asp:Label ID="Label1" runat="server" Text="Upload: "  ></asp:Label>
            </asp:TableCell > 
            <asp:TableCell>  
                <Telerik:RadAsyncUpload id="RadAsyncUpload1"  runat="server" ForeColor="yellow"> </Telerik:RadAsyncUpload>
                <asp:Button id="UploadButton" AutoPostBack="true" Text="Upload Document" runat="server" OnClick="UploadDocument_Click" ForeColor="Black">
                </asp:Button>   
                <asp:Label id="UploadStatusLabel"  forecolor="Red" runat="server">
                </asp:Label>                              
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow><asp:TableCell ColumnSpan="2">
            <asp:Label ID="lblOR" runat="server" Text="OR" ForeColor="Yellow" Font-Bold="true"></asp:Label>
        </asp:TableCell></asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="left">
                <asp:Label ID="lblLinkAdd" runat="server" Text="Link : "  ></asp:Label>
            </asp:TableCell >
            <asp:TableCell >
                <asp:TextBox ID="strLink" runat="server" CssClass="textbox" Width="600px" Font-Names="Verdana" CausesValidation="false" ForeColor="Blue"></asp:TextBox>
            </asp:TableCell >
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="left">
                <asp:Label ID="lblSort" runat="server" Text="Sort : "  ></asp:Label>
            </asp:TableCell >
            <asp:TableCell >
                <asp:TextBox ID="intSort" runat="server" CssClass="textbox" Width="50px" Font-Names="Verdana" CausesValidation="false" ForeColor="Blue"></asp:TextBox>
            </asp:TableCell >
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="left">
                <asp:Label ID="lblYear" runat="server" Text="Year : "  ></asp:Label>
            </asp:TableCell >
            <asp:TableCell >
                <asp:TextBox ID="intYear" runat="server" CssClass="textbox" Width="50px" Font-Names="Verdana" CausesValidation="false" ForeColor="Blue"></asp:TextBox>
            </asp:TableCell >
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" >
                <asp:TextBox ID="strImage" runat="server" CssClass="textbox" Width="50px" Font-Names="Verdana" CausesValidation="false" ForeColor="Blue"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell >
                <asp:TextBox ID="txtidstrStateChampion" runat="server" CssClass="textbox" Width="100px" Font-Names="Verdana" CausesValidation="false" ForeColor="Blue"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell >
                <asp:TextBox ID="txtidstrStateChampionSchool" runat="server" CssClass="textbox" Width="100px" Font-Names="Verdana" CausesValidation="false" ForeColor="Blue"></asp:TextBox>
            </asp:TableCell>

        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" >
                <asp:TextBox ID="strSubFolder" runat="server" CssClass="textbox" Width="50px" Font-Names="Verdana" CausesValidation="false" ForeColor="Blue"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
         <asp:TableCell>&nbsp;</asp:TableCell>
            <asp:TableCell  HorizontalAlign="left"> 
               <asp:Button ID="cmdSubmit" runat="server" Text="Save Changes" CommandName="Update" CausesValidation="false" ForeColor="Black" />&nbsp;&nbsp;
               <asp:Button ID="btnCancel" Text="Cancel" runat="server" CausesValidation="False" CommandName="Cancel" ForeColor="Black"></asp:Button>&nbsp;&nbsp;
        </asp:TableCell >
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
                <asp:Label runat="server" ID="lblMessage" ForeColor="Red"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
</asp:Table>

    <asp:SqlDataSource ID="SqlDataSourceYear" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT intYear, CAST(intYear AS varchar) AS strYear FROM tblStateChampions WHERE strSportGenderKey = @sport AND strState = @state ORDER BY intYear DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter ControlID="RadDropDownListSport" Name="sport" DefaultValue="NONE" />
        </SelectParameters>    
    </asp:SqlDataSource>   

    <asp:SqlDataSource ID="SqlDataSourceSport" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strSportGenderKey, strSport1 FROM tblSports WHERE strState = @state ORDER BY strSport1">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource> 

    <asp:SqlDataSource ID="SqlDataSourceSchool" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strSchoolKey, strSchoolName FROM tblSchoolInfo WHERE strState = @state ORDER BY strSchoolName">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource> 

    <asp:SqlDataSource ID="SqlDataSourceClass" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strClass FROM tblStateChampions WHERE strSportGenderKey = @sport AND intYear = @year">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadDropDownListSport" Name="sport" DefaultValue="NONE" />
            <asp:ControlParameter ControlID="RadDropDownListYear" Name="year" DefaultValue="1900" />
        </SelectParameters>    

    </asp:SqlDataSource> 
         
</asp:Content>

