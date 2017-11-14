<%@ Page Title="Upravljanje" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="App_Admin_Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Uređivanje podataka iz baze</h2>
    <p>Uređivanje proizvoda: </p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Names="helvetica">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CausesValidation="False" ShowInsertButton="False" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="NAZIV" HeaderText="NAZIV" SortExpression="NAZIV" />
            <asp:BoundField DataField="SLIKA" HeaderText="SLIKA" SortExpression="SLIKA" />
            <asp:BoundField DataField="CIJENA" HeaderText="CIJENA" SortExpression="CIJENA" />
            <asp:BoundField DataField="KATEGORIJA" HeaderText="KATEGORIJA" SortExpression="KATEGORIJA" />
            <asp:BoundField DataField="MARKA" HeaderText="MARKA" SortExpression="MARKA" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SHOESHOP_ConnectionString %>" DeleteCommand="DELETE FROM [PROIZVODI] WHERE [ID] = @original_ID AND [NAZIV] = @original_NAZIV AND (([SLIKA] = @original_SLIKA) OR ([SLIKA] IS NULL AND @original_SLIKA IS NULL)) AND (([CIJENA] = @original_CIJENA) OR ([CIJENA] IS NULL AND @original_CIJENA IS NULL)) AND (([KATEGORIJA] = @original_KATEGORIJA) OR ([KATEGORIJA] IS NULL AND @original_KATEGORIJA IS NULL)) AND (([MARKA] = @original_MARKA) OR ([MARKA] IS NULL AND @original_MARKA IS NULL))" InsertCommand="INSERT INTO [PROIZVODI] ([NAZIV], [SLIKA], [CIJENA], [KATEGORIJA], [MARKA]) VALUES (@NAZIV, @SLIKA, @CIJENA, @KATEGORIJA, @MARKA)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PROIZVODI]" UpdateCommand="UPDATE [PROIZVODI] SET [NAZIV] = @NAZIV, [SLIKA] = @SLIKA, [CIJENA] = @CIJENA, [KATEGORIJA] = @KATEGORIJA, [MARKA] = @MARKA WHERE [ID] = @original_ID AND [NAZIV] = @original_NAZIV AND (([SLIKA] = @original_SLIKA) OR ([SLIKA] IS NULL AND @original_SLIKA IS NULL)) AND (([CIJENA] = @original_CIJENA) OR ([CIJENA] IS NULL AND @original_CIJENA IS NULL)) AND (([KATEGORIJA] = @original_KATEGORIJA) OR ([KATEGORIJA] IS NULL AND @original_KATEGORIJA IS NULL)) AND (([MARKA] = @original_MARKA) OR ([MARKA] IS NULL AND @original_MARKA IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_NAZIV" Type="String" />
            <asp:Parameter Name="original_SLIKA" Type="String" />
            <asp:Parameter Name="original_CIJENA" Type="Double" />
            <asp:Parameter Name="original_KATEGORIJA" Type="String" />
            <asp:Parameter Name="original_MARKA" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NAZIV" Type="String" />
            <asp:Parameter Name="SLIKA" Type="String" />
            <asp:Parameter Name="CIJENA" Type="Double" />
            <asp:Parameter Name="KATEGORIJA" Type="String" />
            <asp:Parameter Name="MARKA" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAZIV" Type="String" />
            <asp:Parameter Name="SLIKA" Type="String" />
            <asp:Parameter Name="CIJENA" Type="Double" />
            <asp:Parameter Name="KATEGORIJA" Type="String" />
            <asp:Parameter Name="MARKA" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_NAZIV" Type="String" />
            <asp:Parameter Name="original_SLIKA" Type="String" />
            <asp:Parameter Name="original_CIJENA" Type="Double" />
            <asp:Parameter Name="original_KATEGORIJA" Type="String" />
            <asp:Parameter Name="original_MARKA" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <br />

    <p>Za kreiranje novog proizvoda unesi podatke i klikni na gumb.</p>
    <asp:Label ID="lblError" runat="server" EnableViewState="False" Font-Names="helvetica" ForeColor="Red"></asp:Label>
    
    <table>
        <tr>
            <td class="sirinaStupca">Naziv: </td>
            <td><asp:TextBox ID="tbNaziv" runat="server" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbNaziv" Display="Dynamic" ErrorMessage="* Naziv je obavezno polje." Font-Names="helvetica" ForeColor="Red" ValidationGroup="proizvod"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="sirinaStupca">Slika: </td>
            <td><asp:TextBox ID="tbSlika" runat="server" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbSlika" Display="Dynamic" ErrorMessage="* Slika je obavezno polje." Font-Names="helvetica" ForeColor="Red" ValidationGroup="proizvod"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbSlika" Display="Dynamic" ErrorMessage="* Slika mora biti u formatu primjer.jpg, dozvoljeni formati su: .jpg, .png i .gif." Font-Names="helvetica" ForeColor="Red" ValidationExpression="(\w+.jpg)|(\w+.png)|(\w+.gif)" ValidationGroup="proizvod"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="sirinaStupca">Cijena: </td>
            <td><asp:TextBox ID="tbCijena" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbCijena" Display="Dynamic" ErrorMessage="* Cijena je obavezno polje." Font-Names="helvetica" ForeColor="Red" ValidationGroup="proizvod"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbCijena" Display="Dynamic" ErrorMessage="* Cijena mora biti u formatu 1234,56" Font-Names="helvetica" ForeColor="Red" ValidationExpression="\d{2,5},\d{2}" ValidationGroup="proizvod"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="sirinaStupca">Kategorija: </td>
            <td>
                <asp:TextBox ID="tbKategorija" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbKategorija" Display="Dynamic" ErrorMessage="* Kategorija je obavezno polje." Font-Names="helvetica" ForeColor="Red" ValidationGroup="proizvod"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="sirinaStupca">Marka: </td>
            <td><asp:TextBox ID="tbMarka" runat="server" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbMarka" Display="Dynamic" ErrorMessage="* Marka je obavezno polje." Font-Names="helvetica" ForeColor="Red" ValidationGroup="proizvod"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <asp:Button ID="btnDodaj" runat="server" Text="Unesi podatke u bazu" OnClick="btnDodaj_Click" ValidationGroup="proizvod" CssClass="btnPovratak"/>

    <br /><br /><br /><hr /><br />

    <p>Pregled narudžbi: </p>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" Font-Names="helvetica" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="PROIZVOD_NAZIV" HeaderText="PROIZVOD_NAZIV" SortExpression="PROIZVOD_NAZIV" />
            <asp:BoundField DataField="VELICINA" HeaderText="VELICINA" SortExpression="VELICINA" />
            <asp:BoundField DataField="CIJENA" HeaderText="CIJENA" SortExpression="CIJENA" />
            <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
            <asp:BoundField DataField="IME" HeaderText="IME" SortExpression="IME" />
            <asp:BoundField DataField="PREZIME" HeaderText="PREZIME" SortExpression="PREZIME" />
            <asp:BoundField DataField="ADRESA" HeaderText="ADRESA" SortExpression="ADRESA" />
            <asp:BoundField DataField="DATUM" HeaderText="DATUM" SortExpression="DATUM" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SHOESHOP_ConnectionString %>" DeleteCommand="DELETE FROM [NARUDZBE] WHERE [ID] = @original_ID AND [PROIZVOD_NAZIV] = @original_PROIZVOD_NAZIV AND (([VELICINA] = @original_VELICINA) OR ([VELICINA] IS NULL AND @original_VELICINA IS NULL)) AND (([CIJENA] = @original_CIJENA) OR ([CIJENA] IS NULL AND @original_CIJENA IS NULL)) AND (([USERNAME] = @original_USERNAME) OR ([USERNAME] IS NULL AND @original_USERNAME IS NULL)) AND (([IME] = @original_IME) OR ([IME] IS NULL AND @original_IME IS NULL)) AND (([PREZIME] = @original_PREZIME) OR ([PREZIME] IS NULL AND @original_PREZIME IS NULL)) AND (([ADRESA] = @original_ADRESA) OR ([ADRESA] IS NULL AND @original_ADRESA IS NULL)) AND (([DATUM] = @original_DATUM) OR ([DATUM] IS NULL AND @original_DATUM IS NULL))" InsertCommand="INSERT INTO [NARUDZBE] ([PROIZVOD_NAZIV], [VELICINA], [CIJENA], [USERNAME], [IME], [PREZIME], [ADRESA], [DATUM]) VALUES (@PROIZVOD_NAZIV, @VELICINA, @CIJENA, @USERNAME, @IME, @PREZIME, @ADRESA, @DATUM)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [PROIZVOD_NAZIV], [VELICINA], [CIJENA], [USERNAME], [IME], [PREZIME], [ADRESA], [DATUM] FROM [NARUDZBE]" UpdateCommand="UPDATE [NARUDZBE] SET [PROIZVOD_NAZIV] = @PROIZVOD_NAZIV, [VELICINA] = @VELICINA, [CIJENA] = @CIJENA, [USERNAME] = @USERNAME, [IME] = @IME, [PREZIME] = @PREZIME, [ADRESA] = @ADRESA, [DATUM] = @DATUM WHERE [ID] = @original_ID AND [PROIZVOD_NAZIV] = @original_PROIZVOD_NAZIV AND (([VELICINA] = @original_VELICINA) OR ([VELICINA] IS NULL AND @original_VELICINA IS NULL)) AND (([CIJENA] = @original_CIJENA) OR ([CIJENA] IS NULL AND @original_CIJENA IS NULL)) AND (([USERNAME] = @original_USERNAME) OR ([USERNAME] IS NULL AND @original_USERNAME IS NULL)) AND (([IME] = @original_IME) OR ([IME] IS NULL AND @original_IME IS NULL)) AND (([PREZIME] = @original_PREZIME) OR ([PREZIME] IS NULL AND @original_PREZIME IS NULL)) AND (([ADRESA] = @original_ADRESA) OR ([ADRESA] IS NULL AND @original_ADRESA IS NULL)) AND (([DATUM] = @original_DATUM) OR ([DATUM] IS NULL AND @original_DATUM IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_PROIZVOD_NAZIV" Type="String" />
            <asp:Parameter Name="original_VELICINA" Type="String" />
            <asp:Parameter Name="original_CIJENA" Type="String" />
            <asp:Parameter Name="original_USERNAME" Type="String" />
            <asp:Parameter Name="original_IME" Type="String" />
            <asp:Parameter Name="original_PREZIME" Type="String" />
            <asp:Parameter Name="original_ADRESA" Type="String" />
            <asp:Parameter Name="original_DATUM" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PROIZVOD_NAZIV" Type="String" />
            <asp:Parameter Name="VELICINA" Type="String" />
            <asp:Parameter Name="CIJENA" Type="String" />
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="IME" Type="String" />
            <asp:Parameter Name="PREZIME" Type="String" />
            <asp:Parameter Name="ADRESA" Type="String" />
            <asp:Parameter Name="DATUM" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PROIZVOD_NAZIV" Type="String" />
            <asp:Parameter Name="VELICINA" Type="String" />
            <asp:Parameter Name="CIJENA" Type="String" />
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="IME" Type="String" />
            <asp:Parameter Name="PREZIME" Type="String" />
            <asp:Parameter Name="ADRESA" Type="String" />
            <asp:Parameter Name="DATUM" Type="DateTime" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_PROIZVOD_NAZIV" Type="String" />
            <asp:Parameter Name="original_VELICINA" Type="String" />
            <asp:Parameter Name="original_CIJENA" Type="String" />
            <asp:Parameter Name="original_USERNAME" Type="String" />
            <asp:Parameter Name="original_IME" Type="String" />
            <asp:Parameter Name="original_PREZIME" Type="String" />
            <asp:Parameter Name="original_ADRESA" Type="String" />
            <asp:Parameter Name="original_DATUM" Type="DateTime" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

