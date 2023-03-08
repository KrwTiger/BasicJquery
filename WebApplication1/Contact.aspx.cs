using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbNomal.Text = DateTime.Now.ToString();
            lbX.Text = DateTime.Now.ToString();
            lbY.Text = DateTime.Now.ToString();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = TextBox1.Text + "  Hi";

        }
       
    }
}