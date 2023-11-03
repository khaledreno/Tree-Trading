using HtmlAgilityPack;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tree_Trading
{
    public partial class SpotDealsPage : System.Web.UI.Page
    {
        String elementValue;
        double Rate;
        String item1, item2;

        DateTime dateTimeWithTime = DateTime.Now;

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox5.Text = dateTimeWithTime.ToString();
            //string dateAsString = dateTimeWithTime.ToString("dd-MM-yyyy");

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!TextBox1.Text.IsNullOrWhiteSpace())
            {
                String y = TextBox1.Text;
                TextBox2.Text = y[0].ToString().ToLower();
            }


            item2 = DropList2.SelectedValue;
            item1 = DropList1.SelectedValue;

            Label5.Text = "CCY1 IS " + item1 + " and CCY2 is " + item2;
            PriceLabel.Text = 1.ToString();

            try
            {
                var web = new HtmlWeb();
                HtmlDocument doc1 = web.Load("https://wise.com/us/currency-converter/" + item1.ToLower() + "-to-" + item2.ToLower() + "-rate");
                //HtmlDocument doc1 = web.Load("https://wise.com/us/currency-converter/usd-to-egp-rate");


                // Extract a specific element by its HTML tag and attribute
                elementValue = doc1.DocumentNode.SelectNodes("//*[@id=\"calculator\"]/div/div[2]/div/div/div[2]/div[1]/h3/span[2]/span").First().InnerHtml;
                double.TryParse(elementValue, out Rate);
                PriceLabel.Text = elementValue;
            }

            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Console.WriteLine(ex.InnerException);
            }

            String test = Amount1TextBox.Text;
            double floatNumber = double.Parse(test);
            //float num = 6;
            //String numStr = elementValue.ToString();
            //String outr = $"{test}{numStr}";
            double temp = floatNumber * Rate;
            Amoun2TextBox.Text = temp.ToString();


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

        protected void DropList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}