using H.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace H.Contract
{
    public interface IMathang
    {
        void Add(mathang Mathang);
        void Update(mathang Mathang);
        void Delete(int ID);

        mathang Find(int ID);

        List<mathang> GetMathang();
    }
}
