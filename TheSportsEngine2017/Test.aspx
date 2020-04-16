<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Test.aspx.vb" Inherits="TheSportsEngine2017.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>
<head runat="server">
    <title></title>
    <link href="test.css" rel="stylesheet" />
    <script type="text/javascript">
        (function (global, undefined) {

            function openRadWinEditNote(sender) {
                var id;
                // Send the client ID also...
                id = sender._clientStateFieldID;
                id = id.replace("_ClientState", "");
                radopen("PhotoGallery.aspx?id=" + sender._commandArgument + "&cid=" + id, "RadWindow5", 960, 725, 10, 10);
            }
            global.openRadWinEditNote = openRadWinEditNote;

        })(window);
        function OnClientClose(oWnd, args) {
            //get the transferred arguments
            var arg = args.get_argument();

            if (arg) {
                var note = arg.note;        // PASSED BACK FROM THE POPUP...
                var cid = arg.cid;          // PASSED BACK FROM THE POPUP...
                cid = cid.replace("RadButton5", "lblDetailNotes")
                $get(cid).innerText = note;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadAjaxManager ID="RadAjaxManagerTest" runat="server">
    </telerik:RadAjaxManager>
    <telerik:RadWindowManager ID="RadWindowManager1" runat="server" EnableShadow="true" Style="z-index: 7025;">
        <Windows>
            <telerik:RadWindow ID="RadWindow5" runat="server" ShowContentDuringLoad="false" Width="400px"
                Height="400px" Title="Contact" Behaviors="Close" Modal="true" OnClientClose="OnClientClose">
            </telerik:RadWindow>
        </Windows>
    </telerik:RadWindowManager>

        <asp:ScriptManager runat="server" ID="ScriptManager1"></asp:ScriptManager>
        <asp:Button ID="Button1" runat="server" Text="Get City" />
    <div>
        <telerik:RadButton ID="RadButton5" runat="server" AutoPostBack="false" 
            OnClientClicked="openRadWinEditNote" Text="Click Me" CommandArgument="5" >
        </telerik:RadButton>
A - Muskogee over Capitol Hill (19-14) (Paul Young - John Miskovsky)<telerik:RadButton runat="server" AutoPostBack="false" OnClientClicked="openRadWinEditNote" CommandArgument="7" Text="Photos" >
        </telerik:RadButton>

        <asp:Label ID="lblDetailNotes" runat="server" Text="" Width="415px" Font-Size="X-Small" ForeColor="#666666"  />
    </div>
    </form>
</body>
</html>
