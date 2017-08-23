using System;

namespace NetStandard20Lib
{
    public class TestClass
    {
        public static string Test()
        {
            using (MySql.Data.MySqlClient.MySqlCommand dbCmd = new MySql.Data.MySqlClient.MySqlCommand())
            {

            }
            return "Some Text!";
        }
    }
}
