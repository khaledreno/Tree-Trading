using HtmlAgilityPack;
using Microsoft.Ajax.Utilities;
using MySqlConnector;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tree_Trading
{
    public partial class SpotDealsPage : System.Web.UI.Page
    {
        String elementValue;
        double Rate;
        String Currency1Var, Currency2Var;
        dynamic egpValue;
        DateTime dateTimeWithTime = DateTime.Now;

        protected async void Page_Load2Async(object sender, EventArgs e)
        {
            using (HttpClient client = new HttpClient())
            {
                string apiUrl = $"https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/{Currency1Var}/{Currency2Var}.min.json";



                //https://.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/eur/jpy.json
                HttpResponseMessage response = await client.GetAsync(apiUrl);


                if (response.IsSuccessStatusCode)
                {
                    string json = await response.Content.ReadAsStringAsync();

                    // Deserialize JSON and extract exchange rates
                    string jsonString = json.ToString();

                    // Deserialize the JSON string to a dynamic object
                    dynamic jsonObject = JsonConvert.DeserializeObject(jsonString);

                    // Access the double value using the key "egp"
                     egpValue = jsonObject.egp;

                    // Print the result
                    Console.WriteLine($"The double value for 'egp' is: {egpValue}");

                    // Handle the retrieved data as needed
                    await Console.Out.WriteLineAsync(json);
                    Console.WriteLine(" ");
                    Console.WriteLine("success");
                }
                else
                {
                    Console.WriteLine($"Error: {response.StatusCode}");
                    PriceLabel.Text = "failed to obtain";
                }
            }
        }

        //    protected void Page_Load(object sender, EventArgs e)
        //{
        //    string dateAsString = dateTimeWithTime.ToString("dd/MM/yyyy");
        //    TextBox5.Text = dateAsString;


        //    try
        //    {

        //        Currency2Var = DropList2.SelectedValue;
        //        Currency1Var = DropList1.SelectedValue;

        //        Label5.Text = "CCY1 IS " + Currency1Var + " and CCY2 is " + Currency2Var;
        //        //PriceLabel.Text = Rate.ToString();

        //        var web = new HtmlWeb();
        //        HtmlDocument doc1 = web.Load("https://wise.com/us/currency-converter/" + Currency1Var.ToLower() + "-to-" + Currency2Var.ToLower() + "-rate");
        //        //HtmlDocument doc1 = web.Load("https://wise.com/us/currency-converter/usd-to-egp-rate");


        //        // Extract a specific element by its HTML tag and attribute
        //        elementValue = doc1.DocumentNode.SelectNodes("//*[@id=\"calculator\"]/div/div[2]/div/div/div[2]/div[1]/h3/span[2]/span").First().InnerHtml;
        //        double.TryParse(elementValue, out Rate);
        //        Label5.Text = "CCY1 IS " + Currency1Var + " and CCY2 is " + Currency2Var;
        //        PriceLabel.Text = elementValue;
        //    }

        //    catch (Exception ex)
        //    {
        //        Console.WriteLine(ex.Message);
        //        Console.WriteLine(ex.InnerException);
        //    }

        //}

        protected async void Page_Load(object sender, EventArgs e)
        {
            // Replace these variables with your actual currency codes
            //string Currency1Var = "usd";
            //string Currency2Var = "egp";

            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/UserLogin.aspx",false);
                Context.ApplicationInstance.CompleteRequest();
            }

            Currency2Var = DropList2.SelectedValue.ToLower();
            Currency1Var = DropList1.SelectedValue.ToLower();

             Label5.Text = "CCY1 IS " + Currency1Var + " and CCY2 is " + Currency2Var;

            double egpValue = 0; // Define the variable to store the exchange rate

            using (HttpClient client = new HttpClient())
            {
                string apiUrl = $"https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/{Currency1Var}/{Currency2Var}.min.json";
                try
                {
                    HttpResponseMessage response = await client.GetAsync(apiUrl);

                    if (response.IsSuccessStatusCode)
                    {
                        string json = await response.Content.ReadAsStringAsync();

                        // Deserialize JSON and extract exchange rates
                        string jsonString = json.ToString();

                        // Deserialize the JSON string to a dynamic object
                        //dynamic jsonObject = JsonConvert.DeserializeObject(jsonString);

                        // Access the double value using the key "egp"

                        JObject jsonObject = JObject.Parse(jsonString);

                        egpValue = (double)jsonObject[Currency2Var];

                        // Handle the retrieved data as needed
                        Console.WriteLine($"The double value for 'egp' is: {jsonObject}");

                        // Output the JSON string
                        //Console.WriteLine(json);

                        // Update your UI or perform other actions with the exchange rate
                        PriceLabel.Text = $"Exchange Rate: {egpValue}";
                    }

                    else
                    {
                        Console.WriteLine($"Error: {response.StatusCode}");
                        PriceLabel.Text = "Failed to obtain exchange rate.";
                    }
                }
                catch (Exception ex)
                {
                    PriceLabel.Text = "Failed to obtain exchange rate from exception";

                }
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!TextBox1.Text.IsNullOrWhiteSpace())
            {
                String y = TextBox1.Text;
                TextBox2.Text = y[0].ToString().ToLower();
            }





            if (!Amount1TextBox.Text.IsNullOrWhiteSpace())
            {
                String test = Amount1TextBox.Text;
                double floatNumber = double.Parse(test);
                double temp = floatNumber * Rate;
                Amoun2TextBox.Text = temp.ToString();

            }
            

            //float num = 6;
            //String numStr = elementValue.ToString();
            //String outr = $"{test}{numStr}";


        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            Amount1TextBox.Text = "";
            Amoun2TextBox.Text = "";
            TextBox5.Text = dateTimeWithTime.ToString();


        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Amount1TextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

            //String Date = TextBox5.Text;

            try
            {
                String Cur1 = DropList1.SelectedValue.ToString();
                String Cur2 = DropList2.SelectedValue.ToString();

                DateTime dateOfBirth;
                //if (DateTime.TryParseExact(Date, "MM/dd/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out dateOfBirth))
                
                    //string formattedDate = dateOfBirth.ToString("yyyy/MM/dd"); // Convert to MySQL date format
                    string query = "INSERT INTO prices_history (Currency1,Currency2,Rate) VALUES (@Currency1, @Currency2,@Rate)";

                    using (MySqlConnection connection = new MySqlConnection("Server=127.0.0.1;Port=3306;Database=trading;User=root;Password=2580;"))
                    {
                        connection.Open();

                        using (MySqlCommand cmd = new MySqlCommand(query, connection))
                        {
                            // Set parameter values
                            cmd.Parameters.AddWithValue("@Currency1", Cur1);
                            cmd.Parameters.AddWithValue("@Currency2", Cur2);
                            cmd.Parameters.AddWithValue("@Rate", Rate);

                        //cmd.Parameters.AddWithValue("@Rate", Rate);

                        //cmd.Parameters.AddWithValue("@Gender", Gender);


                        // Execute the query
                        cmd.ExecuteNonQuery();
                        }
                    }

                
            }
            catch (MySqlException ex)
            {
                // Handle any exceptions that occur during the connection.
                Console.WriteLine("Error: " + ex.Message);
            }
        }

        protected void Amoun2TextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {

        }

        protected void DropList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}