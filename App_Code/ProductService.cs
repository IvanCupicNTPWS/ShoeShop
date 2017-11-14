using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Products;

namespace WebServicesDemo
{

    /// <summary>
    /// Summary description for ProductService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class ProductService : System.Web.Services.WebService
    {

        public ProductService()
        {

            //Uncomment the following line if using designed components 
            //InitializeComponent(); 
        }

        [WebMethod]
        public static Product GetProductById(int ID)
        {
            string cs = ConfigurationManager.ConnectionStrings["SHOESHOP_ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetProizvodi", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameter = new SqlParameter("@ID", ID);
                cmd.Parameters.Add(parameter);

                Product product = new Product();

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    product.ProductID = Convert.ToInt32(reader["ID"]);
                    product.Naziv = reader["NAZIV"].ToString();
                    product.Slika = reader["SLIKA"].ToString();
                    product.Cijena = reader["CIJENA"].ToString();
                    product.Kategorija = reader["KATEGORIJA"].ToString();
                    product.Marka = reader["MARKA"].ToString();
                }

                return product;
            }
        }

    }
}