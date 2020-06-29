using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportClub
{
    public partial class Events : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {

            DatabaseModel.Class1 obj = new DatabaseModel.Class1();
            obj.SimpleQuery("insert into EventTable values ('" + txtName.Text + "','" + txtDuration.Text + "','" + txtStartDate.Text + "','" + txtEndDate.Text + "','"+txtBudget.Text+"')");

            txtBudget.Text = "";
            txtDuration.Text = "";
            txtEndDate.Text = "";
            txtStartDate.Text = "";
            txtName.Text = "";

            screen.InnerHtml = "<script>alert('Event    is Registered '); </script>";

        }
    }
}