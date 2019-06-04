using H.Contract;
using H.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace H.Service
{
    public class MathangSevices : IMathang
    {
        private ql_banhangEntities dbContext = new ql_banhangEntities();
        public void Add(mathang Mathang)
        {
            try
            {
                dbContext.mathang.Add(Mathang);
                dbContext.SaveChanges();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void Delete(int ID)
        {
            try
            {
                var entity = dbContext.mathang.Where(x => x.idhang == ID).FirstOrDefault();
                dbContext.mathang.Remove(entity);
                dbContext.SaveChanges();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public  mathang Find(int ID)
        {
            var entity = dbContext.mathang.Where(x => x.idhang == ID).FirstOrDefault();
            return entity;
        }

        public List<mathang> GetMathang()
        {
            return dbContext.mathang.ToList();
        }

        public void Update(mathang course)
        {

        }
    }
}
