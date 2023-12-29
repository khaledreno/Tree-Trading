using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
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
        DB1Entites1 db = new DB1Entites1();


        protected void Insert_User(object sender, EventArgs e)
        {
            UsernameBox = UsernameField.Text;
            NameBox = FullnameField.Text;
            EmailBox = EmailField.Text;
            Password1Box = PasswordField.Text;
            Password2Box = PasswordField.Text;
            ActivFlag = ActivCheckBox.Checked;
            int aflag;
            
            if (ActivFlag == true) {
                aflag = 1;
            }
            else
            {
                aflag = 0;

            }

            USER userobj = new USER()
            {
                USERNAME = UsernameBox,
                FULLNAME = FullnameField.Text,
                PASSWORD = PasswordField.Text,
         
                ACTIVEFLAG = aflag,

            };

            if (PasswordField.Text == Password2Field.Text)
            {
                try
                {
                    db.USERS.Add(userobj);
                    db.SaveChanges();
                    Label0.Visible = true;
                    Label0.Text = "User" + UsernameBox + "Created ";
                }
                catch (DbUpdateException ex)
                {

                    Exception innerException = ex;
                    while (innerException != null)
                    {
                        Console.WriteLine(innerException.Message); // Output the inner exception message
                        innerException = innerException.InnerException;
                        Label0.Visible = true;
                        Label0.Text = "failed to save to database";
                    }


                }
            }
            else
            {
                Label0.Visible = true;
                Label0.Text = "Password doesn't match ";
            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = db.USERS.ToList();
            GridView1.DataBind();
        }



        protected void SearchUserId(object sender, EventArgs e)
        {
         
                String Id =  SearchBox.Text;
           

                    var query = from y in db.USERS
                                where y.USERNAME == Id
                                select new { y.USERNAME, y.USERROLE, y.FULLNAME };

                    
                        GridView1.DataSource = query.ToList();
                        GridView1.DataBind();
           
                   }


        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}