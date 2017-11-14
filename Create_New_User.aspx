<%@ Page Title="Registracija" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Create_New_User.aspx.cs" Inherits="Create_New_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Napravite račun</h1>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/Pocetna.aspx" AnswerLabelText="Sigurnosni odgovor: " AnswerRequiredErrorMessage="Sigurnosni odgovor je obavezan." CancelButtonText="Otkaži" CompleteSuccessText="Vaš račun je uspješno kreiran!" ValidatorTextStyle-ForeColor="red" ConfirmPasswordCompareErrorMessage="Lozinka i potvrda lozinke se moraju podudarati." ConfirmPasswordLabelText="Potvrdi lozinku: " ConfirmPasswordRequiredErrorMessage="Potvrda lozinke je obavezna." ContinueButtonText="Nastavak" CreateUserButtonText="Kreiraj korisnika" DuplicateUserNameErrorMessage="Molimo unesite drugo korisničko ime." EmailRegularExpressionErrorMessage="Molimo unesite drugi e-mail." EmailRequiredErrorMessage="E-mail je obavezan." FinishCompleteButtonText="Završi" FinishPreviousButtonText="Prethodno" InvalidAnswerErrorMessage="Molimo unesite drugi sigurnosni odgovor." InvalidPasswordErrorMessage="Minimalna duljina lozinke: {0}. Minimalan broj ne alfanumeričkih znakova: {1}." InvalidQuestionErrorMessage="Molimo unesite drugo sigurnosno pitanje." PasswordRegularExpressionErrorMessage="Molimo unesite drugačiju lozinku." PasswordRequiredErrorMessage="Lozinka je obavezna" QuestionLabelText="Sigurnosno pitanje: " QuestionRequiredErrorMessage="Sigurnosno pitanje je obavezno." StartNextButtonText="Sljedeće" UnknownErrorMessage="Vaš račun nije kreiran. Pokušajte ponovo." UserNameLabelText="Korisničko ime: " UserNameRequiredErrorMessage="Korisničko ime je obavezno." Font-Names="helvetica" PasswordLabelText="Lozinka: " EmailLabelText="E-mail: " EmailRegularExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" CancelButtonStyle-CssClass="btnCancel" ContinueButtonStyle-CssClass="btnPovratak" CreateUserButtonStyle-CssClass="btnPovratak">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" Title="Unesi podatke za novi račun">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server" Title="Uspješno" />
        </WizardSteps>
    </asp:CreateUserWizard>
    
</asp:Content>

