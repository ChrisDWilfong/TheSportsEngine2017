<%@ Page Title="IWasAtTheGame.com Podcast : Clay Martin" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootballNOAJAX.Master" CodeBehind="PODClayMartin.aspx.vb" Inherits="TheSportsEngine2017.PODClayMartin" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <script type="text/javascript">
        (function (global, undefined) {

            function openRadWinEditNote(sender) {
                var id;
                // Send the client ID also...
                id = sender._clientStateFieldID;
                id = id.replace("_ClientState", "");
                radopen("PhotoGallery.aspx?id=" + sender._commandArgument, "RadWindow5", 960, 760, 10, 10);
            }
            global.openRadWinEditNote = openRadWinEditNote;

            function openRadWinTopic(sender) {
                var id;
                // Send the client ID also...
                id = sender._clientStateFieldID;
                id = id.replace("_ClientState", "");
                radopen("http://www.statetitletalk.com/topics.aspx?ForumID=" + sender._commandArgument, "RadWindowBK", 1100, 760, 10, 10);
            }
            global.openRadWinTopic = openRadWinTopic;

        })(window);
        function OnClientClose(oWnd, args) {
            //get the transferred arguments
            var arg = args.get_argument();
        }
    </script>
        <script>
            fbq('track', 'ViewContent', {
            value: 1001,
            });
        </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="RadAjaxPanel12" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h1><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text=""></asp:Label></h1>
                        <h5>Sat down with Clay Martin over Spring Break and asked him a ton of questions.  Talked about his high school playing days at Nathan Hale.  His paths in college football and basketball at the University of Tulsa and then on to Oklahoma Baptist University to play basketball.  Why did he get started in coaching?  Why did he star officiating?  What was his motivation?  Who were his mentors?  What was his path to being only one of 17 NFL referees?  What is it like coaching AND being an NFL referee?  What is his week like leading up to and then Sunday game day? What are the keys to his success?  Incredible insight in this 50 minute interview.  Sit back and enjoy.</h5>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h1><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text=""></asp:Label></h1>
                        <h5>Sat down with Clay Martin over Spring Break and asked him a ton of questions.  Talked about his high school playing days at Nathan Hale.  His paths in college football and basketball at the University of Tulsa and then on to Oklahoma Baptist University to play basketball.  Why did he get started in coaching?  Why did he star officiating?  What was his motivation?  Who were his mentors?  What was his path to being only one of 17 NFL referees?  What is it like coaching AND being an NFL referee?  What is his week like leading up to and then Sunday game day? What are the keys to his success?  Incredible insight in this 50 minute interview.  Sit back and enjoy.</h5>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="12" SpanSm="12" SpanXs="12">
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="8" SpanXl="8" SpanLg="8" SpanMd="12" SpanSm="12" SpanXs="12">
                            <asp:Table runat="server" ID="tblPod" HorizontalAlign="center">
                                <asp:TableRow HorizontalAlign="Center">
                                    <asp:TableCell HorizontalAlign="Center">
                                        <iframe width="700px" height="500px" src="https://www.youtube.com/embed/k2kCVEh6Esc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br /><br />
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="12" SpanSm="12" SpanXs="12">
                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                    <!-- 300x600 Ad -->
                    <ins class="adsbygoogle"
                         style="display:inline-block;width:300px;height:600px"
                         data-ad-client="ca-pub-6403098483302166"
                         data-ad-slot="6996083575"></ins>
                    <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>

 
</asp:Content>



