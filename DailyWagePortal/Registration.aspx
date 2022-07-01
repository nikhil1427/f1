<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Registration.master" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="BDP" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td style="width: 572px">
                    <asp:MultiView ID="MultiView1" runat="server">
                        <table class="style1">
                            <tr>
                                <td style="width: 568px">
                                    <asp:View ID="View1" runat="server">
                                        <table class="style1" style="width: 563px">
                                            <tr>
                                                <td class="style8" colspan="4" style="font-size: x-large">
                                                    Step 1 : Set Username and Password</td>
                                            </tr>
                                            <tr>
                                                <td class="style8" style="width: 150px">
                                                    &nbsp;</td>
                                                <td class="style8" style="width: 124px">
                                                    &nbsp;</td>
                                                <td class="style6" style="width: 136px">
                                                    &nbsp;</td>
                                                <td style="width: 136px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style8" style="width: 150px" rowspan="8">
                                                    <asp:Image ID="Image1" runat="server" Height="180px" 
                                                        ImageUrl="~/DailyWage/images/stickman_with_giant_pencil_800_clr_1842.png" 
                                                        Width="150px" />
                                                </td>
                                                <td class="style8" style="width: 124px">
                                                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                                                    <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td class="style6" style="width: 136px">
                                                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                                </td>
                                                <td style="width: 136px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ControlToValidate="txtUserName" EnableViewState="False" 
                                                        ErrorMessage="Enter Username" ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" style="width: 124px">
                                                </td>
                                                <td class="style11" style="width: 136px">
                                                    <asp:LinkButton ID="lbtnCheck" runat="server" onclick="lbtnCheck_Click">Check Availability</asp:LinkButton>
                                                </td>
                                                <td style="width: 136px">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style10" style="width: 124px">
                                                </td>
                                                <td class="style11" colspan="2">
                                                    <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                                                    <asp:Label ID="lblAvail" runat="server" ForeColor="#009900"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style9" style="width: 124px">
                                                    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                                                    <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td class="style7" style="width: 136px">
                                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                </td>
                                                <td class="style2" style="width: 136px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="Red" 
                                                        ValidationGroup="A"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style9" style="width: 124px">
                                                    &nbsp;</td>
                                                <td class="style7" style="width: 136px">
                                                    &nbsp;</td>
                                                <td class="style2" style="width: 136px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style8" style="width: 124px">
                                                    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                                                    <asp:Label ID="Label19" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td class="style6" style="width: 136px">
                                                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                </td>
                                                <td style="width: 136px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                        ControlToValidate="txtConfirmPassword" ErrorMessage="Re Enter Password" 
                                                        ForeColor="Red" ValidationGroup="A"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style8" style="width: 124px; height: 18px;">
                                                    </td>
                                                <td class="style6" style="width: 136px; height: 18px;">
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                        ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                                                        EnableViewState="False" ErrorMessage="Password Mismatch" ForeColor="Red" 
                                                        ValidationGroup="A"></asp:CompareValidator>
                                                </td>
                                                <td style="width: 136px; height: 18px">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style8" style="width: 124px">
                                                    &nbsp;</td>
                                                <td class="style6" style="width: 136px">
                                                    <asp:Label ID="Label20" runat="server" ForeColor="Red" Text="* Required Fields"></asp:Label>
                                                </td>
                                                <td style="width: 136px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style8" align="center" style="width: 150px">
                                                    &nbsp;</td>
                                                <td align="center" class="style8" colspan="2">
                                                    <asp:ImageButton ID="ImgBtnNext1" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/next.png" onclick="ImgBtnNext1_Click" 
                                                        ValidationGroup="A" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:ImageButton ID="ImgBtnCancel1" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancel1_Click" />
                                                </td>
                                                <td style="width: 136px">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 568px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 568px">
                                    <asp:View ID="View2" runat="server">
                                        <table class="style1" style="width: 570px">
                                            <tr>
                                                <td colspan="4" style="font-size: x-large">
                                                    Step 2 : Personal Details</td>
                                            </tr>
                                            <tr>
                                                <td rowspan="7">
                                                    <asp:Image ID="Image2" runat="server" Height="180px" 
                                                        ImageUrl="~/DailyWage/images/stickman_with_giant_pencil_800_clr_1842.png" 
                                                        Width="150px" />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
                                                    <asp:Label ID="Label21" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                        ControlToValidate="txtName" ErrorMessage="Enter Name" ForeColor="Red" 
                                                        ValidationGroup="B"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Text="Date of Birth"></asp:Label>
                                                    <asp:Label ID="Label22" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td>
                                                    <BDP:BasicDatePicker ID="bdpDob" runat="server">
                                                   </BDP:BasicDatePicker>
                                                </td>
                                                <td>
                                                    <BDP:IsDateValidator ID="IsDateValidator1" runat="server" 
                                                        ControlToValidate="bdpDob" ErrorMessage="Select Valid Date" ForeColor="Red" 
                                                        ValidationGroup="B"></BDP:IsDateValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <BDP:DateRequiredValidator ID="DateRequiredValidator1" runat="server" 
                                                        ControlToValidate="bdpDob" ErrorMessage="Enter Date" ForeColor="Red" 
                                                        ValidationGroup="B"></BDP:DateRequiredValidator>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
                                                    <asp:Label ID="Label23" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" 
                                                        Width="164px">
                                                        <asp:ListItem Selected="True">Male</asp:ListItem>
                                                        <asp:ListItem>Female</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                                <td>
                                                    </td>
                                                <td>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                                                    <asp:Label ID="Label24" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="128px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                        ControlToValidate="txtAddress" ErrorMessage="Enter Address" ForeColor="Red" 
                                                        ValidationGroup="B"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                </td>
                                                <td>
                                                    </td>
                                                <td>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label9" runat="server" Text="Pincode"></asp:Label>
                                                    <asp:Label ID="Label25" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                        ControlToValidate="txtPincode" ErrorMessage="Enter Pincode" ForeColor="Red" 
                                                        ValidationExpression="^[0-9]{6}$" ValidationGroup="B"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                        ControlToValidate="txtPincode" ErrorMessage="Enter Pincode" ForeColor="Red" 
                                                        ValidationGroup="B"></asp:RequiredFieldValidator>
                                                    </td>
                                                <td>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label10" runat="server" Text="Mobile"></asp:Label>
                                                    <asp:Label ID="Label26" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtMob" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                        ControlToValidate="txtMob" ErrorMessage="Enter Mobile Number" 
                                                        ForeColor="Red" ValidationExpression="^[0-9]{10}$" ValidationGroup="B"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                        ControlToValidate="txtMob" ErrorMessage="Enter Mobile" ForeColor="Red" 
                                                        ValidationGroup="B"></asp:RequiredFieldValidator>
                                                    </td>
                                                <td>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label11" runat="server" Text="Email"></asp:Label>
                                                    <asp:Label ID="Label27" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                        ControlToValidate="txtEmail" ErrorMessage="Enter Valid Email ID" 
                                                        ForeColor="Red" 
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                        ValidationGroup="B"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style3">
                                                    </td>
                                                <td class="style3">
                                                </td>
                                                <td class="style3">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                        ControlToValidate="txtEmail" ErrorMessage="Enter Email" ForeColor="Red" 
                                                        ValidationGroup="B"></asp:RequiredFieldValidator>
                                                    </td>
                                                <td class="style3">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                </td>
                                                <td align="center" colspan="2">
                                                    <asp:ImageButton ID="ImgBtnNext2" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/next.png" onclick="ImgBtnNext2_Click" 
                                                        ValidationGroup="B" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImgBtnCancel2" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancel2_Click" />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label28" runat="server" ForeColor="Red" Text="* Required Fields"></asp:Label>
                                                    </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 568px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 568px">
                                    <asp:View ID="View3" runat="server">
                                        <table class="style12" style="width: 568px; height: 377px">
                                            <tr>
                                                <td colspan="4" style="font-size: x-large; height: 29px;" class="style5">
                                                    Step 3 : Job Details</td>
                                            </tr>
                                            <tr>
                                                <td class="style5" style="font-size: x-large; width: 81px; height: 21px;">
                                                    </td>
                                                <td class="style5" colspan="3" style="font-size: x-large; height: 21px;">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style22" style="width: 81px" rowspan="7">
                                                    <asp:Image ID="Image3" runat="server" Height="180px" 
                                                        ImageUrl="~/DailyWage/images/stickman_with_giant_pencil_800_clr_1842.png" 
                                                        Width="150px" />
                                                </td>
                                                <td class="style22" style="width: 82px; height: 13px">
                                                    <asp:Label ID="Label5" runat="server" Text="Job"></asp:Label>
                                                    <asp:Label ID="Label30" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td style="width: 120px; height: 13px">
                                                    <asp:DropDownList ID="ddlJob" runat="server" AppendDataBoundItems="True" 
                                                        AutoPostBack="True" Width="130px" 
                                                        onselectedindexchanged="ddlJob_SelectedIndexChanged">
                                                        <asp:ListItem>---Select---</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="style23" style="width: 120px; height: 13px">
                                                    <asp:Label ID="lblValidationJob" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style22" style="width: 82px; height: 10px">
                                                    </td>
                                                <td style="width: 120px; height: 10px">
                                                    </td>
                                                <td class="style23" style="width: 120px; height: 10px">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style22" style="width: 82px; height: 10px">
                                                    <asp:Label ID="Label32" runat="server" Text="District"></asp:Label>
                                                    <asp:Label ID="Label33" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td style="width: 120px; height: 10px">
                                                    <asp:DropDownList ID="ddlDistrict" runat="server" AppendDataBoundItems="True" 
                                                        AutoPostBack="True" onselectedindexchanged="ddlDistrict_SelectedIndexChanged" 
                                                        Width="130px">
                                                        <asp:ListItem>---Select---</asp:ListItem>
                                                        <asp:ListItem>Alappuzha</asp:ListItem>
                                                        <asp:ListItem>Ernakulam</asp:ListItem>
                                                        <asp:ListItem>Idukki</asp:ListItem>
                                                        <asp:ListItem>Kannur</asp:ListItem>
                                                        <asp:ListItem>Kasargod</asp:ListItem>
                                                        <asp:ListItem>Kollam</asp:ListItem>
                                                        <asp:ListItem>Kottayam</asp:ListItem>
                                                        <asp:ListItem>Kozhikode</asp:ListItem>
                                                        <asp:ListItem>Malappuram</asp:ListItem>
                                                        <asp:ListItem>Palakkad</asp:ListItem>
                                                        <asp:ListItem>Pathanamthitta</asp:ListItem>
                                                        <asp:ListItem>Thiruvanandapuram</asp:ListItem>
                                                        <asp:ListItem>Thrissur</asp:ListItem>
                                                        <asp:ListItem>Wayanad</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="style23" style="width: 120px; height: 10px">
                                                    <asp:Label ID="lblValidationDist" runat="server" ForeColor="Red" 
                                                        Visible="False"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style22" style="width: 82px; height: 10px">
                                                    &nbsp;</td>
                                                <td style="width: 120px; height: 10px">
                                                    &nbsp;</td>
                                                <td class="style23" style="width: 120px; height: 10px">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style22" style="width: 82px; height: 22px">
                                                    <asp:Label ID="Label12" runat="server" Text="Area"></asp:Label>
                                                    <asp:Label ID="Label31" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                </td>
                                                <td style="width: 120px; height: 22px">
                                                    <asp:DropDownList ID="ddlArea" runat="server" AppendDataBoundItems="True" 
                                                        AutoPostBack="True" Width="130px" 
                                                        onselectedindexchanged="ddlArea_SelectedIndexChanged">
                                                        <asp:ListItem>---Select---</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="style23" style="width: 120px; height: 22px">
                                                    <asp:Label ID="lblValidationArea" runat="server" ForeColor="Red" 
                                                        Visible="False"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style22" style="width: 82px; height: 14px">
                                                    </td>
                                                <td style="width: 120px; height: 14px">
                                                    </td>
                                                <td class="style23" style="width: 120px; height: 14px">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style22" style="width: 82px; height: 13px" valign="middle">
                                                    <asp:Label ID="Label13" runat="server" Text="Co-Workers"></asp:Label>
                                                </td>
                                                <td colspan="2" style="height: 13px" valign="middle">
                                                    <asp:Label ID="Label15" runat="server" Text="Male"></asp:Label>
                                                    &nbsp;
                                                    <asp:TextBox ID="txtMaleNo" runat="server" Width="30px">0</asp:TextBox>
                                                    &nbsp;
                                                    <asp:Label ID="Label16" runat="server" Text="    Female    "></asp:Label>
                                                    <asp:TextBox ID="txtFemaleNo" runat="server" Width="30px">0</asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style24" style="width: 81px; height: 8px;">
                                                    </td>
                                                <td class="style24" style="height: 8px">
                                                    </td>
                                                <td style="width: 120px; height: 8px">
                                                    </td>
                                                <td class="style25" style="width: 120px; height: 8px">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style24" style="width: 81px; height: 37px;">
                                                    &nbsp;</td>
                                                <td class="style24" style="height: 37px; width: 82px">
                                                    &nbsp;</td>
                                                <td style="width: 120px; height: 37px">
                                                    <asp:Label ID="Label29" runat="server" ForeColor="Red" Text="* Required Fields"></asp:Label>
                                                </td>
                                                <td class="style25" style="width: 120px; height: 37px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="width: 81px; height: 49px;">
                                                    &nbsp;</td>
                                                <td align="center" colspan="2" style="height: 49px">
                                                    <asp:ImageButton ID="ImgBtnSubmit" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/submit.png" onclick="ImgBtnSubmit_Click" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImgBtnCancel3" runat="server" Height="45px" 
                                                        ImageUrl="~/DailyWage/images/cancel.png" onclick="ImgBtnCancel3_Click" />
                                                </td>
                                                <td class="style23" style="width: 120px; height: 49px">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 568px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 568px">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:MultiView>
                </td>
            </tr>
            <tr>
                <td style="width: 572px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 572px">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </asp:Content>