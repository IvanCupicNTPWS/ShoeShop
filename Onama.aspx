<%@ Page Title="O nama" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Onama.aspx.cs" Inherits="onama" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>O nama</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam dignissimos autem qui delectus, amet sed minima eius, deserunt tempora, unde, molestias totam alias voluptatem pariatur in! Repellendus quae, explicabo minima voluptas natus. Aperiam in natus consequatur laborum nesciunt ab accusantium quisquam quaerat dicta harum. Veritatis fugit, unde ut quis recusandae.</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam dignissimos autem qui delectus, amet sed minima eius, deserunt tempora, unde, molestias totam alias voluptatem pariatur in! Repellendus quae, explicabo minima voluptas natus. Aperiam in natus consequatur laborum nesciunt ab accusantium quisquam quaerat dicta harum. Veritatis fugit, unde ut quis recusandae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam dignissimos autem qui delectus, amet sed minima eius, deserunt tempora, unde, molestias totam alias voluptatem pariatur in! Repellendus quae, explicabo minima voluptas natus. Aperiam in natus consequatur laborum nesciunt ab accusantium quisquam quaerat dicta harum. Veritatis fugit, unde ut quis recusandae.</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam dignissimos autem qui delectus, amet sed minima eius, deserunt tempora, unde, molestias totam alias voluptatem pariatur in! Repellendus quae, explicabo minima voluptas natus. Aperiam in natus consequatur laborum nesciunt ab accusantium quisquam quaerat dicta harum. Veritatis fugit, unde ut quis recusandae.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam dignissimos autem qui delectus, amet sed minima eius, deserunt tempora, unde, molestias totam alias voluptatem pariatur in! Repellendus quae, explicabo minima voluptas natus. Aperiam in natus consequatur laborum nesciunt ab accusantium quisquam quaerat dicta harum. Veritatis fugit, unde ut quis recusandae.</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam dignissimos autem qui delectus, amet sed minima eius, deserunt tempora, unde, molestias totam alias voluptatem pariatur in! Repellendus quae, explicabo minima voluptas natus. Aperiam in natus consequatur laborum nesciunt ab accusantium quisquam quaerat dicta harum. Veritatis fugit, unde ut quis recusandae.</p>

    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/ProductService.asmx" />
        </Services>
    </asp:ScriptManager>

    <table style="font-family: helvetica">
        <thead><tr><td colspan="2"><b>Pronađite proizvod</b></td></tr></thead>
        <tr>
            <td>Unesite ID: </td>
            <td>
                <asp:TextBox ID="txtProductID" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Pronađi" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>Naziv: </td>
            <td><asp:Label ID="txtNaziv" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Slika:</td>
            <td><asp:Label ID="txtSlika" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Cijena: </td>
            <td><asp:Label ID="txtCijena" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Kategorija: </td>
            <td><asp:Label ID="txtKategorija" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td>Marka: </td>
            <td><asp:Label ID="txtMarka" runat="server"></asp:Label></td>
        </tr>
    </table>

    

</asp:Content>

