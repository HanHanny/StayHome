using H.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace H.Contract
{
    public interface IChitietdathang
    {
        void Add(chitietdathang chitiet);
        void Update(chitietdathang chitiet);
        void Delete(int ID);

        chitietdathang Find(int ID);

        List<chitietdathang> GetCourses();

    }
}
