<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Registration.master" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td style="width: 568px">
                    <asp:MultiView ID="MultiView1" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 555px">
                                    <asp:View ID="View1" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td class="style23" style="width: 184px">
                                                    &nbsp;</td>
                                                <td class="style23" colspan="2" style="font-size: x-large">
                                                    Search Workers...</td>
                                                <td colspan="2">
                                                    &nbsp;</td>
                                                <td class="style3">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style23" rowspan="9" style="width: 184px">
                                                    <asp:Image ID="Image1" runat="server" Height="145px" 
                                                        ImageUrl="~/DailyWage/images/man-searching.png" Width="160px" />
                                                </td>
                                                <td class="style23" colspan="2" style="font-size: x-large">
                                                    &nbsp;</td>
                                                <td colspan="2">
                                                    &nbsp;</td>
                                                <td class="style3">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style23">
                                                    <asp:Label ID="Label20" runat="server" Text="District"></asp:Label>
                                                </td>
                                                <td class="style2">
                                                    <asp:DropDownList ID="ddlDistrict" runat="server" AppendDataBoundItems="True" 
                                                        AutoPostBack="True" onselectedindexchanged="ddlDistrict_SelectedIndexChanged" 
                                                        Width="130px">
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
                                                <td colspan="2">
                                                    <asp:Label ID="lblValidationDist" runat="server" ForeColor="Red" 
                                                        Visible="False"></asp:Label>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style23">
                                                    &nbsp;</td>
                                                <td class="style2">
                                                    &nbsp;</td>
                                                <td colspan="2">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style23">
                                                    <asp:Label ID="Label3" runat="server" Text="Area"></asp:Label>
                                                </td>
                                                <td class="style2">
                                                    <asp:DropDownList ID="ddlArea" runat="server" AppendDataBoundItems="True" 
                                                        AutoPostBack="True" onselectedindexchanged="ddlArea_SelectedIndexChanged" 
                                                        Width="130px">
                                                        <asp:ListItem>---Select---</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td colspan="2">
                                                    <asp:Label ID="lblValidationArea" runat="server" ForeColor="Red" 
                                                        Visible="False"></asp:Label>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style23">
                                                    &nbsp;</td>
                                                <td class="style2">
                                                    &nbsp;</td>
                                                <td colspan="2">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style23">
                                                    <asp:Label ID="Label2" runat="server" Text="Job"></asp:Label>
                                                </td>
                                                <td class="style2">
                                                    <asp:DropDownList ID="ddlJob" runat="server" AppendDataBoundItems="True" 
                                                        AutoPostBack="True" Width="130px" 
                                                        onselectedindexchanged="ddlJob_SelectedIndexChanged">
                                                        <asp:ListItem>---Select---</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td colspan="2">
                                                    <asp:Label ID="lblValidationJob" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                                                </td>
                                                <td class="style3">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style23">
                                                    &nbsp;</td>
                                                <td class="style22" colspan="2">
                                                    &nbsp;</td>
                                                <td colspan="2">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style23" colspan="2">
                                                    <asp:ImageButton ID="ImgBtnSearch" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/search.png" onclick="ImgBtnSearch_Click" />
                                                    &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImgBtnCancel" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancel_Click" />
                                                </td>
                                                <td colspan="2">
                                                    &nbsp;</td>
                                                <td class="style3">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style23">
                                                    &nbsp;</td>
                                                <td class="style2">
                                                    &nbsp;</td>
                                                <td colspan="2">
                                                    &nbsp;</td>
                                                <td class="style3">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 555px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 555px">
                                    <asp:View ID="View2" runat="server">
                                        <table class="style1">
                                            <tr>
                                                <td style="width: 51px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 51px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td style="font-size: x-large">
                                                    Employees...</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 51px">
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                                        SelectMethod="selectEmployByAreaAndJob" TypeName="EmployServices">
                                                        <SelectParameters>
                                                            <asp:SessionParameter Name="areaId" SessionField="areaId" Type="Int32" />
                                                            <asp:SessionParameter Name="jobId" SessionField="jobId" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:ObjectDataSource>
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                        BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                                                        CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="Black" 
                                                        GridLines="Vertical" Height="16px" Width="450px"  EmptyDataText="No results match the specified search criteria.">
                                                        <AlternatingRowStyle BackColor="White"  />
                                                        <Columns>
                                                            <asp:BoundField DataField="empId" HeaderText="empId" Visible="False" />
                                                            <asp:BoundField DataField="name" HeaderText="Name" />
                                                            <asp:BoundField DataField="address" HeaderText="Address" />
                                                            <asp:BoundField DataField="mob" HeaderText="Contact Number" />
                                                            <asp:TemplateField HeaderText="View">
                                                                <ItemTemplate>
                                                                    <asp:ImageButton ID="imgBtnView" runat="server" 
                                                                        CommandArgument='<%# Eval("empId") %>' Height="45px" 
                                                                        ImageUrl="~/DailyWage/images/Details.png" oncommand="imgBtnView_Command" />
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
                                                <td style="width: 51px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 51px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 51px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td align="right">
                                                    <asp:ImageButton ID="ImgBtnBack" runat="server" 
                                                        ImageUrl="~/DailyWage/images/Back.png" Height="45px" 
                                                        onclick="ImgBtnBack_Click1" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 555px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 555px">
                                    <asp:View ID="View3" runat="server">
                                        <table class="style1" style="width: 532px">
                                            <tr>
                                                <td class="style19" style="width: 40px; height: 39px;">
                                                    </td>
                                                <td class="style19" style="font-size: x-large; height: 39px;">
                                                    </td>
                                                <td class="style10" style="height: 39px">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style19" style="width: 40px">
                                                    &nbsp;</td>
                                                <td class="style19" style="font-size: x-large">
                                                    Employ Details...</td>
                                                <td class="style10">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style19" style="width: 40px">
                                                    &nbsp;</td>
                                                <td class="style19">
