<%@ Page language="c#" Codebehind="default.aspx.cs" AutoEventWireup="True" EnableViewState="false" Inherits="aspnetforum.forums" MasterPageFile="AspNetForumMaster.Master" %>
<%@ Register TagPrefix="cc" TagName="RecentPosts" Src="recentposts.ascx" %>

<asp:Content ContentPlaceHolderID="AspNetForumContentPlaceHolder" ID="AspNetForumContent" runat="server">
    <h3>Talk about how 'I Was At The Game'<br />Select a State Tournament below for STATE TITLE TALK...</h3>
	<asp:Repeater ID="rptGroupsList" Runat="server" EnableViewState="False" OnItemDataBound="rptGroupsList_ItemDataBound">
		<ItemTemplate>
			<table style="width:100%;" class="roundedborder biglist">
				<tr><th colspan="2"><h2><%# Eval("GroupName") %></h2></th></tr>
				<tbody>
                <tr>
                    <td>
                    <select id="cboForum" style="width:400px; background-color:springgreen; font-size:16px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;" onchange="GotoForum(this)">
                        <option value="0">Select Championship...</option>
			            <asp:repeater id="rptForumsList" runat="server" EnableViewState="False">
				            <ItemTemplate>
                                <option value='<%# aspnetforum.Utils.Various.GetForumURL(Eval("ForumID"), Eval("Title")) %>'><%# Eval("Description") %></option>
				            </ItemTemplate>
			            </asp:repeater>
                    </select>
                    </td>
                </tr>
			</table>
		</ItemTemplate>
		<FooterTemplate></tbody></FooterTemplate>
	</asp:Repeater>
	<div ID="lblNoForums" style="margin-top:20px;" runat="server" visible="false" enableviewstate="false"><%= aspnetforum.Resources.various.NoForums %></div>
	<div id="divNoForumsAdmin" style="margin-top:20px;" runat="server" visible="false">No forums have been created yet. Please go to the <a href="admin.aspx">administrator panel</a>.</div>

	<table style="width:100%;" cellpadding="11" cellspacing="0" class="roundedborder">
		<tr><th><h2><%= aspnetforum.Resources.various.WhatsGoingOn %></h2></th></tr>
		<tbody>
	<tr>
		<td>
			<span class="gray"><%= aspnetforum.Resources.various.UsersOnline %></span>
			<%= aspnetforum.Utils.User.OnlineUsersCount %>&nbsp;&nbsp;
			<span class="gray"><%= aspnetforum.Resources.various.Members %></span>
			<%= aspnetforum.Utils.User.OnlineRegisteredUsersCount %>&nbsp;&nbsp;
			<span class="gray"><%= aspnetforum.Resources.various.Guests %></span>
			<%= aspnetforum.Utils.User.OnlineUsersCount-aspnetforum.Utils.User.OnlineRegisteredUsersCount%>
			<br /><br />
			<span class="gray"><%= aspnetforum.Resources.various.Threads %></span>
			<%= aspnetforum.Utils.Various.GetStats().ThreadCount %>&nbsp;&nbsp;
			<span class="gray"><%= aspnetforum.Resources.various.Posts %></span>
			<%= aspnetforum.Utils.Various.GetStats().PostCount %>&nbsp;&nbsp;
			<span class="gray"><%= aspnetforum.Resources.various.Members %></span>
			<%= aspnetforum.Utils.Various.GetStats().MemberCount %>
		</td>
	</tr>
			</tbody>
	</table>

	<div id="divRecent" runat="server" enableviewstate="false" visible="false">
	<br />
	<cc:RecentPosts id="recentPosts" runat="server"></cc:RecentPosts>
	</div>
</asp:Content>