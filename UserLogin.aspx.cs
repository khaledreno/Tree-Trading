using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Tree_Trading
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginLabel.Text = "Please Login";
            LoginLabel.Visible = true;
        }

        public void s()
        {
       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Username = UsernameBox.Text.Trim();
            String Password = PasswordBox.Text.Trim();
            try
            {
               
                DateTime dateOfBirth;
                //if (DateTime.TryParseExact(Date, "MM/dd/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out dateOfBirth))

                //string formattedDate = dateOfBirth.ToString("yyyy/MM/dd"); // Convert to MySQL date format
                string query = "Select count(1) from users where Username=@User AND password=@Pass";

                using (MySqlConnection connection = new MySqlConnection("Server=127.0.0.1;Port=3306;Database=products;User=root;Password=2580;"))
                {
                    connection.Open();

                    using (MySqlCommand cmd = new MySqlCommand(query, connection))
                    {
                        // Set parameter values
                        cmd.Parameters.AddWithValue("@User", Username );
                        cmd.Parameters.AddWithValue("@Pass",Password );
                        //cmd.ExecuteNonQuery();

                        int count = Convert.ToInt32(cmd.ExecuteScalar());
                        if (count == 1)
                        {
                            Session["Username"] = Username;
                            LoginLabel.Text = "login Success";
                            LoginLabel.ForeColor = System.Drawing.Color.Green;
                            Response.Redirect("SpotDealsPage.aspx");
                            


                        }
                        else
                        {
                            LoginLabel.Text = "login failed";
                            LoginLabel.ForeColor = System.Drawing.Color.Red;

                        }
                    }
                }


            }
            catch (MySqlException ex)
            {
                // Handle any exceptions that occur during the connection.
                Console.WriteLine("Error: " + ex.Message);
                LoginLabel.Text = "Connection failed";

            }
        }
    }
    }
