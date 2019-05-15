using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace OVS.DataAccessLayer
{
    public class ConnectionClass
    {
        public static String ConnectionString
        {
            get { return ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString; }
        }

    }

}