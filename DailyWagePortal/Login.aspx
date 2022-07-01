<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Home.master" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:MultiView ID="MultiView1" runat="server">
                        <table class="style1">
                            <tr>
                                <td style="width: 229px">
                                    <asp:View ID="View1" runat="server">
                                        <table class="style1" style="width: 224px; height: 175px">
                                            <tr>
                                                <td align="center" style="height: 20px">&nbsp;</td>

                                                <td align="center" style="height: 20px">
                                                    &nbsp;</td>
                                                <td align="center" colspan="2" style="height: 20px">
                                                    &nbsp;</td>

                                            </tr>
                                            <tr>
                                                <td align="center" style="height: 20px">
                                                </td>
                                                <td align="center" style="height: 20px">
                                                </td>
                                                <td align="center" colspan="2" style="height: 20px">
                                                    <h2>
                                                        Login</h2>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" style="height: 21px">
                                                    </td>
                                                <td class="style2" style="height: 21px">
                                                    </td>
                                                <td class="style2" style="height: 21px">
                                                    <asp:Label ID="Label1" runat="server" Text="Username" Font-Names="Calisto MT" 
                                                        ForeColor="#666666"></asp:Label>
                                                </td>
                                                <td class="style4" style="height: 21px">
                                                    <asp:TextBox ID="txtUsername" runat="server" Width="130px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    </td>
                                                <td align="center">
                                                    </td>
                                                <td align="center" colspan="2">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ControlToValidate="txtUsername" ErrorMessage="Enter Username" ForeColor="Red" 
                                                        ValidationGroup="L" Font-Names="Calisto MT"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" style="height: 23px" >
                                                    </td>
                                                <td class="style2" style="height: 23px">
                                                    </td>
                                                <td class="style2" style="height: 23px">
                                                    <asp:Label ID="Label2" runat="server" Text="Password" Font-Names="Calisto MT" 
                                                        ForeColor="#666666"></asp:Label>
                                                </td>
                                                <td class="style4" style="height: 23px">
                                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="130px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" align="center" style="height: 5px">
                                                    </td>
                                                <td align="center" class="style2" style="height: 5px">
                                                    </td>
                                                <td align="center" class="style2" colspan="2" style="height: 5px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="Red" 
                                                        ValidationGroup="L" Font-Names="Calisto MT"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" align="center" style="height: 8px" >
                                                    </td>
                                                <td align="center" class="style2" style="height: 8px">
                                                    </td>
                                                <td align="center" class="style2" colspan="2" style="height: 8px">
                                                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text="msg" 
                                                        Visible="False" Font-Names="Calisto MT"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" align="center" style="height: 22px">
                                                    </td>
                                                <td align="center" class="style2" style="height: 22px">
                                                    </td>
                                                <td align="center" class="style2" colspan="2" style="height: 22px">
                                                    <asp:ImageButton ID="imgBtnLogin" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/login.png" onclick="imgBtnLogin_Click" 
                                                        ValidationGroup="L" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="style2" style="height: 38px">
                                                    &nbsp;</td>
                                                <td align="center" class="style2" style="height: 38px">
                                                    &nbsp;</td>
                                                <td align="center" class="style2" colspan="2" style="height: 38px">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </td>
                            </tr>
                        </table>
                    </asp:MultiView>
                </td>
            </tr>
            </table>
    
    </div>
    </form>

    </asp:Content>