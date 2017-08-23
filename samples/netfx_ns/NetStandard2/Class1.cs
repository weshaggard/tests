using Raven.Client;
using System;

namespace NetStandard2
{
    public class Class1
    {
        public Class1(IDocumentStore _store)
        {
            IDocumentStore store = _store;
        }

        public void Do()
        {

        }
    }

    
}
