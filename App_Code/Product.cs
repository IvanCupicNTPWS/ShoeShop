using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Products
{

    /// <summary>
    /// Summary description for Product
    /// </summary>
    public class Product
    {
        public int ProductID { get; set; }

        public string Naziv { get; set; }
        public string Slika { get; set; }
        public string Cijena { get; set; }
        public string Kategorija { get; set; }
        public string Marka { get; set; }
        public string Velicina { get; set; }
    }
}