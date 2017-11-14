using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net.Mail;
using Products;

public partial class Cart : System.Web.UI.Page
{
    public static string GetTimestamp(DateTime value)
    {
        return value.ToString("yyyy-MM-dd hh:mm:ss");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
         // izvlačenje podataka iz sessiona i upisivanje u kontrole na stranici
         if (Session["Product"] != null)
         {
             Product p = new Product();
             p = (Product)Session["Product"];

             lblNaziv.Text = p.Naziv;
             lblCijena.Text = p.Cijena.ToString();
             lblKategorija.Text = p.Kategorija.ToLower();
             lblMarka.Text = p.Marka;
             imgSlika.ImageUrl = "../" + p.Slika;
             lblVelicina.Text = p.Velicina;

         }
    }

    protected void btnKupi_Click(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser(HttpContext.Current.User.Identity.Name);
        string emailAddress = user.Email;

        SmtpClient smtpClient = new SmtpClient("localhost", 25);
        //SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

        smtpClient.Credentials = new System.Net.NetworkCredential("shoeshopstoreinfo@gmail.com", "testnasifra");
        smtpClient.UseDefaultCredentials = true;
        smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtpClient.EnableSsl = false;

        MailMessage mail = new MailMessage();
        //Setting From , To and CC
        mail.From = new MailAddress("shoeshopstoreinfo@gmail.com", "ShoeShop");
        mail.To.Add(new MailAddress(emailAddress));
        mail.Subject = "ShoeShop potvrda o kupnji";
        mail.IsBodyHtml = true;
        mail.Body = "<html><head><meta charset='utf-8'></head><body style='font-family: helvetica'>" +
                    "<h2>Poštovani/a " + tbIme.Text + " " + tbPrezime.Text + "</h2>" +
                    "<p>Zahvaljujemo na Vašoj kupnji i šaljemo potvrdu na mail.</p>" +
                    "<table style='font-family: helvetica'>" +
                        "<tr>" +
                            "<td>Ime: </td>" +
                            "<td>" + tbIme.Text + "</td>" +
                        "</tr>" +
                        "<tr>" +
                            "<td>Prezime: </td>" +
                            "<td>" + tbPrezime.Text + "</td>" +
                        "</tr>" +
                        "<tr>" +
                            "<td>Adresa dostave: </td>" +
                            "<td>" + tbAdresa.Text + "</td>" +
                        "</tr>" +
                        "<tr>" +
                            "<td>Naziv proizvoda: </td>" +
                            "<td>" + lblNaziv.Text + "</td>" +
                        "</tr>" +
                        "<tr>" +
                            "<td>Veličina: </td>" +
                            "<td>" + lblVelicina.Text + "</td>" +
                        "</tr>" +
                        "<tr>" +
                            "<td>Cijena: </td>" +
                            "<td>" + lblCijena.Text + "</td>" +
                        "</tr>" +
                    "</table>" +
                    "<br />" +
                    "<p>Dostava artikla na navedenu adresu u roku 3 radna dana.</p>" +
                    "</body></html>";
        
        try
        {
            smtpClient.Send(mail);
        }
        catch (Exception ex)
        {
            lblError.Text = "Dogodila se pogreška prilikom slanja maila.<br/><br/>" +
                            "Poruka:" + ex.Message;
        }




        // Unos narudžbe u bazu
        string timeStamp = GetTimestamp(DateTime.Now);
        
        SqlDataSource1.InsertParameters["PROIZVOD_NAZIV"].DefaultValue = lblNaziv.Text;
        SqlDataSource1.InsertParameters["VELICINA"].DefaultValue = lblVelicina.Text;
        SqlDataSource1.InsertParameters["CIJENA"].DefaultValue = lblCijena.Text;
        SqlDataSource1.InsertParameters["USERNAME"].DefaultValue = System.Web.HttpContext.Current.User.Identity.Name;
        SqlDataSource1.InsertParameters["IME"].DefaultValue = tbIme.Text;
        SqlDataSource1.InsertParameters["PREZIME"].DefaultValue = tbPrezime.Text;
        SqlDataSource1.InsertParameters["ADRESA"].DefaultValue = tbAdresa.Text;
        SqlDataSource1.InsertParameters["DATUM"].DefaultValue = timeStamp;

        try
        {
            SqlDataSource1.Insert();
            tbIme.Text = "";
            tbPrezime.Text = "";
            tbAdresa.Text = "";
            
        }
        catch (Exception ex)
        {
            lblError.Text = "Dogodila se pogreška u bazi.<br/><br/>" +
                            "Poruka:" + ex.Message;
        }

        Response.Redirect("~/App_User/Finish.aspx");
    }
}