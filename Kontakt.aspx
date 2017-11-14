<%@ Page Title="Kontakt" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Kontakt.aspx.cs" Inherits="Kontakt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Kontakt</h1>
    <p>Kontaktirajte nas ako imate pitanja ili prijedloge!</p>
    <br />
    <table>
        <tr>
            <td class="kontaktTablicaLijevo">e-mail: </td>
            <td class="kontaktTablicaDesno">shoeshop@gmail.com</td>
        </tr>
        <tr>
            <td class="kontaktTablicaLijevo">telefon: </td>
            <td class="kontaktTablicaDesno">+385 1 2956-123</td>
        </tr>
        <tr>
            <td class="kontaktTablicaLijevo">fax: </td>
            <td class="kontaktTablicaDesno">+385 1 2956-124</td>
        </tr>
        <tr>
            <td class="kontaktTablicaLijevo">lokacija: </td>
            <td class="kontaktTablicaDesno">Zagrebačka ulica 94, 10040 Zagreb</td>
        </tr>
    </table>
    <br />
    <img src="images/lokacija.jpg" class="lokacijaSlika" />
</asp:Content>

