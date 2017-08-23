using Raven.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Net461
{
    public class Class1
    {
        public Class1()
        {
            IDocumentStore store = null;
            var t = new NetStandard2.Class1(store);
            t.Do();
        }
    }
}
