using Products;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class onama : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(txtProductID.Text);
            txtNaziv.Text = "pozvano";
            Product proizvod = WebServicesDemo.ProductService.GetProductById(id);

            txtNaziv.Text = proizvod.Naziv;
            txtSlika.Text = proizvod.Slika;
            txtCijena.Text = proizvod.Cijena;
            txtKategorija.Text = proizvod.Kategorija;
            txtMarka.Text = proizvod.Marka;
        }
        catch(Exception)
        {
            txtNaziv.Text = "";
            txtSlika.Text = "";
            txtCijena.Text = "";
            txtKategorija.Text = "";
            txtMarka.Text = "";
        }
    }
}