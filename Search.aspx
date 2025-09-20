<%@ Page Language="C#"MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="CameraShoppingOnline.Search" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2>&nbsp;Products
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </h2>
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
                                RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand" 
                                Width="140px">
                                <ItemTemplate>
                                   <table class="dtbl">
                                        <tr>
                                            <td class="style5" style="border: thin solid #E4E4E4">
                                               
                                    <div id="dimg">
                                        <asp:Image ID="Image1" runat="server" Height="150px" 
                                            ImageUrl='<%#Eval("Image") %>' Width="128px" />
                                    </div> 
                                        <table class="style1">
                                            <tr>
                                                <td colspan="2" class="style4">
                                                    <asp:Label ID="lbllname" runat="server" Text='<%#Eval("ItemName") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="style2">
                                                    Price : <asp:Label ID="lblprice" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                                </td>
                                                <td class="style3">
                                                    <asp:Button ID="Button1" runat="server" CssClass="btn" 
                                                        CommandArgument='<%#Eval("ItemID") %>' Text="Buy" Height="19px" Width="60px" />
                                                </td>
                                            </tr>
                                        </table>
                                     
                              </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                              
                            
                            </asp:DataList>
                        </asp:Content>

