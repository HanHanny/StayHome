using H.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace H.Contract
{
    public interface IDondathang
    {
        void Add(dondathang Dondathang);
        void Update(dondathang Dondathang);
        void Delete(int ID);

        dondathang Find(int ID);

        List<dondathang> GetCourses();
    }
}
