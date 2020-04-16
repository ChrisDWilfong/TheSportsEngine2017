<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Brackets/Football.Master" CodeBehind="Football.aspx.vb" Inherits="TheSportsEngine2017.Football1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-3">
                <div class="col-sm navbar-dark bg-dark" style="font-family:Lalezar;font-size:xx-large;padding-top:5px;height:50px;vertical-align:middle;color:white;">
                YOUR INFO
                </div>
                <label for="txtFirstName" class="sr-only">Your Name</label>
                <input type="text" id="txtFirstName" class="form-control" placeholder="Your FIRST Name..." required autofocus><br />
                <label for="txtLastName" class="sr-only">Your Name</label>
                <input type="text" id="txtLastName" class="form-control" placeholder="Your LAST Name..." required autofocus><br />
                <label for="txtEmail" class="sr-only">Your Name</label>
                <input type="text" id="txtEmail" class="form-control" placeholder="Your EMAIL..." required autofocus>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-3">
                <div class="col-sm navbar-dark bg-dark" style="font-family:Lalezar;font-size:xx-large;padding-top:5px;height:50px;vertical-align:middle;color:white;">
                CLASS
                </div>
                <br />
                <label for="cboGame0101"><strong>CLASS</strong></label>
                <asp:DropDownList runat="server" ID="cboClass" CssClass="custom-select d-block w-100" OnSelectedIndexChanged="cboClass_SelectedIndexChanged" AutoPostBack="true" Width="100%">
                    <asp:ListItem Value="" Text="Select Class..."></asp:ListItem>
                    <asp:ListItem Value="6A-I" Text="6A-I"></asp:ListItem>
                    <asp:ListItem Value="6A-II" Text="6A-II"></asp:ListItem>
                    <asp:ListItem Value="Class 5A" Text="5A"></asp:ListItem>
                    <asp:ListItem Value="Class 4A" Text="4A"></asp:ListItem>
                    <asp:ListItem Value="Class 3A" Text="3A"></asp:ListItem>
                    <asp:ListItem Value="Class 2A" Text="2A"></asp:ListItem>
                    <asp:ListItem Value="Class A" Text="A"></asp:ListItem>
                    <asp:ListItem Value="Class B" Text="B"></asp:ListItem>
                    <asp:ListItem Value="Class C" Text="C"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 mb-3">
                <div class="col-sm navbar-dark bg-dark" style="font-family:Lalezar;font-size:xx-large;padding-top:5px;height:50px;vertical-align:middle;color:white;">
                QUARTERFINALS
                </div>
                <br />
                <label for="cboGame0101"><strong>GAME #1</strong></label>
                <asp:DropDownList runat="server" ID="cboGame0101" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchool" OnDataBound="cboGame01_DataBound" 
                    OnSelectedIndexChanged="cboGame01_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
                    <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="validateScoresheet0101" ControlToValidate="cboGame0101" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>
                
                <asp:DropDownList runat="server" ID="cboGame0102" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchool" OnDataBound="cboGame01_DataBound"
                    OnSelectedIndexChanged="cboGame01_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
                    <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="validateScoresheet0102" ControlToValidate="cboGame0102" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>

                <label for="cboGame0201"><strong>GAME #2</strong></label>
                <asp:DropDownList runat="server" ID="cboGame0201" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchool" OnDataBound="cboGame01_DataBound" 
                    OnSelectedIndexChanged="cboGame02_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
	                <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0201" ControlToValidate="cboGame0201" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>                
                
                <asp:DropDownList runat="server" ID="cboGame0202" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchool" OnDataBound="cboGame01_DataBound"
                    OnSelectedIndexChanged="cboGame02_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
     	        <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0202" ControlToValidate="cboGame0202" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>

                <label for="cboGame0301"><strong>GAME #3</strong></label>
                <asp:DropDownList runat="server" ID="cboGame0301" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchool" OnDataBound="cboGame01_DataBound" 
                    OnSelectedIndexChanged="cboGame03_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
	                <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0301" ControlToValidate="cboGame0301" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>                
                
                <asp:DropDownList runat="server" ID="cboGame0302" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchool" OnDataBound="cboGame01_DataBound"
                    OnSelectedIndexChanged="cboGame03_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
     	        <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0302" ControlToValidate="cboGame0302" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>

                <label for="cboGame0401"><strong>GAME #4</strong></label>
                <asp:DropDownList runat="server" ID="cboGame0401" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchool" OnDataBound="cboGame01_DataBound" 
                    OnSelectedIndexChanged="cboGame04_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
	                <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0401" ControlToValidate="cboGame0401" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>                
                
                <asp:DropDownList runat="server" ID="cboGame0402" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchool" OnDataBound="cboGame01_DataBound"
                    OnSelectedIndexChanged="cboGame04_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
     	        <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0402" ControlToValidate="cboGame0402" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-4 mb-3">
                <div class="col-sm navbar-dark bg-dark" style="font-family:Lalezar;font-size:xx-large;padding-top:5px;height:50px;vertical-align:middle;color:white;">
                SEMIFINALS
                </div>
                <br />
                <label for="cboGame0101"><strong>GAME #5</strong></label>
                <asp:DropDownList runat="server" ID="cboGame0501" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchoolDisplay" OnDataBound="cboGame01_DataBound" 
                    OnSelectedIndexChanged="cboGame05_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
                    <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0501" ControlToValidate="cboGame0501" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>
                
                <asp:DropDownList runat="server" ID="cboGame0502" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchoolDisplay" OnDataBound="cboGame01_DataBound"
                    OnSelectedIndexChanged="cboGame05_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
                    <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0502" ControlToValidate="cboGame0502" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>

                <label for="cboGame0201"><strong>GAME #6</strong></label>
                <asp:DropDownList runat="server" ID="cboGame0601" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchoolDisplay" OnDataBound="cboGame01_DataBound" 
                    OnSelectedIndexChanged="cboGame06_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
	                <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0601" ControlToValidate="cboGame0601" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>                
                
                <asp:DropDownList runat="server" ID="cboGame0602" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchoolDisplay" OnDataBound="cboGame01_DataBound"
                    OnSelectedIndexChanged="cboGame06_SelectedIndexChanged" AutoPostBack="true" Width="100%" BackColor="LightYellow">
     	        <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0602" ControlToValidate="cboGame0602" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-4 mb-3">
                <div class="col-sm navbar-dark bg-dark" style="font-family:Lalezar;font-size:xx-large;padding-top:5px;height:50px;vertical-align:middle;color:white;">
                STATE CHAMPIONSHIP
                </div>
                <br />
                <label for="cboGame0701"><strong>GAME #7</strong></label>
                <asp:DropDownList runat="server" ID="cboGame0701" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchool" OnDataBound="cboGame01_DataBound" 
                    OnSelectedIndexChanged="cboGame01_SelectedIndexChanged" AutoPostBack="true" Width="100%">
                    <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0701" ControlToValidate="cboGame0701" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>
                
                <asp:DropDownList runat="server" ID="cboGame0702" CssClass="custom-select d-block w-100" DataValueField="strSchool" DataTextField="strSchool" OnDataBound="cboGame01_DataBound" 
                    OnSelectedIndexChanged="cboGame01_SelectedIndexChanged" AutoPostBack="true" Width="100%">
                    <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0702" ControlToValidate="cboGame0702" runat="server" Display="Dynamic" CssClass="invalid-feedback" Text="Select a team."></asp:RequiredFieldValidator>

            </div>
        </div>
    </div>
</asp:Content>
