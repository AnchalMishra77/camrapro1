<%@ Page Language="C#" MasterPageFile="~/Home.Master"AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="CameraShoppingOnline.feedback" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width: 100%">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right" class="lbllogin">
                USER NAME:</td>
            <td>
                <asp:TextBox ID="txtuser" runat="server" CssClass="txtlogin" Height="23px" 
                    Width="124px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuser" ErrorMessage="Enter User Name!!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right" class="lbllogin">
                MASSAGE:</td>
            <td>
                <asp:TextBox ID="txtmsg" runat="server" Height="102px" TextMode="MultiLine" 
                    Width="308px" CssClass="txtlogin"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtmsg" ErrorMessage="Enter Message!!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button5" runat="server" 
                    Text="Submitt" CssClass="btnlogin" Height="33px" Width="84px" OnClick="Button5_Click" />
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

