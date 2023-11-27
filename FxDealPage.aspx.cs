using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tree_Trading
{
    public partial class FxDealPage : System.Web.UI.Page
    {

        DateTime dateTimeWithTime = DateTime.Now;
        String Currency1Var, Currency2Var, Amount1TextBox1FS, Amount2TextBox1FS;
        float Amount1TextBox1F, Amount2TextBox1F;
        bool authh;


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["authUsr"] != null && Session["authUsr"] is bool)
            {
                authh = (bool)Session["authUsr"];
            }
            else
            {
                // Handle the case where the variable is not set or not a boolean in Session
            }

            if (!authh)
            {
                Response.Redirect("~/UserLogin.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            string dateAsString = dateTimeWithTime.ToString("dd/MM/yyyy");
            TradeDateTextBox.Text = dateAsString;


            
        }

        protected void Amoun2TextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Amount1TextBox_TextChanged(object sender, EventArgs e)
        {
           

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropList2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Currency2Var = CCY2DropList.SelectedValue;
            Currency1Var = CCY1DropList.SelectedValue;

            PricesLabelStatic.Text = "CCY1 IS " + Currency1Var + " and CCY2 is " + Currency2Var;

            String timetest = TradeDateTextBox.Text.ToString();
            DateTime stringtotime = DateTime.Parse(timetest);
            stringtotime= stringtotime.AddDays(3);
            ValueDateTimeTextBox.Text = stringtotime.ToString();

            Amoun1CCY1.Text = Currency1Var;
            Amoun2CCY1.Text = Currency2Var;
            Amoun1CCY2.Text = Currency1Var;
            Amoun2CCY2.Text = Currency2Var;
        }
        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void InsertBTN_Click(object sender, EventArgs e)
        {
            Amount1TextBox1F = (int.Parse(Amount1TextBox1.Text)) * (float.Parse(SpotRateTextBox.Text));
            Amount1TextBox1FS = Amount1TextBox1F.ToString();
            Amount2TextBox1.Text = Amount1TextBox1FS;


            if (!ForwardRateTextBox.Text.IsNullOrWhiteSpace())
            {
                 Amount2TextBox1F = (int.Parse(Amount1TextBox2.Text)) * (float.Parse(SpotRateTextBox.Text));
                 Amount2TextBox1FS = Amount2TextBox1F.ToString();
                Amount2TextBox2.Text = Amount2TextBox1FS;
            }

            //else if (SpotRateTextBox.Text.IsNullOrWhiteSpace())
            //{
            //     Amount1TextBox1F = (int.Parse(Amount1TextBox1.Text)) * (float.Parse(ForwardRateTextBox.Text));
            //     Amount1TextBox1FS = Amount1TextBox1F.ToString();
            //    Amount2TextBox1.Text = Amount1TextBox1FS;
            //}


        }

        protected void ClearBTN_Click(object sender, EventArgs e)
        {

        }

        protected void SavePriceBTN_Click(object sender, EventArgs e)
        {

        }

        protected void SpotRateChange(object sender, EventArgs e)
        {
            //ForwardRateTextBox.Text = "";
        }

        protected void ForwadRateChange(object sender, EventArgs e)
        {
            //SpotRateTextBox.Text = "";
        }


    }
}