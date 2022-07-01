<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RegisteredUser.master" CodeFile="ViewEmployees.aspx.cs" Inherits="ViewEmployees" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
    
        <asp:MultiView ID="MultiView1" runat="server">
            <table class="style1">
                <tr>
                    <td>
                        <asp:View ID="View1" runat="server">
                            <table class="style1">
                                <tr>
                                    <td align="center" style="width: 469px; font-size: x-large;">
                                        Employees...</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 469px">
                                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                            AllowSorting="True" AlternatingRowStyle-BackColor="#dddddd" 
                                            AutoGenerateColumns="False" BackColor="White" BorderColor="Black" 
                                            BorderStyle="Solid" BorderWidth="1px" CellPadding="4" 
                                            DataSourceID="ObjectDataSource1" ForeColor="Black" 
                                            HeaderStyle-BackColor="#444444" HeaderStyle-ForeColor="White" PageSize="6" 
                                            Width="446px">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="loginId" HeaderText="LoginId" Visible="False" />
                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="jobName" HeaderText="Job" />
                                                <asp:BoundField DataField="area" HeaderText="Area" />
                                                <asp:BoundField DataField="mob" HeaderText="Contact" />
                                                <asp:TemplateField HeaderText="Delete">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="ImgBtnDelete" runat="server" Height="35px" 
                                                            ImageUrl="~/DailyWage/images/Delete.png" 
                                                            CommandArgument='<%# Eval("loginId") %>' oncommand="ImgBtnDelete_Command" />
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
                                </tr>
                                <tr>
                                    <td style="width: 469px">
                                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                            SelectMethod="selectAllEmploy" TypeName="EmployServices">
                                        </asp:ObjectDataSource>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 469px">
                                        &nbsp;<asp:ImageButton ID="ImgBtnCancel" runat="server" Height="45px" 
                                            ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancel_Click" />
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 469px">
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
            </table>
        </asp:MultiView>
    
    </div>
    </asp:Content>