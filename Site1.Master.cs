using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tree_Trading
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    String usrName = Session["Username"].ToString();
                    UserNameLabel.Text = "Welcome " + usrName.ToString();
                    UserNameLabel.ForeColor = System.Drawing.Color.Wheat;
                }
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}