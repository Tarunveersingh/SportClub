using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportClub
{
    public partial class Player : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            DatabaseModel.Class1 obj = new DatabaseModel.Class1();
            obj.SimpleQuery("insert into Player values ('"+txtName.Text+"','"+txtContact.Text+"','"+txtAddress.Text+"','"+txtGame.Text+"')");

            txtAddress.Text = "";
            txtContact.Text = "";
            txtGame.Text = "";
            txtName.Text = "";

            screen.InnerHtml = "<script>alert('Player is Registered '); </script>";
        }
    }
}