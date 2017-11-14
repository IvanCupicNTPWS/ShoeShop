<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Finish.aspx.cs" Inherits="Finish" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Hvala Vam na kupnji u ShoeShop trgovini!</h1>
    <p>Vaša narudžba je uspješno zaprimljena i poslana na mail.</p>
    <br />
    <asp:Button ID="btnPovratak" runat="server" Text="Povratak na izbor proizvoda" CausesValidation="False" PostBackUrl="~/Proizvodi.aspx" CssClass="btnPovratak" />
</asp:Content>

