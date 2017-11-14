<%@ Page Title="Reset lozinke" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Password_Recovery.aspx.cs" Inherits="Password_Recovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Promijenite lozinku</h1>
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" AnswerRequiredErrorMessage="Odgovor je obavezan." UserNameRequiredErrorMessage="Korisničko ime je obavezno." UserNameTitleText="Zaboravili ste lozinku?" UserNameLabelText="Korisničko ime: " UserNameInstructionText="Unesite svoje korisničko ime da primite lozinku." UserNameFailureText="Nismo u mogućnosti pristupiti Vašim informacijama. Pokušajte ponovo." SuccessText="Lozinka Vam je poslana na e-mail." SubmitButtonText="Pošalji" QuestionLabelText="Pitanje: " QuestionTitleText="Potvrda identiteta" QuestionInstructionText="Odgovorite na sljedeće pitanje da dobijete svoju lozinku." QuestionFailureText="Vaš odgovor nije valjan. Pokušajte ponovo." GeneralFailureText="Vaš pokušaj da obnovite lozinku je neuspješan. pokušajte ponovo." AnswerLabelText="Odgovor: " Font-Names="helvetica" SubmitButtonStyle-CssClass="btnPovratak">
        <SubmitButtonStyle CssClass="btnPovratak"></SubmitButtonStyle>
        <MailDefinition 
            From="shoeshopstoreinfo@gmail.com" 
            Subject="Vaša nova lozinka">
        </MailDefinition>
    </asp:PasswordRecovery>
</asp:Content>

