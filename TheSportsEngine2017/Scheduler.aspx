<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Scheduler.aspx.vb" Inherits="TheSportsEngine2017.Scheduler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager runat="server"></telerik:RadScriptManager>
        <div>
            <telerik:RadScheduler ID="RadScheduler1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="Id"
               DataSubjectField="strSubject" DataStartField="dtmStart" DataEndField="dtmEnd" ></telerik:RadScheduler>
        </div>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblSchedule">
    </asp:SqlDataSource>    
</body>
</html>
