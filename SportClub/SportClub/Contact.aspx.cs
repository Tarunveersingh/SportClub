using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportClub
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            DatabaseModel.Class1 obj = new DatabaseModel.Class1();
            String query = "insert into ContactTable values ('"+txtName.Text+"','"+txtEmail.Text+"','"+txtSubject.Text+"','"+txtMsg.Text+"')";

            obj.SimpleQuery(query);
            txtEmail.Text = "";
            txtMsg.Text = "";
            txtName.Text = "";
            txtSubject.Text = "";
            screen.InnerHtml = "<script>alert('Your Message has been sent '); </script>";
        }
    }
}