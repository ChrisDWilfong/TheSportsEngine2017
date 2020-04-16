<%@ Page Title="IWasAtTheGame.com PHOTO GALLERY" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPagePhotoGallery.Master" CodeBehind="PhotoGallery.aspx.vb" Inherits="TheSportsEngine2017.PhotoGallery" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/photoGallery.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server">
        <telerik:RadImageGallery RenderMode="Classic" ID="RadImageGallery2" runat="server" OnNeedDataSource="RadImageGallery2_NeedDataSource"
            DataImageField="strImageURL" Width="900px" Height="525px" LoopItems="false" AllowPaging="false" >
            <ToolbarSettings ShowItemsCounter="false" Position="None" />
            <ThumbnailsAreaSettings ThumbnailWidth="150px" ThumbnailHeight="100px" Height="110px" />
            <ImageAreaSettings Height="500px" />
        </telerik:RadImageGallery>
    </telerik:RadAjaxPanel>
</asp:Content>



