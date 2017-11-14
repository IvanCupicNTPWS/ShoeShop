<%@ Page Title="Proizvodi" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Proizvodi.aspx.cs" Inherits="Proizvodi" EnableSessionState="True" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Proizvodi</h1>
    <p>Odaberite kategoriju: <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" DataSourceID="SqlDataSource1" DataTextField="KATEGORIJA" DataValueField="KATEGORIJA" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></p>
    <p>Odaberite veličinu: <asp:DropDownList ID="ddlVelicina" runat="server" DataSourceID="SqlDataSource3" DataTextField="VELICINA" DataValueField="VELICINA" AppendDataBoundItems="true">
                                <asp:ListItem Text="" Value="" />
                           </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlVelicina" ErrorMessage="* Odaberite veličinu" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SHOESHOP_ConnectionString %>" SelectCommand="SELECT [VELICINA] FROM [VELICINA]"></asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SHOESHOP_ConnectionString %>" SelectCommand="SELECT DISTINCT [KATEGORIJA] FROM [PROIZVODI] ORDER BY [KATEGORIJA] DESC"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" GroupItemCount="3">
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceHolderContainer" runat="server">
                            <tr id="groupPlaceholder" runat="server"></tr>
                                
                        </table>
                    </td>
                </tr>
            </table>
            <br /><br />
            <div class="navSredina">
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="6">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="false"
                            ShowNextPageButton="false" />
                        <asp:NumericPagerField ButtonType="Link" NumericButtonCssClass="dataPager" CurrentPageLabelCssClass="dataPagerCurrent" />
                        <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="false" ShowLastPageButton="false" ShowPreviousPageButton = "false" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <GroupTemplate>
            <tr id="itemPlaceHolderContainer" runat="server">
                <td id="itemPlaceHolder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <ItemTemplate>
            <div class="lijevi">
                <asp:Image ID="imgSlika" runat="server" ImageUrl='<%# Bind("SLIKA", "Images/Shoes/{0}") %>' CssClass="slikeProizvoda" />
            </div>
            <div class="desni">
                <asp:Label ID="lblNaziv" runat="server" Text='<%# Bind("NAZIV") %>' CssClass="naziv" />
                <br />
                <asp:Label ID="lblCijena" runat="server" Text='<%# Bind("CIJENA", "{0:C}") %>' CssClass="cijena" />
                <br />
                <asp:Label ID="lblMarka" runat="server" Text='<%# Bind("MARKA") %>' CssClass="marka" ForeColor="#666666" />
                <br />
                <asp:Button ID="btnCart" runat="server" OnClick="btnCart_Click" CssClass="naruci" Width="60px" Text="Naruči" BackColor="White"></asp:Button>
            </div>
            
        </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SHOESHOP_ConnectionString %>" SelectCommand="SELECT [NAZIV], [SLIKA], [CIJENA], [MARKA] FROM [PROIZVODI] WHERE ([KATEGORIJA] = @KATEGORIJA)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="KATEGORIJA" PropertyName="SelectedValue" Type="String"/>
            </SelectParameters>
        </asp:SqlDataSource>
        
</asp:Content>

