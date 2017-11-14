<%@ Page Title="Košarica" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" EnableSessionState="True" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 120px;
            font-family: helvetica;
            text-align: right;
            height: 47px;
        }
        .auto-style2 {
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h2>Vaša narudžba: </h2>
    <asp:Label ID="lblNaziv" runat="server" Text="asdf" CssClass="naziv"></asp:Label><br />
    <asp:Label ID="lblCijena" runat="server" Text="asdf" CssClass="cijena"></asp:Label><br />
    <span style="font-family: helvetica">Veličina: </span><asp:Label ID="lblVelicina" runat="server" Text="asdf" CssClass="cijena"></asp:Label><br />
    <asp:Label ID="lblMarka" runat="server" Text="adsf" CssClass="cijena"></asp:Label>
    <asp:Label ID="lblKategorija" runat="server" Text="asdf" CssClass="cijena"></asp:Label><br />
    <asp:Image ID="imgSlika" runat="server" CssClass="imgSlika" Width="285" Height="285" />

    <br />
    <br />
    <br />
    <br />

    <h3>Unesite svoje podatke za dostavu</h3>
    <table>
        <tr>
            <td class="sirinaStupca">Ime: </td>
            <td>
                <asp:TextBox ID="tbIme" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbIme" ErrorMessage="* Ime je obavezno polje." Display="Dynamic" Font-Names="helvetica" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbIme" ErrorMessage="* Ime može sadržavati samo slova." ValidationExpression="[A-Za-z]*(\s[A-Za-z]*)?" Display="Dynamic" Font-Names="helvetica" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="sirinaStupca">Prezime: </td>
            <td>
                <asp:TextBox ID="tbPrezime" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPrezime" ErrorMessage="* Prezime je obavezno polje." Display="Dynamic" Font-Names="helvetica" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbPrezime" ErrorMessage="* Prezime može sadržavati samo slova." ValidationExpression="\D*(\s\D*)?" Display="Dynamic" Font-Names="helvetica" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="sirinaStupca">Adresa: </td>
            <td>
                <asp:TextBox ID="tbAdresa" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbAdresa" ErrorMessage="* Adresa je obavezno polje." Display="Dynamic" Font-Names="helvetica" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
    </table>

    <br />
    <br />

    <asp:Button ID="btnKupi" runat="server" OnClick="btnKupi_Click" CssClass="potvrdi" Width="123px" Text="Potvrdi narudžbu" BackColor="White" BorderColor="#78D4F7" BorderStyle="Solid" BorderWidth="2px" ForeColor="#009CCF"></asp:Button>
    <asp:Button ID="btnCancel" runat="server" PostBackUrl="~/Proizvodi.aspx" CssClass="potvrdi" Width="123px" Text="Otkaži" BackColor="White" BorderColor="#FF4400" BorderStyle="Solid" BorderWidth="2px" ForeColor="#FF3300" CausesValidation="False"></asp:Button>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SHOESHOP_ConnectionString %>" DeleteCommand="DELETE FROM [NARUDZBE] WHERE [ID] = @original_ID AND [PROIZVOD_NAZIV] = @original_PROIZVOD_NAZIV AND (([VELICINA] = @original_VELICINA) OR ([VELICINA] IS NULL AND @original_VELICINA IS NULL)) AND (([CIJENA] = @original_CIJENA) OR ([CIJENA] IS NULL AND @original_CIJENA IS NULL)) AND (([USERNAME] = @original_USERNAME) OR ([USERNAME] IS NULL AND @original_USERNAME IS NULL)) AND (([IME] = @original_IME) OR ([IME] IS NULL AND @original_IME IS NULL)) AND (([PREZIME] = @original_PREZIME) OR ([PREZIME] IS NULL AND @original_PREZIME IS NULL)) AND (([ADRESA] = @original_ADRESA) OR ([ADRESA] IS NULL AND @original_ADRESA IS NULL)) AND (([DATUM] = @original_DATUM) OR ([DATUM] IS NULL AND @original_DATUM IS NULL))" InsertCommand="INSERT INTO [NARUDZBE] ([PROIZVOD_NAZIV], [VELICINA], [CIJENA], [USERNAME], [IME], [PREZIME], [ADRESA], [DATUM]) VALUES (@PROIZVOD_NAZIV, @VELICINA, @CIJENA, @USERNAME, @IME, @PREZIME, @ADRESA, @DATUM)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [PROIZVOD_NAZIV], [VELICINA], [CIJENA], [USERNAME], [IME], [PREZIME], [ADRESA], [DATUM] FROM [NARUDZBE]" UpdateCommand="UPDATE [NARUDZBE] SET [PROIZVOD_NAZIV] = @PROIZVOD_NAZIV, [VELICINA] = @VELICINA, [CIJENA] = @CIJENA, [USERNAME] = @USERNAME, [IME] = @IME, [PREZIME] = @PREZIME, [ADRESA] = @ADRESA, [DATUM] = @DATUM WHERE [ID] = @original_ID AND [PROIZVOD_NAZIV] = @original_PROIZVOD_NAZIV AND (([VELICINA] = @original_VELICINA) OR ([VELICINA] IS NULL AND @original_VELICINA IS NULL)) AND (([CIJENA] = @original_CIJENA) OR ([CIJENA] IS NULL AND @original_CIJENA IS NULL)) AND (([USERNAME] = @original_USERNAME) OR ([USERNAME] IS NULL AND @original_USERNAME IS NULL)) AND (([IME] = @original_IME) OR ([IME] IS NULL AND @original_IME IS NULL)) AND (([PREZIME] = @original_PREZIME) OR ([PREZIME] IS NULL AND @original_PREZIME IS NULL)) AND (([ADRESA] = @original_ADRESA) OR ([ADRESA] IS NULL AND @original_ADRESA IS NULL)) AND (([DATUM] = @original_DATUM) OR ([DATUM] IS NULL AND @original_DATUM IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_PROIZVOD_NAZIV" Type="String" />
            <asp:Parameter Name="original_VELICINA" Type="String" />
            <asp:Parameter Name="original_CIJENA" Type="String" />
            <asp:Parameter Name="original_USERNAME" Type="String" />
            <asp:Parameter Name="original_IME" Type="String" />
            <asp:Parameter Name="original_PREZIME" Type="String" />
            <asp:Parameter Name="original_ADRESA" Type="String" />
            <asp:Parameter DbType="Date" Name="original_DATUM" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PROIZVOD_NAZIV" Type="String" />
            <asp:Parameter Name="VELICINA" Type="String" />
            <asp:Parameter Name="CIJENA" Type="String" />
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="IME" Type="String" />
            <asp:Parameter Name="PREZIME" Type="String" />
            <asp:Parameter Name="ADRESA" Type="String" />
            <asp:Parameter DbType="DateTime" Name="DATUM" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PROIZVOD_NAZIV" Type="String" />
            <asp:Parameter Name="VELICINA" Type="String" />
            <asp:Parameter Name="CIJENA" Type="String" />
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="IME" Type="String" />
            <asp:Parameter Name="PREZIME" Type="String" />
            <asp:Parameter Name="ADRESA" Type="String" />
            <asp:Parameter Name="DATUM" DbType="Date" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_PROIZVOD_NAZIV" Type="String" />
            <asp:Parameter Name="original_VELICINA" Type="String" />
            <asp:Parameter Name="original_CIJENA" Type="String" />
            <asp:Parameter Name="original_USERNAME" Type="String" />
            <asp:Parameter Name="original_IME" Type="String" />
            <asp:Parameter Name="original_PREZIME" Type="String" />
            <asp:Parameter Name="original_ADRESA" Type="String" />
            <asp:Parameter DbType="Date" Name="original_DATUM" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:Label ID="lblError" runat="server" Font-Names="helvetica" ForeColor="Red"></asp:Label>
    
</asp:Content>
