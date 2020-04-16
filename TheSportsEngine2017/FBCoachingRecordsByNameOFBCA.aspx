<%@ Page Title="Oklahoma High School Football Coaching Records" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBCoachingRecordsByNameOFBCA.aspx.vb" Inherits="TheSportsEngine2017.FBCoachingRecordsByNameOFBCA" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football Coaching W-L Records" />
    <meta name="twitter:description" content="List of High School coaching wins in the state of Oklahoma." />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Logo_Football.png" />       
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text=""></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text=""></asp:Label></h3>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="3" HiddenSm="true" HiddenXs="true">
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="7" SpanXl="7" SpanLg="7" SpanMd="7" HiddenSm="true" HiddenXs="true">
                        <asp:Panel ID="RadAjaxPanel100" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="tblFBOD">
								<asp:TableRow>
									<asp:TableCell>
										<telerik:RadAutoCompleteBox ID="RadAutoCompleteBox1" runat="server" RenderMode="Lightweight" 
											DataSourceID="SqlDataSourceCoachesList" DataTextField="strCoachName" DataValueField="strCoachName" 
											AutoPostBack="true" DropDownWidth="300px" Width="300px" InputType="Text" EmptyMessage="Enter Coaches Name..." >
											<TextSettings SelectionMode="Single" />
										</telerik:RadAutoCompleteBox>
										<asp:Button runat="server" ID="cmdSumbit1" Width="50px" Text="Go" />
									</asp:TableCell>	
								</asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                                            <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="Coaching Records" PageSize="100">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="Id" UniqueName="Id" Visible="false" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="strYears" HeaderAbbr="Years" UniqueName="strYears" HeaderText="FIRST-LAST" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Font-Bold="true" />
                                                    </telerik:GridBoundColumn>     
                                                    <telerik:GridBoundColumn DataField="strSchoolName" HeaderAbbr="School" UniqueName="strSchoolName" HeaderText="SCHOOL" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Font-Bold="true" />
														<ItemStyle Width="20%" HorizontalAlign="Left"/>
                                                    </telerik:GridBoundColumn>  													
                                                    <telerik:GridBoundColumn DataField="intYears" HeaderAbbr="Yrs" UniqueName="intYears" HeaderText="Years" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Center" />
                                                        <ItemStyle Width="10%" HorizontalAlign="Center"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intW" HeaderAbbr="W" UniqueName="intW" HeaderText="W" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="13%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="13%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intL" HeaderAbbr="L" UniqueName="intL" HeaderText="L" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intT" HeaderAbbr="T" UniqueName="intT" HeaderText="T" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                        </asp:Panel>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn HiddenLg="true" HiddenXl="true" HiddenMd="true" SpanSm="12" SpanXs="12">
                        <asp:Panel ID="Panel1" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="Table1">
								<asp:TableRow>
									<asp:TableCell>
										<telerik:RadAutoCompleteBox ID="RadAutoCompleteBox2" runat="server" RenderMode="Lightweight" 
											DataSourceID="SqlDataSourceCoachesList" DataTextField="strCoachName" DataValueField="strCoachName" 
											AutoPostBack="true" DropDownWidth="200px" Width="300px" InputType="Text" EmptyMessage="Enter Coaches Name..." >
											<TextSettings SelectionMode="Single" />
										</telerik:RadAutoCompleteBox>
										<asp:Button runat="server" ID="cmdSearch2" Width="50px" Text="GO" />
									</asp:TableCell>	
								</asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <telerik:RadGrid ID="RadGrid2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                                            <MasterTableView DataSourceID="SqlDataSource2" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="Coaching Records" PageSize="100">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="Id" UniqueName="Id" Visible="false" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="strYears" HeaderAbbr="Years" UniqueName="strYears" HeaderText="FIRST-LAST" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Font-Bold="true" Font-Size="X-Small" HorizontalAlign="Left" />
														<ItemStyle Width="20%" HorizontalAlign="Left" Font-Size="X-Small"/>
                                                    </telerik:GridBoundColumn> 
                                                    <telerik:GridBoundColumn DataField="strSchoolName" HeaderAbbr="School" UniqueName="strSchoolName" HeaderText="SCHOOL" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Font-Bold="true" Font-Size="X-Small" HorizontalAlign="Left" />
														<ItemStyle Width="20%" HorizontalAlign="Left" Font-Size="X-Small"/>
                                                    </telerik:GridBoundColumn>  													
                                                    <telerik:GridBoundColumn DataField="intYears" HeaderAbbr="Yrs" UniqueName="intYears" HeaderText="Years" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Left" Font-Size="X-Small" />
                                                        <ItemStyle Width="10%" HorizontalAlign="Left" Font-Size="X-Small"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intW" HeaderAbbr="W" UniqueName="intW" HeaderText="W" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="13%" HorizontalAlign="Right" Font-Size="X-Small" />
                                                        <ItemStyle Width="13%" HorizontalAlign="Right" Font-Size="X-Small"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intL" HeaderAbbr="L" UniqueName="intL" HeaderText="L" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" Font-Size="X-Small" />
                                                        <ItemStyle Width="10%" HorizontalAlign="Right" Font-Size="X-Small"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intT" HeaderAbbr="T" UniqueName="intT" HeaderText="T" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" Font-Size="X-Small" />
                                                        <ItemStyle Width="10%" HorizontalAlign="Right" Font-Size="X-Small"/>
                                                    </telerik:GridBoundColumn>
                                                </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                        </asp:Panel>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="2" SpanSm="12" SpanXs="12">
						<div style="text-align:center;">
                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                        <!-- Wide Skyscraper 1 -->
                        <ins class="adsbygoogle"
                             style="display:inline-block;width:160px;height:600px"
                             data-ad-client="ca-pub-6403098483302166"
                             data-ad-slot="4934314751"></ins>
                        <script>
                        (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                        <br />
                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                        <!-- 300x600 Ad -->
                        <ins class="adsbygoogle"
                             style="display:inline-block;width:300px;height:600px"
                             data-ad-client="ca-pub-6403098483302166"
                             data-ad-slot="6996083575"></ins>
                        <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
						</div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strSchoolName, strCoach, intYears, intYearEnd, intW, intL, intT, CAST(intYearStart AS varchar(5)) + '-' + CAST(intYearEnd AS varchar(5)) AS strYears,
		(CAST(CAST(CAST(intW AS FLOAT) / CAST((intW + intL) AS Float) AS decimal(18, 4)) * 100 AS decimal(18, 2))) AS WinPerc, strSchoolName + ' (' + CAST(intYears AS varchar(5)) + '-' + CAST(intYearEnd AS varchar(10)) + ')' AS strSchoolYears, CAST(intW AS varchar(10)) + '-' + CAST(intL AS varchar(10)) AS strWL	
		FROM tblCoaches WHERE strCoach = @selectedCoach ORDER BY intYearEnd DESC">
		<SelectParameters>
            <asp:ControlParameter Name="selectedCoach" ControlID="RadAutoCompleteBox1" PropertyName="Text" DefaultValue="DODGERS" />
		</SelectParameters>
	</asp:SqlDataSource> 

	    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strSchoolName, strCoach, intYears, intYearEnd, intW, intL, intT, CAST(intYearStart AS varchar(5)) + '-' + CAST(intYearEnd AS varchar(5)) AS strYears,
		(CAST(CAST(CAST(intW AS FLOAT) / CAST((intW + intL) AS Float) AS decimal(18, 4)) * 100 AS decimal(18, 2))) AS WinPerc, strSchoolName + ' (' + CAST(intYears AS varchar(5)) + '-' + CAST(intYearEnd AS varchar(10)) + ')' AS strSchoolYears, CAST(intW AS varchar(10)) + '-' + CAST(intL AS varchar(10)) AS strWL	
		FROM tblCoaches WHERE strCoach = @selectedCoach ORDER BY intYearEnd DESC">
		<SelectParameters>
            <asp:ControlParameter Name="selectedCoach" ControlID="RadAutoCompleteBox2" PropertyName="Text" DefaultValue="DODGERS" />
		</SelectParameters>
	</asp:SqlDataSource> 
	
	<asp:SqlDataSource ID="SqlDataSourceCoachesList" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strCoach AS strCoachName FROM tblCoaches WHERE (NOT (strCoach IS NULL)) AND (NOT (strCoach = '')) ORDER BY strCoach">
    </asp:SqlDataSource>   

</asp:Content>


