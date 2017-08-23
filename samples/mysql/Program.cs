using System;
using MySql.Data.Common;
using MySql.Data.MySqlClient;
using System.Security;
using System.Security.Permissions;

namespace mysql
{
    class Program
    {
        static void Main(string[] args)
        {
            DoAssert();

            MySqlConnection cn = new MySqlConnection();
            cn.Open();
        }

        static void DoAssert()
        {
            //PermissionSet permissionSet;// = new PermissionSet(PermissionState.None);
            //permissionSet.Demand();
        }
    }
}
