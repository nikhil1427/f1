<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RegisteredUser.master" CodeFile="JobDetails.aspx.cs" Inherits="JobDetails" %>

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
                                                <td style="font-size: medium">
                                                    <asp:LinkButton ID="lnkAddJob" runat="server" onclick="lnkAddJob_Click">Add Job</asp:LinkButton>
                                                </td>
                                                <td style="font-size: medium">
                                                    <asp:LinkButton ID="lnkViewJob" runat="server" onclick="lnkViewJob_Click">View Job</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 102px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 102px">
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
                                    <asp:View ID="View2" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="font-size: x-large; width: 161px;">
                                                    Add Job</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 161px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text="Job Name"></asp:Label>
                                                </td>
                                                <td style="width: 161px">
                                                    <asp:TextBox ID="txtJobName" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ControlToValidate="txtJobName" ErrorMessage="Enter Job" ForeColor="Red" 
                                                        ValidationGroup="J"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 161px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text="Wage"></asp:Label>
                                                </td>
                                                <td style="width: 161px">
                                                    <asp:TextBox ID="txtWage" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ControlToValidate="txtWage" ErrorMessage="Enter Wage" ForeColor="Red" 
                                                        ValidationGroup="J"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 161px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text="Half Day"></asp:Label>
                                                </td>
                                                <td style="width: 161px">
                                                    <asp:TextBox ID="txtHalfDay" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                        ControlToValidate="txtHalfDay" ErrorMessage="Enter Wage for Half day" 
                                                        ForeColor="Red" ValidationGroup="J"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 161px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text="Unit Per"></asp:Label>
                                                </td>
                                                <td style="width: 161px">
                                                    <asp:TextBox ID="txtUnit" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                        ControlToValidate="txtUnit" ErrorMessage="Enter Unit" ForeColor="Red" 
                                                        ValidationGroup="J"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 161px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td align="center" colspan="2">
                                                    <asp:ImageButton ID="ImgBtnSubmit" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/submit.png" onclick="ImgBtnSubmit_Click" 
                                                        ValidationGroup="J" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:ImageButton ID="ImgBtnCancel" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancel_Click" />
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 161px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 161px">
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
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:View ID="View3" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td style="font-size: x-large">
                                                    View Jobs</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:GridView ID="GridView1" runat="server" 
                                                        AlternatingRowStyle-BackColor="#dddddd" AutoGenerateColumns="False" 
                                                        BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                                                        CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" 
                                                        GridLines="Vertical" HeaderStyle-BackColor="#444444" 
                                                        HeaderStyle-ForeColor="White" Width="476px" AllowPaging="True" 
                                                        AllowSorting="True" PageSize="5">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:BoundField DataField="jobId" HeaderText="jobId" Visible="False" />
                                                            <asp:BoundField DataField="jobName" HeaderStyle-HorizontalAlign="Left" 
                                                                HeaderText="Job">
                                                            <HeaderStyle HorizontalAlign="Left" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="wage" HeaderText="Wage" 
                                                                ItemStyle-HorizontalAlign="Center">
                                                            <ItemStyle HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="halfDay" HeaderText="Half Day" 
                                                                ItemStyle-HorizontalAlign="Center">
                                                            <ItemStyle HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="unit" HeaderStyle-HorizontalAlign="Left" 
                                                                HeaderText="Per Unit">
                                                            <HeaderStyle HorizontalAlign="Left" />
                                                            </asp:BoundField>
                                                            <asp:TemplateField HeaderText="Edit">
                                                                <ItemTemplate>
                                                                    <asp:ImageButton ID="imgBtnEdit" runat="server" 
                                                                        CommandArgument='<%# Eval("jobId") %>' Height="45px" 
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
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:ImageButton ID="ImgBtnCancelView" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancelView_Click" />
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                                        SelectMethod="selectJobOrderByJob" TypeName="JobServices">
                                                    </asp:ObjectDataSource>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
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
                                                <td colspan="2" style="height: 22px; font-size: x-large;">
                                                    Update Job Details</td>
                                                <td style="height: 22px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 155px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Text="Job Name"></asp:Label>
                                                </td>
                                                <td style="width: 155px">
                                                    <asp:TextBox ID="txtUpdateJob" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                        ControlToValidate="txtUpdateJob" ErrorMessage=" Enter Job Name" ForeColor="Red" 
                                                        ValidationGroup="U"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 155px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Text="Wage"></asp:Label>
                                                </td>
                                                <td style="width: 155px">
                                                    <asp:TextBox ID="txtUpdateWage" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                        ControlToValidate="txtUpdateWage" ErrorMessage="Enter Wage" ForeColor="Red" 
                                                        ValidationGroup="U"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 155px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label7" runat="server" Text="Half Day"></asp:Label>
                                                </td>
                                                <td style="width: 155px">
                                                    <asp:TextBox ID="txtUpdateHalfday" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                        ControlToValidate="txtUpdateHalfday" ErrorMessage="Enter Wage for Half Day" 
                                                        ForeColor="Red" ValidationGroup="U"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 155px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label8" runat="server" Text="Unit Per"></asp:Label>
                                                </td>
                                                <td style="width: 155px">
                                                    <asp:TextBox ID="txtUpdateUnit" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                        ControlToValidate="txtUpdateUnit" ErrorMessage="Enter Unit" ForeColor="Red" 
                                                        ValidationGroup="U"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 155px">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">
                                                    <asp:ImageButton ID="ImgBtnUpdate" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/submit.png" onclick="ImgBtnUpdate_Click" 
                                                        ValidationGroup="U" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton 
                                                        ID="ImgBtnCancelUpdate" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" 
                                                        onclick="ImgBtnCancelUpdate_Click" />
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 155px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="width: 155px">
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
                        </table>
                    </asp:MultiView>
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
    
   </asp:Content>