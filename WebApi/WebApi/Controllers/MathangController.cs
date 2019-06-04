using H.Contract;
using H.Model;
using H.Service;
using H.Ulitity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApi.Controllers
{ 
        [RoutePrefix("api/Mathang")]

        public class CourseController : ApiController
        {
         HelperBiz helperBiz = new HelperBiz();
            IMathang courseService = new MathangSevices();
            [Route("GetMathang")]
            [HttpGet]
            public IHttpActionResult GetMathang()
            {
                var data = courseService.GetMathang();
                var eventList = (from e in data
                                 select new
                                 {
                                     id = e.idhang,
                                     Tenhang = e.tenhang,
                                     Macongty = e.macongty,
                                     Soluong =e.soluong,
                                     dongia = e.giahang

                                 }).ToList();

                return Ok(eventList);
            }

            [Route("AddMathang")]
            [HttpPost]
            public IHttpActionResult Add(mathang course)
            {
                courseService.Add(course);

                return Ok("Ok");
            }
            [Route("DeleteMathang")]
            [HttpDelete]
            public IHttpActionResult Delete(int id)
            {
                courseService.Delete(id);

                return Ok("Ok");
            }
        }
}
