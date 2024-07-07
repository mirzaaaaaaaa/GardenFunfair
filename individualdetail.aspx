<%@ Page Title="" Language="C#" MasterPageFile="~/webMasterpage.Master" AutoEventWireup="true" CodeBehind="individualdetail.aspx.cs" Inherits="GardenFunfair.individualdetail" UnobtrusiveValidationMode ="none" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 260px;
    }
        .auto-style3 {
            width: 260px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 260px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        INDIVIDUAL DETAILS
        
        <tr>
            <td class="auto-style2">Name : </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is required !"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Age :</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Your age is not suitable !" MaximumValue="55" MinimumValue="1"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Ride Category :</td>
            <td>

                 <asp:DropDownList ID="rideType" AutoPostBack="True" OnSelectedIndexChanged="Selection_Change" runat="server">
                 <asp:ListItem Selected="True" Value="choose here">choose here</asp:ListItem>
                 <asp:ListItem Value="Family Rides">Family Rides</asp:ListItem>
                 <asp:ListItem Value="Kiddie Rides">Kiddie Rides</asp:ListItem>
                 <asp:ListItem Value="Thrill Rides">Thrill Rides</asp:ListItem>
                 </asp:DropDownList>

                <asp:Label ID="lblavailable" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Ride type :</td>
            <td>
                <asp:DropDownList ID="rideFrequency" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Membership :</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <br />
                <asp:Button ID="Btnsubmit" runat="server" Text="Submit" />
            </td>
            <td>
                <asp:Label ID="lblprice" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
