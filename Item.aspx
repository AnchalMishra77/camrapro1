<%@ Page Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Item.aspx.cs" Inherits="CameraShoppingOnline.Item" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Products <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label></h2>

    <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
    RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand" 
    Width="140px">
        <ItemTemplate>
            <table class="dtbl">
                <tr>
                    <td class="style5" style="border: thin solid #E4E4E4">
                        <div id="dimg">
                            <asp:Image ID="Image1" runat="server" Height="150px" Width="128px" 
                                       ImageUrl='<%# Eval("Image") %>' />
                        </div>
                        <table class="style1">
                            <tr>
                                <td colspan="2" class="style4">
                                    <asp:Label ID="lbllname" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Price: 
                                    <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:Button ID="Button1" runat="server" Text="Buy" CssClass="btn"
                                                CommandName="buy" CommandArgument='<%# Eval("ItemID") %>' 
                                                Height="19px" Width="60px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
