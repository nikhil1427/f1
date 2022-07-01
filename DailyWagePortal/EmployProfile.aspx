<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RegisteredUser.master" CodeFile="EmployProfile.aspx.cs" Inherits="EmployProfile" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
                    <asp:MultiView ID="MultiView1" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:View ID="View1" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td class="style2" style="width: 105px; height: 27px;">
                                                    </td>
                                                <td class="style2" style="width: 240px; height: 27px; font-size: x-large;">
                                                    Employ Profile...</td>
                                                <td style="height: 27px">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" style="width: 105px">
                                                   
                                                </td>
                                                <td class="style2" style="width: 240px">
                                                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                                        BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                                                        CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" 
                                                        GridLines="Vertical" Height="50px" Width="253px">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                        <Fields>
                                                            <asp:BoundField DataField="s" HeaderText="empId" Visible="False" />
                                                            <asp:BoundField DataField="name" HeaderText="Name" />
                                                            <asp:BoundField DataField="dob" DataFormatString="{0:MM/dd/yyyy}" 
                                                                HeaderText="Date of Birth" />
                                                            <asp:BoundField DataField="gender" HeaderText="Gender" />
                                                            <asp:BoundField DataField="address" HeaderText="Address" />
                                                            <asp:BoundField DataField="pincode" HeaderText="Pincode" />
                                                            <asp:BoundField DataField="mob" HeaderText="Mobile" />
                                                            <asp:BoundField DataField="email" HeaderText="E-Mail" />
                                                            <asp:BoundField DataField="empMale" HeaderText="No.of Male" />
                                                            <asp:BoundField DataField="empFemale" HeaderText="No.of Female" />
                                                        </Fields>
                                                        <FooterStyle BackColor="#CCCC99" />
                                                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                                        <RowStyle BackColor="#F7F7DE" />
                                                    </asp:DetailsView>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="width: 105px">
                                                    &nbsp;</td>
                                                <td align="center" style="width: 240px">
                                                    <asp:ImageButton ID="ImgBtnEdit" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/edit.png" onclick="ImgBtnEdit_Click" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImgBtnCancel1" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancel1_Click" />
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style2" style="height: 17px; width: 105px">
                                                    &nbsp;</td>
                                                <td class="style2" style="width: 240px; height: 17px">
                                                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                                        SelectMethod="selectEmployProfile" TypeName="EmployServices">
                                                        <SelectParameters>
                                                            <asp:SessionParameter Name="loginId" SessionField="loginId" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:ObjectDataSource>
                                                </td>
                                                <td style="height: 17px">
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
                                    <asp:View ID="View2" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td class="style5" style="width: 52px">
                                                    &nbsp;</td>
                                                <td class="style5" colspan="5" style="font-size: x-large">
                                                    Edit Details...</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style5" style="width: 52px">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    &nbsp;</td>
                                                <td class="style9" colspan="4">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style5" style="width: 52px">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    <asp:Label ID="Label1" runat="server" Text="Mobile"></asp:Label>
                                                </td>
                                                <td class="style9" colspan="4">
                                                    <asp:TextBox ID="txtUpdateMobile" runat="server" style="margin-bottom: 0px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                        ControlToValidate="txtUpdateMobile" ErrorMessage="Enter Mobile Number" 
                                                        ForeColor="Red" ValidationExpression="^[0-9]{10}$" ValidationGroup="Z"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5" style="width: 52px">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    &nbsp;</td>
                                                <td class="style9" colspan="4">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style5" style="width: 52px">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    <asp:Label ID="Label2" runat="server" Text="E-Mail"></asp:Label>
                                                </td>
                                                <td class="style9" colspan="4">
                                                    <asp:TextBox ID="txtUpdateEmail" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                        ControlToValidate="txtUpdateEmail" ErrorMessage="Enter Valid E-Mail ID" 
                                                        ForeColor="Red" 
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                        ValidationGroup="Z"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style5" style="width: 52px">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    <asp:Label ID="Label3" runat="server" Text="Male"></asp:Label>
                                                </td>
                                                <td class="style9">
                                                    <asp:TextBox ID="txtUpdateM" runat="server" Width="34px"></asp:TextBox>
                                                </td>
                                                <td class="style9" style="width: 36px">
                                                    <asp:Label ID="Label4" runat="server" Text="Female"></asp:Label>
                                                </td>
                                                <td class="style9" style="width: 58px">
                                                    <asp:TextBox ID="txtUpdateF" runat="server" Width="36px"></asp:TextBox>
                                                </td>
                                                <td class="style9">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                        <table class="style1">
                                            <tr>
                                                <td class="style5" style="width: 52px">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    &nbsp;</td>
                                                <td class="style9" valign="middle">
                                                    &nbsp;&nbsp;
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style5" style="width: 52px">
                                                    &nbsp;</td>
                                                <td align="center" class="style5" colspan="2">
                                                    <asp:ImageButton ID="ImgBtnUpdate" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/submit.png" onclick="ImgBtnUpdate_Click" 
                                                        ValidationGroup="Z" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImgBtnCancel2" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancel2_Click" />
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style5" style="width: 52px">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    &nbsp;</td>
                                                <td class="style9">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
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