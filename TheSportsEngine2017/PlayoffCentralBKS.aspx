<%@ Page Title="Playoff Central : Oklahoma High School Basketball" Language="VB" AutoEventWireup="false" MasterPageFile="MasterPageBasketballNOAJAX.Master" CodeBehind="PlayoffCentralBKS.aspx.vb" Inherits="TheSportsEngine2017.PlayoffCentralBKS"  %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/gridPS.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
    <link href="styles/TableStyle.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="2020 Oklahoma High School Basketball Playoff Central" />
    <meta name="twitter:description" content="2020 Oklahoma High School Basketball Playoff Central" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Basketball_PlayoffCentral.png" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper0">
             <asp:Table runat="server" ID="tblHeaderm" HorizontalAlign="Left" Visible="false" Width="100%">
				<asp:TableRow>
					<asp:TableCell>
						<asp:Label runat="server" Font-Size="X-Large" Text="We couldn't play the #OKPreps BASKETBALL STATE TOURNAMENT this week<br>so we did a VIRTUAL State Tournament Bracket via voting on TWITTER.<br><br>Here's the hashtag <strong>#OKPrepsBasketballStateTourney</strong><br><br>Below are the brackets with the final results of the voting and the VITRUAL GOLD BALLS for the VIRTUAL STATE CHAMPIONS!"></asp:Label> 
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<asp:HyperLink runat="server" NavigateUrl="../playoffs/2020Basketball/2020StateBasketball6A.pdf?id=2" Text="Class 6A Bracket" Font-Size="Large"></asp:HyperLink><br />
						<asp:HyperLink runat="server" NavigateUrl="../playoffs/2020Basketball/2020StateBasketball5A.pdf?id=2" Text="Class 5A Bracket" Font-Size="Large"></asp:HyperLink><br />
						<asp:HyperLink runat="server" NavigateUrl="../playoffs/2020Basketball/2020StateBasketball4A.pdf?id=2" Text="Class 4A Bracket" Font-Size="Large"></asp:HyperLink><br />
						<asp:HyperLink runat="server" NavigateUrl="../playoffs/2020Basketball/2020StateBasketball3A.pdf?id=2" Text="Class 3A Bracket" Font-Size="Large"></asp:HyperLink><br />
						<asp:HyperLink runat="server" NavigateUrl="../playoffs/2020Basketball/2020StateBasketball2A.pdf?id=2" Text="Class 2A Bracket" Font-Size="Large"></asp:HyperLink><br />
				   </asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
				<asp:TableCell>
					<telerik:RadRotator ID="RadRotator2" runat="server" RenderMode="Lightweight" Width="300" Height="175" ScrollDuration="1500" ScrollDirection="Left" FrameDuration="2000" ItemHeight="180" ItemWidth="100">
						<Items>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy6ABoysSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy6ABoys.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy6AGirlsSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy6AGirls.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy5ABoysSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy5ABoys.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy5AGirlsSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy5AGirls.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy4ABoysSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy4ABoys.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy4AGirlsSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy4AGirls.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy3ABoysSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy3ABoys.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy3AGirlsSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy3AGirls.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy2ABoysSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy2ABoys.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy2AGirlsSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy2AGirls.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
						</Items>
					</telerik:RadRotator>
				</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<asp:Label runat="server" Font-Size="Large" Text="Click above to collect the GOLD BALL!"></asp:Label> 
					</asp:TableCell>
				</asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Image runat="server" ID="playoffCentralAdM" ImageUrl="~/images/ads/PlayoffCentralBKDPWeb300.png" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="cboClassm" AutoPostBack="true" Font-Bold="true" Height="42px" Width="90%" Font-Size="Large" BackColor="Yellow" style="border-color:lightgray; border-radius:5px;">
							<asp:ListItem Text="Class 6A Boys STATE" Value="BasketballBoys6A"></asp:ListItem>
							<asp:ListItem Text="Class 6A Girls STATE" Value="BasketballGirls6A"></asp:ListItem>
							<asp:ListItem Text="Class 5A Boys STATE" Value="BasketballBoys5A"></asp:ListItem>
							<asp:ListItem Text="Class 5A Girls STATE" Value="BasketballGirls5A"></asp:ListItem>
							<asp:ListItem Text="Class 4A Boys STATE" Value="BasketballBoys4A"></asp:ListItem>
							<asp:ListItem Text="Class 4A Girls STATE" Value="BasketballGirls4A"></asp:ListItem>
							<asp:ListItem Text="Class 3A Boys STATE" Value="BasketballBoys3A"></asp:ListItem>
							<asp:ListItem Text="Class 3A Girls STATE" Value="BasketballGirls3A"></asp:ListItem>
							<asp:ListItem Text="Class 2A Boys STATE" Value="BasketballBoys2A"></asp:ListItem>
							<asp:ListItem Text="Class 2A Girls STATE" Value="BasketballGirls2A"></asp:ListItem>
							<asp:ListItem Text="Class A Boys STATE" Value="BasketballBoysA"></asp:ListItem>
							<asp:ListItem Text="Class A Girls STATE" Value="BasketballGirlsA"></asp:ListItem>
							<asp:ListItem Text="Class B Boys STATE" Value="BasketballBoysB"></asp:ListItem>
							<asp:ListItem Text="Class B Girls STATE" Value="BasketballGirlsB"></asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>           
            <asp:Table runat="server" ID="tblContentM" HorizontalAlign="left" width="100%" Visible ="false">
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:Label runat="server" ID="lblHeaderBoysM" Font-Size="Medium" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;"></asp:Label><br />
                        <asp:Label runat="server" ID="Label3" Font-Size="X-Small" Font-Italic="true" Font-Bold="true" ForeColor="Red" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Text="Click the team below to see every playoff game in school history."></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:HyperLink runat="server" ID="hlStateM" Font-Bold="true" Font-Size="Medium" Target="_blank"></asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:HyperLink runat="server" ID="hlNewsM" Font-Bold="true" Font-Size="Medium" Target="_blank"></asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BackColor="DarkGray" ForeColor="White" BorderWidth="0">
                    <asp:TableCell ID="cellQFm" Text="QUARTERFINALS" Font-Bold="true" Width="100%" HorizontalAlign="center" BackColor="Gray" ColumnSpan="2"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Width="100%">
                    <asp:TableCell ID="cellR1C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR1C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR1C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR1C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell ID="cellR2C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR2C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR2C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR2C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="white">
                    <asp:TableCell ColumnSpan="2" ID="cellR2aC1m" Font-Bold="true" HorizontalAlign="center" BackColor="White" Font-Italic="true" ForeColor="Black"><asp:HyperLink runat="server" ID="HyperLink1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Width="100%">
                    <asp:TableCell ID="cellR3C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR3C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR3C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR3C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell ID="cellR4C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR4C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR4C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR4C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="white">
                    <asp:TableCell ColumnSpan="2" ID="cellR4aC1m" Font-Bold="true" HorizontalAlign="center" BackColor="White" Font-Italic="true"  ForeColor="Black"><asp:HyperLink runat="server" ID="HyperLink2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Width="100%">
                    <asp:TableCell ID="cellR5C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR5C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR5C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR5C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell ID="cellR6C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR6C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR6C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR6C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="white">
                    <asp:TableCell ColumnSpan="2" ID="cellR6aC1m" Font-Bold="true" HorizontalAlign="center" BackColor="White" Font-Italic="true"  ForeColor="Black"><asp:HyperLink runat="server" ID="HyperLink3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Width="100%">
                    <asp:TableCell ID="cellR7C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR7C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR7C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR7C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell ID="cellR8C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR8C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR8C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR8C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="white">
                    <asp:TableCell ColumnSpan="2" ID="cellR8aC1m" Font-Bold="true" HorizontalAlign="center" BackColor="White" Font-Italic="true"  ForeColor="Black"><asp:HyperLink runat="server" ID="HyperLink4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BackColor="DarkGray" ForeColor="White" BorderWidth="0">
                    <asp:TableCell ID="cellSFm" Text="SEMIFINALS" Font-Bold="true" Width="100%" HorizontalAlign="center" BackColor="Gray" ColumnSpan="2"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Width="100%">
                    <asp:TableCell ID="cellR9C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR9C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR9C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR9C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell ID="cellR10C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR10C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR10C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR10C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="white">
                    <asp:TableCell ColumnSpan="2" ID="cellR10aC1m" Font-Bold="true" HorizontalAlign="center" BackColor="White" Font-Italic="true"  ForeColor="Black"><asp:HyperLink runat="server" ID="HyperLink5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Width="100%">
                    <asp:TableCell ID="cellR11C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR11C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR11C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR11C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell ID="cellR12C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR12C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR12C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR12C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="white">
                    <asp:TableCell ColumnSpan="2" ID="cellR12aC1m" Font-Bold="true" HorizontalAlign="center" BackColor="White" Font-Italic="true"  ForeColor="Black"><asp:HyperLink runat="server" ID="HyperLink6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow BackColor="DarkGray" ForeColor="White" BorderWidth="0">
                    <asp:TableCell ID="cellCm" Text="STATE CHAMPIONSHIP" Font-Bold="true" Width="100%" HorizontalAlign="center" BackColor="Gray" ColumnSpan="2"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Width="100%">
                    <asp:TableCell ID="cellR13C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR13C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR13C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR13C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell ID="cellR14C1m" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR14C1m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                    <asp:TableCell ID="cellR14C2m" Font-Bold="true" HorizontalAlign="center" ForeColor="Red" Font-Size="Large"><asp:HyperLink runat="server" ID="hlR14C2m" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="white">
                    <asp:TableCell ColumnSpan="2" ID="cellR14aC1m" Font-Bold="true" HorizontalAlign="center" BackColor="White" Font-Italic="true"  ForeColor="Black"><asp:HyperLink runat="server" ID="HyperLink7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table runat="server" ID="tblBKPlayoffMatchupM" Width="100%" HorizontalAlign="Left">  
               <asp:TableRow>
                   <asp:TableCell BackColor="LightGray" ColumnSpan="2"><h3><asp:Label runat="server" ID="lblTeam1SeasonInfoM"></asp:Label></h3></asp:TableCell>
              </asp:TableRow>
              <asp:TableRow>
                        <asp:TableCell VerticalAlign="Top">
                            <telerik:RadGrid ID="RadGridTeamHistoryM" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"
                                 AllowPaging="false" >
                                <MasterTableView DataSourceID="SqlDataSource2" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="strDisplayFinal" HeaderAbbr="Playoff History" UniqueName="strDisplayFinal" HeaderText="PLAYOFF HISTORY" 
                                            AllowFiltering="false" AllowSorting="false" >
                                            <HeaderStyle Font-Bold="true"  />
                                        </telerik:GridBoundColumn>
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow Visible="false">
                        <asp:TableCell ColumnSpan="2"><asp:HyperLink ID="hlBottomM" runat="server" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4XH5CLU3AKTVW" ImageUrl="~/images/OK/ORDER100YearSpecial.png" Target="_blank"></asp:HyperLink></asp:TableCell>
                    </asp:TableRow>
            </asp:Table>        
            <asp:Table runat="server" ID="tblHeader" HorizontalAlign="Center" Visible="true">
				<asp:TableRow>
					<asp:TableCell>
						<asp:Label runat="server" Font-Size="X-Large" Text="We couldn't play the #OKPreps BASKETBALL STATE TOURNAMENT this week<br>so we did a VIRTUAL State Tournament Bracket via voting on TWITTER.<br><br>Here's the hashtag <strong>#OKPrepsBasketballStateTourney</strong><br><br>Below are the brackets with the final results of the voting and the VITRUAL GOLD BALLS for the VIRTUAL STATE CHAMPIONS!"></asp:Label> 
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<asp:HyperLink runat="server" NavigateUrl="../playoffs/2020Basketball/2020StateBasketball6A.pdf?id=2" Text="Class 6A Bracket" Target="_blank" Font-Size="X-Large" Font-Bold="true"></asp:HyperLink>&nbsp;
						<asp:HyperLink runat="server" NavigateUrl="../playoffs/2020Basketball/2020StateBasketball5A.pdf?id=2" Text="Class 5A Bracket" Target="_blank" Font-Size="X-Large" Font-Bold="true"></asp:HyperLink>&nbsp;
						<asp:HyperLink runat="server" NavigateUrl="../playoffs/2020Basketball/2020StateBasketball4A.pdf?id=2" Text="Class 4A Bracket" Target="_blank" Font-Size="X-Large" Font-Bold="true"></asp:HyperLink>&nbsp;
						<asp:HyperLink runat="server" NavigateUrl="../playoffs/2020Basketball/2020StateBasketball3A.pdf?id=2" Text="Class 3A Bracket" Target="_blank" Font-Size="X-Large" Font-Bold="true"></asp:HyperLink>&nbsp;
						<asp:HyperLink runat="server" NavigateUrl="../playoffs/2020Basketball/2020StateBasketball2A.pdf?id=2" Text="Class 2A Bracket" Target="_blank" Font-Size="X-Large" Font-Bold="true"></asp:HyperLink>&nbsp;
				   </asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
				<asp:TableCell>
					<telerik:RadRotator ID="RadRotator1" runat="server" RenderMode="Lightweight" Width="900" Height="175" ScrollDuration="1500" ScrollDirection="Left" FrameDuration="2000" ItemHeight="180" ItemWidth="100">
						<Items>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy6ABoysSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy6ABoys.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy6AGirlsSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy6AGirls.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy5ABoysSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy5ABoys.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy5AGirlsSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy5AGirls.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy4ABoysSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy4ABoys.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy4AGirlsSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy4AGirls.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy3ABoysSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy3ABoys.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy3AGirlsSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy3AGirls.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy2ABoysSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy2ABoys.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
							<telerik:RadRotatorItem>
								<ItemTemplate>
									<asp:HyperLink runat="server" ImageUrl="~/playoffs/2020Basketball/Trophy2AGirlsSmall.png" Target="_blank" NavigateUrl="~/playoffs/2020Basketball/Trophy2AGirls.png"></asp:HyperLink>
								</ItemTemplate>
							</telerik:RadRotatorItem>
						</Items>
					</telerik:RadRotator>
				</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<asp:Label runat="server" Font-Size="Large" Text="Click above to collect the GOLD BALL!"></asp:Label> 
					</asp:TableCell>
				</asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Image runat="server" ID="playoffCentralAd" ImageUrl="~/images/ads/PlayoffCentralBKDPWeb.png" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="cboClass" AutoPostBack="true" Font-Bold="true" Width="450px" Height="45px" Font-Size="xx-Large" BackColor="Yellow" style="border-color:lightgray; border-radius:5px;">
							<asp:ListItem Text="Class 6A Boys STATE" Value="BasketballBoys6A"></asp:ListItem>
							<asp:ListItem Text="Class 6A Girls STATE" Value="BasketballGirls6A"></asp:ListItem>
							<asp:ListItem Text="Class 5A Boys STATE" Value="BasketballBoys5A"></asp:ListItem>
							<asp:ListItem Text="Class 5A Girls STATE" Value="BasketballGirls5A"></asp:ListItem>
							<asp:ListItem Text="Class 4A Boys STATE" Value="BasketballBoys4A"></asp:ListItem>
							<asp:ListItem Text="Class 4A Girls STATE" Value="BasketballGirls4A"></asp:ListItem>
							<asp:ListItem Text="Class 3A Boys STATE" Value="BasketballBoys3A"></asp:ListItem>
							<asp:ListItem Text="Class 3A Girls STATE" Value="BasketballGirls3A"></asp:ListItem>
							<asp:ListItem Text="Class 2A Boys STATE" Value="BasketballBoys2A"></asp:ListItem>
							<asp:ListItem Text="Class 2A Girls STATE" Value="BasketballGirls2A"></asp:ListItem>
							<asp:ListItem Text="Class A Boys STATE" Value="BasketballBoysA"></asp:ListItem>
                            <asp:ListItem Text="Class A Girls STATE" Value="BasketballGirlsA"></asp:ListItem>
                            <asp:ListItem Text="Class B Boys STATE" Value="BasketballBoysB"></asp:ListItem>
                            <asp:ListItem Text="Class B Girls STATE" Value="BasketballGirlsB"></asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Table runat="server" ID="tblContent" HorizontalAlign="Center" visible="true">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label runat="server" ID="lblHeaderBoys" Font-Size="XX-Large" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;"></asp:Label><br />
                        <asp:Label runat="server" ID="Label1" Font-Size="Medium" Font-Italic="true" Font-Bold="true" ForeColor="Red" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Text="Click the team below to see every playoff game in school history."></asp:Label>
                            <asp:Table runat="server" ID="tblPlayoffCentralBK" Width="1080px" BorderColor="Black" BorderWidth="1">
                                        <asp:TableRow>
                                            <asp:TableCell ColumnSpan="7">
                                                <asp:HyperLink runat="server" ID="hlState" Font-Bold="true" Font-Size="X-Large" Target="_blank"></asp:HyperLink>&nbsp;&nbsp;
                                                <asp:HyperLink runat="server" ID="hlArea1" Font-Bold="true" Font-Size="X-Large" Target="_blank" Visible="false"></asp:HyperLink>&nbsp;&nbsp;
                                                <asp:HyperLink runat="server" ID="hlArea2" Font-Bold="true" Font-Size="X-Large" Target="_blank" Visible="false"></asp:HyperLink>&nbsp;&nbsp;
                                                <asp:HyperLink runat="server" ID="hlArea3" Font-Bold="true" Font-Size="X-Large" Target="_blank" Visible="false"></asp:HyperLink>&nbsp;&nbsp;
                                                <asp:HyperLink runat="server" ID="hlArea4" Font-Bold="true" Font-Size="X-Large" Target="_blank" Visible="false"></asp:HyperLink>&nbsp;&nbsp;
                                                <asp:HyperLink runat="server" ID="hlNews" Font-Bold="true" Font-Size="X-Large" ForeColor="Red" Target="_blank"></asp:HyperLink>&nbsp;&nbsp;
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row1" BackColor="DarkGray" ForeColor="White" BorderWidth="0">
                                            <asp:TableCell ID="cellR1C1" Text="QUARTERFINALS Mar 5" Font-Bold="true" Width="20%" HorizontalAlign="center" BackColor="Gray"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C2" Text="" Font-Bold="true" Width="5%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C3" Text="SEMI FINALS Mar 6" Font-Bold="true" Width="20%" HorizontalAlign="center" BackColor="Gray"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C4" Text="" Font-Bold="true" Width="5%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C5" Text="CHAMPIONSHIP Mar 7" Font-Bold="true" Width="20%" HorizontalAlign="center" BackColor="Gray"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C6" Text="" Font-Bold="true" Width="5%" HorizontalAlign="center"></asp:TableCell>
                                            <asp:TableCell ID="cellR1C7" Text="CHAMPIONS" Font-Bold="true" Width="20%" HorizontalAlign="center" BackColor="Gray"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row2" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR2C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black" ><asp:HyperLink runat="server" ID="hlR2C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR2C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR2C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR2C3" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR2C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR2C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR2C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR2C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR2C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR2C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR2C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR2C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR2C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row3" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR3C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR3C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR3C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR3C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR3C3" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR3C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR3C4" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR3C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR3C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR3C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR3C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR3C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR3C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR3C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row4" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR4C1" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR4C1" Text="Info1"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR4C2" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR4C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR4C3" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR4C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR4C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR4C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR4C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR4C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR4C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR4C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR4C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR4C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row5" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR5C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR5C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR5C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR5C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR5C3" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR5C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR5C4" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR5C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR5C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR5C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR5C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR5C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR5C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR5C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row6" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR6C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR6C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR6C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR6C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR6C3" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR6C3" Text="Info5"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR6C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR6C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR6C5" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR6C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR6C6" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR6C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR6C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR6C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row7" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR7C1" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR7C1" Text="Info2"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR7C2" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR7C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR7C3" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR7C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR7C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR7C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR7C5" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR7C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR7C6" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR7C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR7C7" Font-Bold="true" HorizontalAlign="center" BackColor="Red" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR7C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row8" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR8C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR8C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR8C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR8C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR8C3" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR8C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR8C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR8C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR8C5" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR8C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR8C6" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR8C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR8C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR8C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row9" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR9C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR9C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR9C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR9C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR9C3" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR9C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR9C4" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR9C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR9C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR9C5" Text="Info7"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR9C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR9C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR9C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR9C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row10" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR10C1" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR10C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR10C2" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR10C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR10C3" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR10C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR10C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR10C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR10C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR10C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR10C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR10C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR10C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR10C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row11" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR11C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR11C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR11C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR11C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR11C3" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR11C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR11C4" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR11C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR11C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR11C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR11C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR11C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR11C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR11C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row12" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR12C1" Font-Bold="true" HorizontalAlign="center" BackColor="LightBlue" ForeColor="Black"><asp:HyperLink runat="server" ID="hlR12C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR12C2" Font-Bold="true" HorizontalAlign="center" ForeColor="Red"><asp:HyperLink runat="server" ID="hlR12C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR12C3" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR12C3" Text="Info6"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR12C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR12C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR12C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR12C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR12C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR12C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR12C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR12C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="row13" BackColor="DarkGray" ForeColor="White">
                                            <asp:TableCell ID="cellR13C1" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR13C1" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR13C2" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR13C2" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR13C3" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR13C3" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR13C4" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR13C4" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR13C5" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR13C5" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR13C6" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR13C6" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                            <asp:TableCell ID="cellR13C7" Font-Bold="true" HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlR13C7" Text="&nbsp;"></asp:HyperLink></asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                    </asp:TableCell>
                </asp:TableRow>
    </asp:Table>
    <asp:Table runat="server" ID="tblBKPlayoffMatchup" Width="980px" HorizontalAlign="Center">  
    
       <asp:TableRow>
                <asp:TableCell BackColor="LightGray" ColumnSpan="2"><h3><asp:Label runat="server" ID="lblTeam2SeasonInfo"></asp:Label></h3></asp:TableCell>
      </asp:TableRow>

      <asp:TableRow>
                <asp:TableCell VerticalAlign="Top" ColumnSpan="2">
                    <telerik:RadGrid ID="RadGridTeamHistory" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"
                         AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSource2" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                            <Columns>
                                <telerik:GridBoundColumn DataField="strDisplayFinal" HeaderAbbr="Playoff History" UniqueName="strDisplayFinal" HeaderText="PLAYOFF HISTORY" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true"  />
                                </telerik:GridBoundColumn>
                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow Visible="false">
                <asp:TableCell ColumnSpan="2"><asp:HyperLink ID="hlBottom" runat="server" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4XH5CLU3AKTVW" ImageUrl="~/images/OK/ORDER100YearSpecial.png" Target="_blank" Visible="false"></asp:HyperLink></asp:TableCell>
            </asp:TableRow>
        </asp:Table>        

    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OSSAARankingsConnectionString %>" 
        SelectCommand="SELECT * FROM __IWATGBasketballScores WHERE SchoolName = @team AND strSportGenderKey = @selectedSport ORDER BY gameDate">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="team" SessionField="globalTeam" DefaultValue="Dodgers" Type="String" />
            <asp:ControlParameter Name="selectedSport" ControlID="cboClass" DefaultValue="DODGERS" />
        </SelectParameters>
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM __viewBasketballStateTournamentGamesSort WHERE strState = @state AND (strWinnerKey = @team OR strLoserKey = @team OR strWinner = @team OR strLoser = @team) AND strSportGenderKey = @sportGenderKey ORDER BY intYear DESC, intSortRound">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="team" SessionField="globalTeamTourney" DefaultValue="Dodgers" Type="String" />
            <asp:SessionParameter Name="sportGenderKey" SessionField="globalSportGenderKey" DefaultValue="Dodgers" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>  
</asp:Content>
