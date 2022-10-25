using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;
namespace FeedBack
{
    public class ClassCon
    {
        public SqlConnection con;

        public void connectionMethod()
        {


            con = new SqlConnection();
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Mo_Connection"].ConnectionString;
            con.Open();
        }
        public void closeconnection()
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }


        }

    }

}