&nbsp;</td>
                                                <td class="style10">
&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style19" style="width: 40px">
                                                    &nbsp;</td>
                                                <td class="style19">
                                                    <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
                                                    &nbsp;:&nbsp;&nbsp;
                                                    <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <td class="style10">
                                                    <asp:Label ID="Label5" runat="server" Text="Job"></asp:Label>
                                                    &nbsp;:
                                                    <asp:Label ID="lblJob" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style19" style="width: 40px">
                                                    &nbsp;</td>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style19" style="width: 40px">
                                                    &nbsp;</td>
                                                <td class="style19">
                                                    <asp:Label ID="Label16" runat="server" Text="Address : "></asp:Label>
                                                    <asp:Label ID="lblAddress" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <td class="style10">
                                                    <asp:Label ID="Label14" runat="server" Text="Area : "></asp:Label>
                                                    <asp:Label ID="lblArea" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style19" style="width: 40px">
                                                    &nbsp;</td>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style19" style="width: 40px">
                                                    &nbsp;</td>
                                                <td class="style19">
                                                    <asp:Label ID="Label17" runat="server" Text="Mobile : "></asp:Label>
                                                    <asp:Label ID="lblMobile" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <td class="style10">
                                                    <asp:Label ID="Label18" runat="server" Text="Email : "></asp:Label>
                                                    <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style19" style="width: 40px">
                                                    &nbsp;</td>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td class="style10">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style20" style="width: 40px">
                                                    &nbsp;</td>
                                                <td class="style20">
                                                    <asp:Label ID="Label6" runat="server" Text="Wage for Full Day :  "></asp:Label>
                                                    <asp:Label ID="lblWage" runat="server" Text="Label"></asp:Label>
                                                    &nbsp;<asp:Label ID="Label19" runat="server" Text="Per"></asp:Label>
                                                    &nbsp;<asp:Label ID="lblUnit" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <td class="style9">
                                                    <asp:Label ID="Label7" runat="server" Text="Wage for Half Day : "></asp:Label>
                                                    <asp:Label ID="lblHalfday" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style20" style="width: 40px">
                                                    &nbsp;</td>
                                                <td class="style20">
                                                    &nbsp;</td>
                                                <td class="style9">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style14" style="width: 40px">
                                                    &nbsp;</td>
                                                <td class="style14" colspan="2">
                                                    <asp:Label ID="Label8" runat="server" Text="No.of Co-Workers "></asp:Label>
                                                    &nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label9" runat="server" Text="Male : "></asp:Label>
                                                    <asp:Label ID="lblMale" runat="server" Text="Label"></asp:Label> &nbsp;&nbsp;   
                                                    <asp:Label ID="Label10" runat="server" Text="Female : "></asp:Label>
                                                    <asp:Label ID="lblFemale" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style19" style="width: 40px">
                                                    &nbsp;</td>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td class="style10" align="right">
                                                    <asp:ImageButton ID="ImgBtnCancel2" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancel2_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 555px">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:MultiView>
                </td>
            </tr>
            <tr>
                <td style="width: 568px">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
  </asp:Content>