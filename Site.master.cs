using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            LinkButton1.Visible = true;
        else
            LinkButton1.Visible = false;

        if (System.Web.HttpContext.Current.User.Identity.Name == "admin")
            hlManage.Visible = true;
        else
            hlManage.Visible = false;
    }
}
