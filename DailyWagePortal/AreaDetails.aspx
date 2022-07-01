<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RegisteredUser.master" CodeFile="AreaDetails.aspx.cs" Inherits="AreaDetails" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
        <table class="style1">
            <tr>
                <td>
                    <asp:MultiView ID="MultiView1" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:View ID="View1" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td class="style4" style="width: 84px">
                                                    <asp:LinkButton runat="server" ID="lnkAdd" onclick="lnkAdd_Click" 
                                                        Font-Size="Medium" >Add Area</asp:LinkButton>
                                                </td>
                                                <td class="style5" style="width: 83px">
                                                    <asp:LinkButton ID="lnkView" runat="server" onclick="lnkView_Click" 
                                                        Font-Size="Medium">View Area</asp:LinkButton>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style4" style="width: 84px">
                                                    &nbsp;</td>
                                                <td class="style5" style="width: 83px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style4" style="width: 84px">
                                                    &nbsp;</td>
                                                <td class="style5" style="width: 83px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style4" style="width: 84px">
                                                    &nbsp;</td>
                                                <td class="style5" style="width: 83px">
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
                                    <asp:View ID="View2" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td class="style9">
                                                    &nbsp;</td>
                                                <td class="style10" style="font-size: x-large">
                                                    Add Area...</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style9">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style9">
                                                    <asp:Label ID="Label4" runat="server" Text="District"></asp:Label>
                                                </td>
                                                <td class="style10">
                                                    <asp:DropDownList ID="ddlDistrict" runat="server" AppendDataBoundItems="True" 
                                                        AutoPostBack="True" onselectedindexchanged="ddlDistrict_SelectedIndexChanged" 
                                                        Width="135px" Height="20px">
                                                        <asp:ListItem>---Select---</asp:ListItem>
                                                        <asp:ListItem>Kannur</asp:ListItem>
                                                        <asp:ListItem>Kasargod</asp:ListItem>
                                                        <asp:ListItem>Calicut</asp:ListItem>
                                                        <asp:ListItem>Trivandum</asp:ListItem>
                                                        <asp:ListItem>Eranakulam</asp:ListItem>
                                                        <asp:ListItem>Pathanamthitta</asp:ListItem>
                                                        <asp:ListItem>Kollam</asp:ListItem>
                                                        <asp:ListItem>Alappuzha</asp:ListItem>
                                                        <asp:ListItem>Palakkad</asp:ListItem>
                                                        <asp:ListItem>Malappuram</asp:ListItem>
                                                        <asp:ListItem>Wayanad</asp:ListItem>
                                                        <asp:ListItem>Idukki</asp:ListItem>
                                                        <asp:ListItem>Kottayam</asp:ListItem>
                                                        <asp:ListItem>Thrissur</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblValidationDist" runat="server" ForeColor="Red" 
                                                        Visible="False"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style9">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style9">
                                                    <asp:Label ID="Label1" runat="server" Text="Area Name"></asp:Label>
                                                </td>
                                                <td class="style10">
                                                    <asp:TextBox ID="txtArea" runat="server" Width="128px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ErrorMessage="Enter Area" ForeColor="Red" ValidationGroup="E" 
                                                        ControlToValidate="txtArea"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style9">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style9" style="height: 32px">
                                                    <asp:Label ID="Label2" runat="server" Text="Pincode"></asp:Label>
                                                </td>
                                                <td class="style10" style="height: 32px">
                                                    <asp:TextBox ID="txtPincode" runat="server" Width="128px"></asp:TextBox>
                                                </td>
                                                <td style="height: 32px">
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                        ControlToValidate="txtPincode" ErrorMessage="Enter Pincode" ForeColor="Red" 
                                                        ValidationExpression="^[0-9]{6}$" ValidationGroup="E"></asp:RegularExpressionValidator><br />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                        ControlToValidate="txtPincode" ErrorMessage="Enter Pincode" ForeColor="Red" 
                                                        ValidationGroup="E"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style9">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style9" colspan="2">
                                                    &nbsp;<asp:ImageButton ID="ImgBtnSubmit" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/submit.png" onclick="ImgBtnSubmit_Click" 
                                                        ValidationGroup="E" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:ImageButton ID="ImgBtnCancel1" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancel1_Click" />
                                                </td>
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
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:View ID="View3" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td class="style7" style="width: 312px; font-size: x-large;">
                                                    &nbsp;</td>
                                                <td class="style7" style="width: 353px; font-size: x-large;">
                                                    View Area...</td>
                                                <td class="style7" style="width: 353px; font-size: x-large;">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style7" style="width: 312px">
                                                    &nbsp;</td>
                                                <td class="style7" style="width: 353px">
                                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                                        AlternatingRowStyle-BackColor="#dddddd" AutoGenerateColumns="False" 
                                                        BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                                                        CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" 
                                                        HeaderStyle-BackColor="#444444" HeaderStyle-ForeColor="White" PageSize="5" 
                                                        Width="446px" AllowSorting="True">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:BoundField DataField="areaId" HeaderText="AreaId" Visible="False" />
                                                            <asp:BoundField DataField="district" HeaderText="District" />
                                                            <asp:BoundField DataField="Area" HeaderText="Area">
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="pincode" HeaderText="Pincode" 
                                                                ItemStyle-HorizontalAlign="Center">
                                                            <ItemStyle HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:TemplateField HeaderText="Edit">
                                                                <ItemTemplate >
                                                                    <asp:ImageButton ID="imgBtnEdit" runat="server" 
                                                                        CommandArgument='<%# Eval("areaId") %>' Height="45px" 
                                                                        ImageUrl="~/DailyWage/images/edit.png" oncommand="imgBtnEdit_Command" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                        <FooterStyle BackColor="#CCCC99" />
                                                        <HeaderStyle BackColor="#FFFFCC" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                                        <RowStyle BackColor="#F7F7DE" />
                                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                                    </asp:GridView>
                                                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                                        SelectMethod="selectAreaOrderbyDistrict" TypeName="AreaServices">
                                                    </asp:ObjectDataSource>
                                                </td>
                                                <td class="style7" style="width: 353px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style7" align="right" style="width: 312px">
                                                    &nbsp;</td>
                                                
                                                <td align="right" class="style7" style="width: 353px">
                                                    <asp:ImageButton ID="ImgBtnCancelView" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancelView_Click" />
                                                </td>
                                                
                                                <td align="right" class="style7" style="width: 353px">
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
                                    <asp:View ID="View4" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td class="style14" style="font-size: x-large">
                                                    Update Area...</td>
                                                <td class="style12">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td class="style14">
                                                    &nbsp;</td>
                                                <td class="style12">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    <asp:Label ID="Label3" runat="server" Text="Area"></asp:Label>
                                                </td>
                                                <td class="style14">
                                                    <asp:TextBox ID="txtUpdateArea" runat="server"></asp:TextBox>
                                                </td>
                                                <td class="style12">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                        ControlToValidate="txtUpdateArea" ErrorMessage="Enter Area" ForeColor="Red" 
                                                        ValidationGroup="U"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td class="style14">
                                                    &nbsp;</td>
                                                <td class="style12">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    <asp:Label ID="Pincode" runat="server" Text="Pincode"></asp:Label>
                                                </td>
                                                <td class="style14">
                                                    <asp:TextBox ID="txtUpdatePincode" runat="server"></asp:TextBox>
                                                </td>
                                                <td class="style12">
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                        ControlToValidate="txtUpdatePincode" ErrorMessage="Enter Pincode" 
                                                        ForeColor="Red" ValidationExpression="^[0-9]{6}$" ValidationGroup="U"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td class="style14">
                                                    &nbsp;</td>
                                                <td class="style12">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style15" colspan="2">
                                                    &nbsp;<asp:ImageButton ID="ImgBtnUpdate" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/submit.png" onclick="ImgBtnUpdate_Click" 
                                                        ValidationGroup="U" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:ImageButton ID="ImgBtnCancelUpdate" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancelUpdate_Click" />
                                                </td>
                                                <td class="style17">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style13">
                                                    &nbsp;</td>
                                                <td class="style14">
                                                    &nbsp;</td>
                                                <td class="style12">
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
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </asp:Content>