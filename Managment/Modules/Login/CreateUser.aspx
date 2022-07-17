<%@ Page Language="VB" MasterPageFile="~/Managment/Modules/Login/Managment.master" AutoEventWireup="false" CodeFile="CreateUser.aspx.vb" Inherits="Managment_Modules_Login_CreateUser" title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <%@ Register assembly="MSCaptcha" namespace="MSCaptcha" tagprefix="cc1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<style type="text/css">
        .style9
        {
            width: 100%;
        }
        .style10
        {
            text-align: right;
        }
        .style11
        {
            width: 100px;
            text-align: right;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="style9">
        <tr>
            <td>
<asp:CreateUserWizard ID="CU" runat="server" 
                    AnswerRequiredErrorMessage="پاسخ امنیتی باید کامل گردد" 
                    CompleteSuccessText="کاربر مورد نظر با موفقیت به ثبت رسیده است" 
                    ConfirmPasswordCompareErrorMessage="کلمه عبور با تکرار آن مطابقت ندارد" 
                    ConfirmPasswordRequiredErrorMessage="تکرار کلمه عبور با کامل گردد" 
                    ContinueButtonText="ایجاد حساب کاربری دیگر" 
                    ContinueDestinationPageUrl="~/Managment/Modules/Login/CreateUser.aspx" 
                    CreateUserButtonText="مرحله بعدی" 
                    DuplicateEmailErrorMessage="آدرس الکترونکی وارده در قبلا در سیستم به ثبت رسیده است  , دوباره اقدام کنید" 
                    DuplicateUserNameErrorMessage="نام کاربری را عوض کنید" 
                    EmailRegularExpressionErrorMessage="لطفا آدرس الکترونیکی دیگری را وارد نمایید" 
                    EmailRequiredErrorMessage="آدرس الکترونیکی باید تکمیل گردد" 
                    InvalidAnswerErrorMessage="لطفا پاسخ امنیتی را عوض کنید" 
                    InvalidEmailErrorMessage="فرمت آدرس الکترونیکی اشتباه می باشد" 
                    InvalidPasswordErrorMessage="تعداد کارکتر های کلمه عبور صحیح نمی باشد" 
                    InvalidQuestionErrorMessage="سوال امنیتی را عوض کنید" 
                    PasswordRegularExpressionErrorMessage="کلمه عبور را عوض کنید" 
                    PasswordRequiredErrorMessage="کلمه عبور باید کامل گردد" 
                    QuestionRequiredErrorMessage="سوال امنیتی باید کامل گردد" 
                    UnknownErrorMessage="کاربر مورد نظر به ثبت نرسیده است لطفا دوباره اقدام کنید" 
                    UserNameRequiredErrorMessage="نام کاربری باید کامل گردد" Width="612px" 
        style="font-family: Tahoma; font-size: 11px" Font-Names="tahoma" 
        Font-Size="11px">
                    <FinishNavigationTemplate>
                        <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" 
                            CommandName="MovePrevious" Text="مرحله قبل" />
                        <asp:Button ID="FinishButton" runat="server" Text="پایان عملیات" />
                    </FinishNavigationTemplate>
                    <StepNavigationTemplate>
                        <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" 
                            CommandName="MovePrevious" Text="مرحله قبل" />
                        <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" 
                            Text="مرحله بعد" />
                    </StepNavigationTemplate>
                    <StartNavigationTemplate>
                        <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" 
                            Text="Next" />
                    </StartNavigationTemplate>
                    <WizardSteps>
                        <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                            <ContentTemplate>
                                <table border="0" style="font-family: Tahoma; font-size: 12px; width: 401px">
                                    <tr>
                                        <td align="right" class="style19">
                                            نام کاربری<asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                ToolTip="User Name is required." ValidationGroup="CU">*</asp:RequiredFieldValidator>
                                            :</td>
                                        <td class="style11">
                                            <asp:TextBox ID="UserName" runat="server" style="text-align: left"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style19">
                                            کلمه عبور<asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                ControlToValidate="Password" ErrorMessage="Password is required." 
                                                ToolTip="Password is required." ValidationGroup="CU">*</asp:RequiredFieldValidator>
                                            :</td>
                                        <td style="text-align: right">
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="142px" 
                                                style="text-align: left"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style19">
                                            تکرار کلمه عبور<asp:RequiredFieldValidator ID="ConfirmPasswordRequired" 
                                                runat="server" ControlToValidate="ConfirmPassword" 
                                                ErrorMessage="Confirm Password is required." 
                                                ToolTip="Confirm Password is required." ValidationGroup="CU">*</asp:RequiredFieldValidator>
                                            :</td>
                                        <td style="text-align: right">
                                            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" 
                                                Width="142px" style="text-align: left"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style19">
                                            آدرس الکترونیکی<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                                runat="server" ControlToValidate="Email" ErrorMessage="*" 
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                ValidationGroup="CU"></asp:RegularExpressionValidator>
                                            :</td>
                                        <td style="text-align: right">
                                            <asp:TextBox ID="Email" runat="server" style="text-align: left"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style19">
                                            سوال امنیتی<asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                                ControlToValidate="Question" ErrorMessage="Security question is required." 
                                                ToolTip="Security question is required." ValidationGroup="CU">*</asp:RequiredFieldValidator>
                                            :</td>
                                        <td style="text-align: right">
                                            <asp:TextBox ID="Question" runat="server" style="text-align: left"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style19">
                                            پاسخ امنیتی<asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                                ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                                ToolTip="Security answer is required." ValidationGroup="CU">*</asp:RequiredFieldValidator>
                                            :</td>
                                        <td style="text-align: right">
                                            <asp:TextBox ID="Answer" runat="server" style="text-align: left"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style19">
                                            نام:</td>
                                        <td style="text-align: right">
                                            <asp:TextBox ID="fn" runat="server" 
                                                style="text-align: right; font-family: Tahoma;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style19">
                                            نام خانوادگی:</td>
                                        <td style="text-align: right">
                                            <asp:TextBox ID="ln" runat="server" 
                                                style="text-align: right; font-family: Tahoma;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style19">
                                            آدرس الکترونیکی:</td>
                                        <td style="text-align: right">
                                            <asp:TextBox ID="Email_1" runat="server" style="text-align: left"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                ControlToValidate="Email_1" ErrorMessage="*" 
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                ValidationGroup="CU"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="color: Red;" class="style10">
                                            <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                                ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                                Display="Dynamic" ErrorMessage="کلمه عبور و تکرار آن مطابقت ندارند" 
                                                ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="color: Red;" class="style10">
                                            <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="color: Red;" class="style10">
                                            <asp:Label ID="lbl_CodeSecurity" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="color: Red;" class="style10">
                                            <asp:Label ID="lbl_Picture" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:CreateUserWizardStep>
                        <asp:WizardStep ID="WizardStep1" runat="server" Title="SelectPicture" StepType="Step">

                            <table class="style20">
                                <tr>
                                    <td class="style16">
                                        <table class="style9">
                                            <tr>
                                                <td >
                                                    <asp:Label ID="Label3" runat="server" 
                                                        style="font-family: Tahoma; font-size: 11px; color: #FF0000" 
                                                        Text="عکس باید از 70 کلیو بایت کمتر باشد"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style16">
                                        <table class="style9">
                                            <tr>
                                                <td >
                                                    <asp:Label ID="Label2" runat="server" 
                                                        style="font-family: Tahoma; font-size: 11px; color: #FF0000" 
                                                        Text="اگر در این مرحله عکسی انتخاب نشود , عکس پیش فرض لحاظ خواهد شد"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style16">
                                    
                                    
                                    
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <fieldset style="width: 400px">
                                                
                                                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                    </asp:ScriptManager>
                                                    
                                                    <asp:FileUpload ID="FileUpload" runat="server"/>

                                                    <asp:Button ID="UploadButton" runat="server" OnClick="UploadButton_Click" 
                                                      style="font-family: Tahoma; font-size: 11px" Text="ارسال عکس" Width="223px" />
                                                </fieldset>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:PostBackTrigger ControlID="UploadButton" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                        
                                        
                                        
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style16">
                                        <asp:Label ID="lbl_wrong" runat="server" 
                                            style="text-align: center; color: #FF0000; font-family: Tahoma; font-size: 11px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style16">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        
                    <br />

                        </asp:WizardStep>
                        <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                            <ContentTemplate>
                                <table border="0" style="font-size:100%;width:405px;">
                                    <tr>
                                        <td align="center" class="style1">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            <table class="style9">
                                                <tr>
                                                    <td>
                                                        حساب کاربری مورد نظر با موفقیت به ثبت رسید</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table class="style9">
                                                            <tr>
                                                                <td>
                                                                    نام کاربری:</td>
                                                                <td>
                                                                    <asp:Label ID="lbl_username" runat="server" 
                                                                        style="font-weight: 700; color: #FF0000"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            <asp:Image ID="Im" runat="server" Height="225px" Width="191px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="text-align: center">
                                            <asp:Button ID="btn_HaveRoles" runat="server" onclick="btn_HaveRoles_Click" 
                                            
                                                Text="دادن حق دسترسی به این کاربر" style="font-family: Tahoma; font-size: 11px"
                                                 />
                                            <asp:Button ID="btnDone" runat="server" Height="20px" Text="پایان" 
                                                onclick="btnDone_Click" style="font-family: Tahoma; font-size: 11px" />
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:CompleteWizardStep>
                    </WizardSteps>
                </asp:CreateUserWizard>
            </td>
        </tr>
        <tr>
            <td style="text-align: left; background-color: #FFFFFF">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Content/Images/back.gif" />
            </td>
        </tr>
    </table>
    <table class="style21">
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
        </tr>
    </table>


</asp:Content>

