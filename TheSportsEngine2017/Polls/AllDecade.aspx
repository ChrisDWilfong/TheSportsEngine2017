<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Polls/Decade.Master" CodeBehind="AllDecade.aspx.vb" Inherits="TheSportsEngine2017.AllDecade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelFB" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-3">
                <asp:Image runat="server" ID="imgHeader" ImageUrl="~/images/IWATG/AllDecade.png" Width="225%" />
                <asp:Label runat="server" ID="lblHeader" Text="Place your vote for the top 5 ALL DECADE teams for each Sport/Class <i>(when Football Championships are complete, we will open up Football)</i>.
                        They will be open until December 31st then will reveal the ALL-DECADE TEAMS. So vote today, vote often!" Font-Size="Medium" Width="225%"></asp:Label>
            </div>
        </div>
    </div>
    <div id="adsense_container" style="text-align:center;">
        <!-- Responsive Ad -->
        <ins class="adsbygoogle"
            style="display:block"
            data-ad-client="ca-pub-6403098483302166"
            data-ad-slot="7074715447"
            data-ad-format="auto"></ins>
        <script>
            (adsbygoogle = window.adsbygoogle || []).push({});
        </script>
    </div>
    <div>
    <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanelDecade" ViewStateMode="Enabled" >
        <ProgressTemplate>
            <asp:Image ID="Image101" runat="server" ImageUrl="~/images/ajax-loading.gif" AlternateText="Loader..." />
        </ProgressTemplate>
    </asp:UpdateProgress>
    </div>
    <asp:UpdatePanel ID="UpdatePanelDecade" runat="server" UpdateMode="Always">
        <ContentTemplate>
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-3">
                <div class="col-sm navbar-dark bg-dark" style="font-family:Lalezar;font-size:xx-large;padding-top:5px;height:50px;vertical-align:middle;color:white;">
                SELECT SPORT/CLASS
                </div>
                <br />
                <label for="cboStateChampionSport"><strong>STATE CHAMPIONSHIP SPORT</strong></label>
                <asp:DropDownList runat="server" ID="cboStateChampionSport" CssClass="custom-select d-block w-100" OnSelectedIndexChanged="cboStateChampionSport_SelectedIndexChanged" 
                    AutoPostBack="true" Width="100%" DataTextField="strDisplay" DataValueField="strSportGenderKey" BackColor="Orange">
                    <asp:ListItem Value="x" Text="Select A Sport..."></asp:ListItem>
                </asp:DropDownList>
                <br />
                <label for="cboStateChampionClass"><strong>CLASS</strong></label>
                <asp:DropDownList runat="server" ID="cboStateChampionClass" CssClass="custom-select d-block w-100" OnSelectedIndexChanged="cboStateChampionClass_SelectedIndexChanged" 
                    AutoPostBack="true" Width="100%" DataSourceID="SqlDataSource2" DataTextField="strClass" DataValueField="strClass" BackColor="Orange">
                    <asp:ListItem Value="x" Text="Select A Class..."></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-4 mb-3">
                <div class="col-sm navbar-dark bg-dark" style="font-family:Lalezar;font-size:xx-large;padding-top:5px;height:50px;vertical-align:middle;color:white;">
                ALL-DECADE TEAM
                </div>
                <br />
                <label for="cboTeam01"><strong>#1 ALL-DECADE TEAM</strong></label>
                <asp:DropDownList runat="server" ID="cboTeam01" CssClass="custom-select d-block w-100" DataValueField="Id" DataTextField="strDisplay"
                    OnSelectedIndexChanged="cboTeam01_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
                    <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="validateScoresheet0101" ControlToValidate="cboTeam01" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>
                <br />
                <label for="cboTeam02"><strong>#2 ALL-DECADE TEAM</strong></label>
                <asp:DropDownList runat="server" ID="cboTeam02" CssClass="custom-select d-block w-100" DataValueField="Id" DataTextField="strDisplay" 
                    OnSelectedIndexChanged="cboTeam02_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
                    <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="validateScoresheet0102" ControlToValidate="cboTeam02" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>
                <br />
                <label for="cboTeam03"><strong>#3 ALL-DECADE TEAM</strong></label>
                <asp:DropDownList runat="server" ID="cboTeam03" CssClass="custom-select d-block w-100" DataValueField="Id" DataTextField="strDisplay" 
                    OnSelectedIndexChanged="cboTeam03_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
	                <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0201" ControlToValidate="cboTeam03" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>                
                <br />
                <label for="cboTeam04"><strong>#4 ALL-DECADE TEAM</strong></label>
                <asp:DropDownList runat="server" ID="cboTeam04" CssClass="custom-select d-block w-100" DataValueField="Id" DataTextField="strDisplay" 
                    OnSelectedIndexChanged="cboTeam04_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
     	        <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0202" ControlToValidate="cboTeam04" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>
                <br />
                <label for="cboTeam05"><strong>#5 ALL-DECADE TEAM</strong></label>
                <asp:DropDownList runat="server" ID="cboTeam05" CssClass="custom-select d-block w-100" DataValueField="Id" DataTextField="strDisplay"
                    OnSelectedIndexChanged="cboTeam05_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
	                <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0301" ControlToValidate="cboTeam05" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>                
            </div>
            <div class="col-md-4 mb-3">
                <div class="col-sm navbar-dark bg-dark" style="font-family:Lalezar;font-size:xx-large;padding-top:5px;height:50px;vertical-align:middle;color:white;">
                YOUR INFO
                </div>
                <telerik:RadTextBox runat="server" ID="txtFirstName" DisplayText="Enter FIRST Name..." Width="100%" BackColor="Orange"></telerik:RadTextBox><br />
                <telerik:RadTextBox runat="server" ID="txtLastName" DisplayText="Enter LAST Name (optional)..." Width="100%" BackColor="Orange"></telerik:RadTextBox><br />
                <telerik:RadTextBox runat="server" ID="txtTwitter" DisplayText="@Twitter (optional)..." Width="100%" BackColor="LightYellow"></telerik:RadTextBox><br />
                <telerik:RadTextBox runat="server" ID="txtEmail" DisplayText="Email (optional)..." Width="100%" BackColor="LightYellow"></telerik:RadTextBox>
                <br />
                <asp:Button runat="server" ID="cmdSubmit" Text="Submit your VOTE" BackColor="Green" ForeColor="Yellow" Width="100%" Height="44px" Font-Size="XX-Large" Font-Names="Lalezar" />
                <br />
                <asp:Label runat="server" ID="lblMessage" ForeColor="Red" Font-Bold="true"></asp:Label><br />
            </div>
        </div>
    </div>
    </ContentTemplate>
    </asp:UpdatePanel>
    </asp:Panel>
        <div style="text-align:center;">
            <!-- Responsive Ad -->
            <ins class="adsbygoogle"
                style="display:block"
                data-ad-client="ca-pub-6403098483302166"
                data-ad-slot="7074715447"
                data-ad-format="auto"></ins>
                <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strSport1 AS strDisplay, strSportGenderKey FROM tblSports WHERE showPoll = 1 AND strState = @state ORDER BY strSportGenderKey">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strClass FROM tblStateChampions WHERE (strState = @state OR strState = 'OKF') AND strSportGenderKey = @sportGenderKey AND strClass <> 'ALL' AND intYear >= 2010 ORDER BY strClass DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="sportGenderKey" ControlID="cboStateChampionSport" DefaultValue="None" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>    
</asp:Content>
