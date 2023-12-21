using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tree_Trading
{

    
    public partial class AdminPanelUsers : System.Web.UI.Page
    {

        String UsernameBox, NameBox, EmailBox, Password1Box, Password2Box, UserRole;
        bool ActivFlag;
        DB1Entities1 db = new DB1Entities1();


        protected void Insert_User(object sender, EventArgs e)
        {
            UsernameBox = UsernameField.Text;
            NameBox = FullnameField.Text;
            EmailBox = EmailField.Text;
            Password1Box = PasswordField.Text;
            Password2Box = PasswordField.Text;
            ActivFlag = ActivCheckBox.Checked;

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

       
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView2.DataSource = db.USERS.ToList();
            GridView2.DataBind();


        }



        protected void SearchUserId(object sender, EventArgs e)
        {
         
                int Id = int.Parse(SearchBox.Text);
           

            if (Id.GetType() == typeof(int))
                {
                    var query = from y in db.USERS
                                where y.USER_ID == Id
                                select new { y.USER_ID, y.USERROLE, y.FULLNAME };

                    
                        GridView2.DataSource = query.ToList();
                        GridView2.DataBind();
                    
                   
                    
                }
           
                   }


        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}