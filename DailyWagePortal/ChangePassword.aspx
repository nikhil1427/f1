<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RegisteredUser.master" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
    
        <asp:MultiView ID="MultiView1" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 393px">
                        <asp:View ID="View1" runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="style5" style="height: 21px; width: 29px;">
                                        &nbsp;</td>
                                    <td class="style5" style="height: 21px; width: 133px;">
                                    </td>
                                    <td class="style5" style="height: 21px; width: 145px;">
                                        </td>
                                    <td class="style5" style="height: 21px">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style3" style="height: 1px; width: 29px;">
                                        &nbsp;</td>
                                    <td class="style3" style="height: 1px; width: 133px;">
                                        <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
                                    </td>
                                    <td class="style2" style="height: 1px; width: 145px;">
                                        <asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td style="height: 1px">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="txtOldPassword" ErrorMessage="Enter Old Password" 
                                            ForeColor="Red" ValidationGroup="C"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 29px">
                                        &nbsp;</td>
                                    <td style="width: 133px">
                                    </td>
                                    <td style="width: 145px">
                                        </td>
                                    <td>
                                        </td>
                                </tr>
                                <tr>
                                    <td style="width: 29px">
                                        &nbsp;</td>
                                    <td style="width: 133px">
                                        <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                                    </td>
                                    <td style="width: 145px">
                                        <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="txtNewPassword" ErrorMessage="Enter New Password" 
                                            ForeColor="Red" ValidationGroup="C"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 29px">
                                        &nbsp;</td>
                                    <td style="width: 133px">
                                    </td>
                                    <td style="width: 145px">
                                        </td>
                                    <td>
                                        </td>
                                </tr>
                                <tr>
                                    <td style="width: 29px">
                                        &nbsp;</td>
                                    <td style="width: 133px">
                                        <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                                    </td>
                                    <td style="width: 145px">
                                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="txtConfirmPassword" ErrorMessage="Re-Enter Password" 
                                            ForeColor="Red" ValidationGroup="C"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 29px">
                                        &nbsp;</td>
                                    <td style="width: 133px">
                                    </td>
                                    <td colspan="2">
                                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" 
                                            ErrorMessage="Password Not Matching" ForeColor="Red" ValidationGroup="C"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 29px">
                                        &nbsp;</td>
                                    <td align="center" colspan="2">
                                        <asp:ImageButton ID="ImgBtnSubmit" runat="server" Height="45px" 
                                            ImageUrl="~/DailyWage/images/submit.png" onclick="ImgBtnSubmit_Click" 
                                            ValidationGroup="C" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImgBtnCancel" runat="server" Height="45px" 
                                            ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancel_Click" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style5" style="height: 18px; width: 29px;">
                                        &nbsp;</td>
                                    <td class="style5" style="height: 18px; width: 133px;">
                                    </td>
                                    <td class="style5" style="height: 18px; width: 145px;">
                                        </td>
                                    <td class="style5" style="height: 18px">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style3" style="height: 27px; width: 29px;">
                                        &nbsp;</td>
                                    <td class="style3" style="height: 27px; width: 133px;">
                                    </td>
                                    <td class="style2" style="height: 27px; width: 145px;">
                                        </td>
                                    <td style="height: 27px">
                                        </td>
                                </tr>
                            </table>
                        </asp:View>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:MultiView>
    
    </div>
 </asp:Content>