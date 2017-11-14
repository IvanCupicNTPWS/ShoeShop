<%@ Page Title="Promjena lozinke" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Password_Change.aspx.cs" Inherits="App_User_Password_Change" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Promjena lozinke</h1>
    <asp:ChangePassword ID="ChangePassword1" runat="server" ContinueDestinationPageUrl="~/Pocetna.aspx" Font-Names="helvetica" NewPasswordLabelText="Nova lozinka:" NewPasswordRegularExpressionErrorMessage="Molimo unesite novu lozinku." PasswordLabelText="Lozinka:" PasswordRequiredErrorMessage="Lozinka je obavezna." ValidatorTextStyle-CssClass="crvena" InstructionTextStyle-CssClass="crvena" SuccessText="Vaša lozinka je promijenjena!" SuccessTitleText="Uspješna promjena lozinke" UserNameRequiredErrorMessage="Korisničko ime je obavezno." UserNameLabelText="Korisničko ime:" NewPasswordRequiredErrorMessage="Nova lozinka je obavezna." ChangePasswordButtonText="Promjena lozinke" ChangePasswordFailureText="Lozinka ili nova lozinka neispravne. Minimalna duljina nove lozinke: {0}. Minimalno ne alfanumeričkih znakova obavezno: {1}." ChangePasswordTitleText="Promjena lozinke" ConfirmNewPasswordLabelText="Potvrdi novu lozinku:" ConfirmPasswordCompareErrorMessage="Potvrdi novu kozinku mora odgovarati unesenoj lozinci." ConfirmPasswordRequiredErrorMessage="Potvrdi novu lozinku je obavezno polje." CancelButtonText="Otkaži" CancelDestinationPageUrl="~/Pocetna.aspx" ContinueButtonText="Nastavak" CancelButtonStyle-BorderStyle="Solid" CancelButtonStyle-CssClass="btnCancel" ChangePasswordButtonStyle-CssClass="btnPovratak" CancelButtonStyle-BorderWidth="2" CancelButtonStyle-BackColor="White" CancelButtonStyle-ForeColor="#FF3300" CancelButtonStyle-BorderColor="#FF4400" FailureTextStyle-ForeColor="Red" InstructionTextStyle-ForeColor="Red">
        <CancelButtonStyle BackColor="White" BorderColor="#FF4400" BorderWidth="2px" BorderStyle="Solid" CssClass="btnCancel" ForeColor="#FF3300"></CancelButtonStyle>

        <ChangePasswordButtonStyle CssClass="btnPovratak"></ChangePasswordButtonStyle>

        <ContinueButtonStyle CssClass="btnPovratak" />

        <InstructionTextStyle ForeColor="Red"></InstructionTextStyle>

<ValidatorTextStyle CssClass="crvena"></ValidatorTextStyle>
    </asp:ChangePassword>
</asp:Content>

