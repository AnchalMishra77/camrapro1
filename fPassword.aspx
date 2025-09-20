<%@ Page Language="C#"MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="fPassword.aspx.cs" Inherits="CameraShoppingOnline.fPassword" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 149px;
    }
    .style3
    {
        height: 9px;
        width: 149px;
    }
    .style6
    {
        width: 101px;
    }
    .style7
    {
        text-align: right;
        height: 9px;
        color: #ff6600;
        font-weight: bold;
        font-size: 14px;
        width: 101px;
    }
    .style8
    {
        text-align: right;
        height: 30px;
        color: #ff6600;
        font-weight: bold;
        font-size: 14px;
        width: 101px;
    }
    .style9
    {
        width: 199px;
    }
    .style10
    {
        height: 9px;
        width: 199px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <script type="text/javascript">
     function abc(a) {

         a.value = a.value.replace(/[^0-9-.]/g, '');


     }
    
 </script>

<h2>Forgot Password</h2>
    <p style="text-align: center">
        <br />
        <br />
    <table align="center" style="border: thin solid #ff6600; width: 484px">
        <tr>
            <td class="tblhead" colspan="3">
                Forgot Password</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                Email-Id : </td>
            <td align="left" class="style10">
                <asp:TextBox ID="txtmail" runat="server" CssClass="txtlogin" Height="20px"></asp:TextBox>
            </td>
            <td align="left" class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtmail" ErrorMessage="Please Enter Email Id!!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Mobile :</td>
            <td align="left" class="style9">
                <asp:TextBox ID="txtmobile" onkeyup="abc(this)" runat="server" CssClass="txtlogin" Height="20px" MaxLength="10" 
                    ></asp:TextBox>
            </td>
            <td align="left" class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtmobile" ErrorMessage="Enter Mobile!!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td align="left" class="style9">
                <asp:Label ID="lblpass" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td align="left" class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td align="left" class="style9">
                <asp:Button ID="btnlgetpass" runat="server" CssClass="btnlogin" Text="Get Password" 
                    Height="26px" Width="86px" OnClick="btnlgetpass_Click"  />
            </td>
            <td align="left" class="style2">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td align="left" class="style9">
                &nbsp;</td>
            <td align="left" class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 6px;" colspan="3" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        </table>
    <br />
</p>    
</asp:Content>


