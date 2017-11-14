<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Prijavite se</h1>
    <asp:Login ID="Login1" runat="server" 
        CreateUserText="Registriraj se"
        CreateUserUrl="~/Create_New_User.aspx"
        PasswordRecoveryText="Zaboravili ste lozinku"
        PasswordRecoveryUrl="~/Password_Recovery.aspx"
        FailureText="Neispravno korisničko ime ili lozinka" 
        FailureTextStyle-ForeColor="Red" Font-Names="Helvetica" 
        PasswordLabelText="Lozinka:" 
        PasswordRequiredErrorMessage="Lozinka je obavezna" 
        RememberMeText="Zapamti me" 
        UserNameLabelText="Korisničko ime: " 
        UserNameRequiredErrorMessage="Korisničko ime je obavezno." 
        ValidatorTextStyle-ForeColor="Red" 
        DestinationPageUrl="~/Pocetna.aspx" 
        LoginButtonStyle-CssClass="btnPovratak">

<LoginButtonStyle CssClass="btnPovratak"></LoginButtonStyle>

    </asp:Login>
</asp:Content>

