<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ucSportsPageC.ascx.vb" Inherits="TheSportsEngine2017.ucSportsPageC" %>
    
    <link href='http://fonts.googleapis.com/css?family=Ewart' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Anto' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Holtwood+One+SC' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=IM+Fell+Double+Pica+SC' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Bowlby+One' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Changa+One' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Saira+Extra+Condensed' rel='stylesheet' type='text/css' />
    <link href="styles/SportsPage.css" rel="stylesheet" />
    <link href="titleTalk/styles/editor.css" rel="stylesheet" />
    <link href="styles/imageR.css" rel="stylesheet" />
    <link href="styles/photoGallery.css" rel="stylesheet" />
    <link href="titleTalk/styles/aspnetforum.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript" src="scripts/imageR.js"></script>

    <script type="text/javascript">
        (function (global, undefined) {

            function openRadWinTrophyCase(sender) {
                var id;
                // Send the client ID also...
                id = sender._clientStateFieldID;
                id = id.replace("_ClientState", "");
                radopen("TrophyCase.aspx?id=" + sender._commandArgument, "RadWindow5", 960, 760, 10, 10);
            }
            global.openRadWinTrophyCase = openRadWinTrophyCase;
        })(window);

        function OnClientClose(oWnd, args) {
            var arg = args.get_argument();
        }
    </script>
    <telerik:RadWindowManager ID="RadWindowManager1" runat="server" EnableShadow="true" Style="z-index: 7025;">
        <Windows>
            <telerik:RadWindow ID="RadWindow5" runat="server" ShowContentDuringLoad="false" Width="400px"
                Height="400px" Title="PHOTO GALLERY" Behaviors="Close" Modal="true" OnClientClose="OnClientClose">
            </telerik:RadWindow>
        </Windows>
    </telerik:RadWindowManager>
    <div class="divClass">
        <asp:Table runat="server" CssClass="tableStyle">
            <asp:TableRow ID="rowHeader" HorizontalAlign="Center">
                <asp:TableCell Height="20px" ColumnSpan="2">
                    <asp:Label runat="server" ID="lblHeader" Text="SPORTS PAGE" CssClass="SPHeader"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowHeaderDate" HorizontalAlign="Center">
                <asp:TableCell ColumnSpan="2">
                    <asp:Label runat="server" ID="lblHeaderDate" Text="March 2017" CssClass="SPHeaderDate" Style="line-height:24px;"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowGameTitle" HorizontalAlign="center">
                <asp:TableCell ColumnSpan="2">
                    <asp:Label runat="server" ID="lblResults" Text="" CssClass="SPGameTitle"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowGameTitleSub" HorizontalAlign="Center" Visible="false">
                <asp:TableCell ColumnSpan="2">
                    <asp:Label runat="server" ID="lblResultsCount" Text="" CssClass="SPGameTitleSub"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow ID="rowArticles" HorizontalAlign="Center">
                <asp:TableCell VerticalAlign="top" HorizontalAlign="right" Width="50%" Style="padding-right:30px;">
                    <asp:Label runat="server" ID="lblArticles" Text="ARTICLES" CssClass="SPGameTitleSub" ForeColor="Black" Style="text-align:center;"></asp:Label><br />
                    <telerik:RadGrid ID="RadGrid1" runat="server" SkinID="Metro" DataSourceID="SqlDataSourceArticles" AutoGenerateColumns="False" Width="450px">
                        <MasterTableView DataSourceID="SqlDataSourceArticles" UseAllDataFields="False">
                            <Columns>
                                <telerik:GridHyperLinkColumn DataNavigateUrlFields="strURL" DataTextField="strTitleDisplay" Target="_blank" HeaderText="Click Link Below for Article">
                                    <HeaderStyle Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Bold="true" Font-Italic="true" />
                                    <ItemStyle Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Bold="true"  />
                                </telerik:GridHyperLinkColumn>
                            </Columns>                        
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
                <asp:TableCell VerticalAlign="top" HorizontalAlign="left" ID="columnRoadToTheTitle" Width="50%">
                    <asp:Label runat="server" ID="lblR2THeader" Text="ROAD TO THE TITLE" CssClass="SPGameTitleSub" ForeColor="Black"></asp:Label><br />
                    <asp:Label runat="server" ID="lblR2TDetail" Text="" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="1.5em" Font-Bold="true" ForeColor="Black"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowPhotos" HorizontalAlign="Center">
                <asp:TableCell ColumnSpan="2">
                    <asp:Label runat="server" ID="lblImages" Text="PHOTO GALLERY" CssClass="SPGameTitleSub" ForeColor="black"></asp:Label><br />
                    <telerik:RadButton runat="server" AutoPostBack="false" OnClientClicked="openRadWinTrophyCase" CommandArgument='<%# Session("globalKey") %>' Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="1.45em" Font-Bold="true" Text="OPEN PHOTO GALLERY" ForeColor="Red" >
                    </telerik:RadButton>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowPhotos1" HorizontalAlign="Center">
                <asp:TableCell ColumnSpan="2">
                    <telerik:RadImageGallery BorderStyle="Solid" BorderWidth="5px" BorderColor="Black" RenderMode="Lightweight" ID="RadImageGallery2" runat="server" OnNeedDataSource="RadImageGallery2_NeedDataSource1"
                        DataImageField="strImageURL" Width="900px" Height="200px" LoopItems="false" AllowPaging="false" ShowLoadingPanel="true" >
                        <ToolbarSettings ShowItemsCounter="false" Position="None" ShowThumbnailsToggleButton="false" ShowSlideshowButton="false" ShowFullScreenButton="false" ShowThumbnailsButtonText="false" />
                        <ThumbnailsAreaSettings ThumbnailWidth="225px" ThumbnailHeight="200px" Height="200px" />
                    </telerik:RadImageGallery>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowTitleTalk" HorizontalAlign="Center" Visible="false">
                <asp:TableCell ColumnSpan="2">
                    <asp:Label runat="server" ID="Label1" Text="STATE TITLE TALK" CssClass="SPGameTitleSub" ForeColor="black"></asp:Label>
                        <asp:Table runat="server" CssClass="forumcontent roundedborder" Width="85%" BorderWidth="2px">
                            <asp:TableRow ID="rowLogin">
                                <asp:TableCell>
		                            <div class="header">
			                            <div class="innercontainer">
			                                <div id="curuserTable" runat="server" class="logininfo" enableviewstate="false">
					                            <div class="curUserInfo">
						                            <span style="text-align:left">
						                            <img runat="server" id="imgAvatar" class="avatar" enableviewstate="false" src="titletalk/images/guestavatar.gif" onerror="this.src='images/guestavatar.gif'" alt="guest avatar" style="float: left; margin-right: 5px;width:32px;height:32px;border-radius:32px" />
						                            <a href="" id="viewProfileLink" class="curUsername" runat="server" title="edit my profile" enableviewstate="false"></a>
						                            <br />
							                            <span class="mobilehidden"><a href="editprofile.aspx"><%= aspnetforum.Resources.various.MyProfile %></a> |</span>
						                            <a href="logout.aspx" id="logoutLink" runat="server" enableviewstate="false"><%= aspnetforum.Resources.various.SignOut %></a>
						                            </span>
					                            </div>

					                         </div>
			                            <!-- ############## -->
			                            <!-- comment (or remove) the following section if you use single sign-on programmatically (and you don't need login-password inputs etc)-->
			                            <div id="loginTable" runat="server" class="logininfo" enableviewstate="false">
				                            <div style="margin-top: 20px;" class="mobilehidden">
				                            <a href="http://www.statetitletalk.com/register.aspx" class="registerLink"><%= aspnetforum.Resources.various.Register %></a><br/>
				                            <a href="http://www.statetitletalk.com/lostpassword.aspx" class="lostpswLink"><%= aspnetforum.Resources.various.LostPassword %></a>
				                            </div>
				                            <div>
				                            <input type="text" id="LoginName" name="LoginName" class="headerinput" placeholder="username" onkeypress="return EnterKeyToButton('loginbutton');" />
				                            <input type="password" id="Password" class="headerinput" placeholder="password" name="Password" onkeypress="return EnterKeyToButton('loginbutton');" />
				                            <asp:Label ID="lblLoginErr" runat="server" Visible="false" EnableViewState="false" ForeColor="#ffa2a2"><%= aspnetforum.Resources.various.LoginError %></asp:Label>
				                            <input name="rememberme" style="display: none" onkeypress="return EnterKeyToButton('loginbutton');" id="rememberme" type="checkbox" value="1" checked="checked" style="padding-left: 0px; margin-left: 0px" /><label style="display: none" for="rememberme"><%= aspnetforum.Resources.various.RememberMe %></label>
				                            <input name="loginbutton" id="loginbutton" type="submit" class="headerinput" value="login" />

				                            <span class="sociallogin">
					                            <a href="OpenIdLogin.aspx" id="aOpenId" runat="server" enableviewstate="false" title="Login with OpenID">
					                            <img src="titleTalk/images/openid/openid-icon.png" alt="open id" /></a><a href="titletalk/twitterlogin.aspx" id="aTwitter" runat="server" enableviewstate="false" title="Sign in with twitter" rel="nofollow">
					                            <img src="titleTalk/images/twitter.png" alt="sign in with Twitter" /></a><a href="javascript:void(0)" id="aFacebook" runat="server" enableviewstate="false" title="Login with Facebook" onclick="FbLogin()">
					                            <img src="titleTalk/images/facebook.png" alt="sign in with facebook" /></a>&nbsp;</span>
					                            </div>
			                            </div>
			                            <!-- ################## -->
		                            </div></div>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow ID="rowQuickReply">
                                <asp:TableCell>
                                    <div id="divQuickReply" runat="server" enableviewstate="false" visible="true">
                                    <div class="richeditor">
                                        <asp:DropDownList ID="cboWhoAmI" runat="server" BackColor="Yellow">
                                            <asp:ListItem Value="" Text="Select Who You Are..."></asp:ListItem>
                                            <asp:ListItem Value="Champion Player" Text="Champion PLAYER"></asp:ListItem>
                                            <asp:ListItem Value="Champion Coach" Text="Champion COACH"></asp:ListItem>
                                            <asp:ListItem Value="Champion Parent" Text="Champion PARENT"></asp:ListItem>
                                            <asp:ListItem Value="Champion Relative" Text="Champion RELATIVE"></asp:ListItem>
                                            <asp:ListItem Value="Champion Administrator" Text="Champion ADMINISTRATOR"></asp:ListItem>
                                            <asp:ListItem Value="Champion Fan" Text="Champion FAN"></asp:ListItem>
                                            <asp:ListItem Value="Runner-Up Player" Text="Runner-Up PLAYER"></asp:ListItem>
                                            <asp:ListItem Value="Runner-Up Coach" Text="Runner-Up COACH"></asp:ListItem>
                                            <asp:ListItem Value="Runner-Up Parent" Text="Runner-Up PARENT"></asp:ListItem>
                                            <asp:ListItem Value="Runner-Up Relative" Text="Runner-Up RELATIVE"></asp:ListItem>
                                            <asp:ListItem Value="Runner-Up Administrator" Text="Runner-Up ADMINISTRATOR"></asp:ListItem>
                                            <asp:ListItem Value="Runner-Up Fan" Text="Runner-Up FAN"></asp:ListItem>
                                            <asp:ListItem Value="Qualifier Player" Text="Qualifier PLAYER"></asp:ListItem>
                                            <asp:ListItem Value="Qualifier Coach" Text="Qualifier COACH"></asp:ListItem>
                                            <asp:ListItem Value="Qualifier Parent" Text="Qualifier PARENT"></asp:ListItem>
                                            <asp:ListItem Value="Qualifier Relative" Text="Qualifier RELATIVE"></asp:ListItem>
                                            <asp:ListItem Value="Qualifier Administrator" Text="Qualifier ADMINISTRATOR"></asp:ListItem>
                                            <asp:ListItem Value="Qualifier Fan" Text="Qualifier FAN"></asp:ListItem>
                                            <asp:ListItem Value="Player" Text="PLAYER"></asp:ListItem>
                                            <asp:ListItem Value="Coach" Text="COACH"></asp:ListItem>
                                            <asp:ListItem Value="Parent" Text="PARENT"></asp:ListItem>
                                            <asp:ListItem Value="Relative" Text="RELATIVE"></asp:ListItem>
                                            <asp:ListItem Value="Administrator" Text="ADMINISTRATOR"></asp:ListItem>
                                            <asp:ListItem Value="Fan" Text="FAN"></asp:ListItem>
                                            <asp:ListItem Value="Media" Text="MEDIA"></asp:ListItem>
                                            <asp:ListItem Value="Historian" Text="HISTORIAN"></asp:ListItem>
                                        </asp:DropDownList>
	                                    <div class="editbar" id="divEditbar" runat="server" enableviewstate="false" style="background-color:lightyellow;">
		                                </div>
	                                    <div class="container iphone-textbox">
		                                    <asp:TextBox Rows="2" TextMode="MultiLine" Height="50" Width="100%" ID="tbQuickReply" runat="server" EnableViewState="false" onkeydown="return ProcessCtrlEnter(event);" BackColor="LightYellow"></asp:TextBox>
	                                    </div>
                                    </div>
                                    <asp:Button runat="server" ID="btnQuickReply" Text="quick reply" />
                                    </div>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Repeater ID="rptMessages" runat="server">
	                                    <HeaderTemplate>
		                                    <%= aspnetforum.Resources.various.PreviousMessagesInTopic %>
		                                    <table style="width:100%; border-color:gray;" cellpadding="4">
	                                    </HeaderTemplate>
	                                    <ItemTemplate>
		                                    <tr><td valign="top" style="width:130px;border-width:1px;border-color:black;background-color:aliceblue;padding:10px;line-height:100%;"><b><%# Eval("UserName") %></b><br /><%# DirectCast(Eval("CreationDate"), Date)%></td>
		                                    <td valign="top" style="border-width:1px;border-color:black;background-color:aliceblue;padding:10px;line-height:100%;"><%# aspnetforum.Utils.Formatting.FormatMessageHTML(Eval("Body").ToString())%></td></tr>
	                                    </ItemTemplate>
	                                    <FooterTemplate></table></FooterTemplate>
                                    </asp:Repeater>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceArticles" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT *, strTitle + ' - ' + strSource  AS strTitleDisplay  FROM viewStateChampionshipArticles WHERE strSportGenderKey = @sportGenderKey AND intYear = @year AND strClass = @class AND strState = @state ORDER BY intYear DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="sportGenderKey" SessionField="globalSportGenderKey" DefaultValue="Dodger" Type="String" />
            <asp:SessionParameter Name="year" SessionField="globalYear" DefaultValue="0" />
            <asp:SessionParameter Name="class" SessionField="globalClass" DefaultValue="DODGERS" Type="string" />
        </SelectParameters>    
    </asp:SqlDataSource>   



