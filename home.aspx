<%@ Page Title="" Language="C#" MasterPageFile="~/webMasterpage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="GardenFunfair.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListBox ID="lbRide" runat="server" AutoPostBack="True" Height="175px" Width="200px" BackColor="#CC9900"></asp:ListBox>
    <asp:Button ID="Btnnext" runat="server" OnClick="Btnnext_Click" Text="NEXT" />
    <br />
    <br />
    <asp:Label ID="lblselected" runat="server"></asp:Label>
    
</asp:Content>
