using CoStudy.Data;
using CoStudy.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace CoStudy.Controllers
{


    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private MyDbContext _context;

        public HomeController(ILogger<HomeController> logger, MyDbContext context)
        {
            _logger = logger;
            _context = context;
        }




        public IActionResult AllCourses1(string? Search_Data,int pg=1) {
            //this view displayes all the online courses we have

            var courses=new List<OnlineCourse>();

            if (Search_Data == null)
            {
                courses = _context.OnlineCourses.ToList();

            }
            else
            {
                courses = _context.OnlineCourses.Where(x => x.CourseTitle!.ToUpper().Contains(Search_Data.ToUpper()) || x.CourseDescription!.ToUpper().Contains(Search_Data.ToUpper())).ToList();
            }
            ///// pagination
            
            const int pageSize = 15;
            int count = courses.Count();
            var page = new Page(count, pg, pageSize);
            int skip = (pg - 1) * pageSize;
            var data=courses.Skip(skip).Take(page.PageSize).ToList();
            this.ViewBag.Page = page;

            return View(data);
        }



        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }


        
    }
}