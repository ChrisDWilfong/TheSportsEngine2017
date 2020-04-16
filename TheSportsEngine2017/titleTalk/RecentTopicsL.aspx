<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecentTopicsL.aspx.cs" Inherits="aspnetforum.RecentTopicsL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link href="aspnetforum.css" rel="Stylesheet" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js" type="text/javascript"></script>
	<script src="jquery.jgrowl_minimized.js" type="text/javascript"></script>
	<link href="jquery.jgrowl.css" rel="stylesheet" type="text/css" />
	<link rel="alternate" type="application/rss+xml" title="recent posts" href="recent.aspx?rss=1" />
	<meta name="viewport" content="width=device-width">
</head>
<body>
    <form id="form1" runat="server">
    <div class="forumcontent innercontainer800">
	    <asp:repeater id="rptTopicsList" runat="server" EnableViewState="False">
		    <HeaderTemplate>
			    <table width="100%" class="roundedborder biglist">
			    <tr>
				    <th><h2>STATE TITLE TALK Recent Topics </h2></th>
				    <th nowrap="nowrap"><%= aspnetforum.Resources.various.LatestPost %></th>
			    </tr>
			    <tbody>
		    </HeaderTemplate>
		    <ItemTemplate>
			    <tr <%# Container.ItemType == ListItemType.AlternatingItem ? " class='altItem'" : "" %>>
				    <td width="75%"><h2><a href='<%# aspnetforum.Utils.Various.GetTopicURL(Eval("TopicID"), Eval("Subject")) %>' target="_blank">
							    <%# Eval("Subject") %>
						    </a>
					    </h2>
                         <%# Eval("Description") %>
				    </td>
				    <td width="25%" style="white-space:nowrap" class="gray2">
					    <%# aspnetforum.Utils.Message.FormatMessageInfo(Eval("LastMessageID"), Eval("TopicID"), Eval("LastUserID"), Eval("LastUserName"), Eval("LastFirstName"), Eval("LastLastName"), Eval("Subject"), Eval("CreationDate"), null, Eval("Body"))%></td>
				    </td>
			    </tr>
		    </ItemTemplate>
		    <FooterTemplate>
			    </tbody></table>
		    </FooterTemplate>
	    </asp:repeater>
    </div>
    </form>
</body>
</html>
