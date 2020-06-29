using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SportClub
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            DatabaseModel.Class1 obj = new DatabaseModel.Class1();

            DataTable tbl = new DataTable();
            tbl = obj.FetchRecord("select * from LoginTable where UserEmail='" + txtEmail.Text + "' and UserPassword='" + txtPassword.Text + "'");
            if (tbl.Rows.Count > 0) {
                Response.Redirect("Panel.aspx");
            } else{
                screen.InnerHtml = "<script>alert('Try to Login with Correct User Id and Password');</script>";
            }
            txtEmail.Text = "";
            txtPassword.Text = "";
        }
    }
}