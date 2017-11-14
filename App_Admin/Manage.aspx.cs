using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class App_Admin_Manage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDodaj_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["NAZIV"].DefaultValue = tbNaziv.Text;
        SqlDataSource1.InsertParameters["CIJENA"].DefaultValue = tbCijena.Text;
        SqlDataSource1.InsertParameters["SLIKA"].DefaultValue = tbSlika.Text;
        SqlDataSource1.InsertParameters["KATEGORIJA"].DefaultValue = tbKategorija.Text;
        SqlDataSource1.InsertParameters["MARKA"].DefaultValue = tbMarka.Text;

        try
        {
            SqlDataSource1.Insert();
            tbNaziv.Text = "";
            tbCijena.Text = "";
            tbSlika.Text = "";
            tbKategorija.Text = "";
            tbMarka.Text = "";
        }
        catch(Exception ex)
        {
            lblError.Text = "Dogodila se pogreška u bazi.<br/><br/>" + 
                            "Poruka:" + ex.Message;
        }
    }
}