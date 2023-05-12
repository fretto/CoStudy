using Microsoft.AspNetCore.Mvc;

namespace CoStudy.Areas.Adminstrator.Controllers
{
    [Area("Adminstrator")]
    public class DashboardController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
