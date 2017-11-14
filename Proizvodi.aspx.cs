using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Caching;
using Products;

public partial class Proizvodi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataPager dp =(DataPager)(ListView1.FindControl("DataPager1"));
        dp.SetPageProperties(0, 6, false);

    }


    protected void btnCart_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        ListViewItem lvi = (ListViewItem)btn.NamingContainer;

        Product p = new Product();

        p.Naziv = ((Label)lvi.FindControl("lblNaziv")).Text;
        p.Slika = ((Image)lvi.FindControl("imgSlika")).ImageUrl;
        p.Cijena = ((Label)lvi.FindControl("lblCijena")).Text;
        p.Kategorija = DropDownList1.SelectedValue;
        p.Velicina = ddlVelicina.SelectedValue;
        p.Marka = ((Label)lvi.FindControl("lblMarka")).Text;

        Session["Product"] = p;

        Response.Redirect("~/App_User/Cart.aspx");
    }
}