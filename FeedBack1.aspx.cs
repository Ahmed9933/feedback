using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using FeedBack;

namespace FeedBack
{
    public partial class FeedBack1 : System.Web.UI.Page
    {
        ClassCon MoCon_obj = new ClassCon();

        public object TextBox2 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_Click(object sender, EventArgs e)
        {
            MoCon_obj.connectionMethod();
            SqlCommand cmd2 = new SqlCommand("Insert into FeedBack2(name,email,phone,subject,message) values ( '" + TxtAnswer1.Text + "','" + TextBox1.Text + "','" + TextBox22.Text + "','" + TextBox3.Text + "','" + TxtNote.Text + "')", MoCon_obj.con);
            cmd2.ExecuteNonQuery();
            lblMassage.Visible = true;
           
            lblMassage.Text = "تم حفظ البيانات بنجاح";
            MoCon_obj.closeconnection();
        }
    }
}
