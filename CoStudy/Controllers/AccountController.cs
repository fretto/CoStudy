using CoStudy.Data;
using CoStudy.Models;
using CoStudy.Models.ViewModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System.Collections;
using System.Security.Policy;

namespace CoStudy.Controllers
{
    public class AccountController : Controller
    {

        private UserManager<ApplicationUser> userManager;
        private SignInManager<ApplicationUser> SignInManager;
        private MyDbContext _context;
        private readonly ILogger<HomeController> _logger;


        public AccountController(ILogger<HomeController> logger, UserManager<ApplicationUser> _userManager, SignInManager<ApplicationUser> _SignInManager, MyDbContext context)
        {


            userManager = _userManager;
            SignInManager = _SignInManager;
            _context = context;
            _logger = logger;


        }


        [HttpGet]
        public ActionResult Register()
        {

            return View();
        }


        [HttpPost]
        public async Task<ActionResult> Register(RegisterViewModel model)
        {

            if (ModelState.IsValid)
            {

                ApplicationUser user = new ApplicationUser
                {
                    FirstName = model.FirstName!,
                    LastName = model.LastName!,
                    Email = model.Email,
                    UserName = model.UserName,
                    major = model.major //here

                };

                var result = await userManager.CreateAsync(user, model.Password!);

                if (result.Succeeded)
                {

                    return RedirectToAction("Login");
                }
                foreach (var err in result.Errors)
                {

                    ModelState.AddModelError(err.Code, err.Description);
                }
                return View(model);


            }

            return View(model);

        }

        [HttpGet]
        public IActionResult Login()
        {




            return View();
        }


        [HttpPost]
        public async Task<IActionResult> Login(LoginViewModel model)
        {
            if (ModelState.IsValid)
            {


                var user = await userManager.FindByNameAsync(model.UserNameOrEmail!);

                if (user == null)
                {

                    user = await userManager.FindByEmailAsync(model.UserNameOrEmail!);
                }

                if (user != null)
                {
                    var result = await SignInManager.PasswordSignInAsync(user, model.Password!, false, false);



                    if (result.Succeeded)
                    {

                        return RedirectToAction("Index", "Home");


                    }


                }




                ModelState.AddModelError("", "Invalid Username or Password");
                return View(model);
            }
            return View(model);



        }

        public async Task<IActionResult> Logout()
        {


            await SignInManager.SignOutAsync();
            return RedirectToAction("Index", "Home");

        }



        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public async Task<IActionResult> Portfolio(string? name)
        {

            if (string.IsNullOrEmpty(name))
            {

                TempData["warning"] = "*Please login or sign up first";

                return RedirectToAction("Index", "Home");


            }

            var userr = await userManager.FindByNameAsync(name!);

            if (userr == null)
            {
                TempData["warning"] = "Please login or sign up first";

                return RedirectToAction("Index", "Home");

            }



            var user = await _context.Users.Include(x => x.Courses).FirstOrDefaultAsync(u => u.UserName == name);
            ViewBag.firstname = user!.FirstName;
            ViewBag.lastname = user.LastName;


            ViewBag.courses = user!.Courses!.ToList();


            return View(user);


        }


        [HttpGet]
        public async Task<IActionResult> EditPortfolio(string? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index", "Home");

            }

            var user = await userManager.FindByIdAsync(id);

            if (user == null)
            {
                return RedirectToAction("Index", "Home");
            }


            EditPortfolioViewModel model = new EditPortfolioViewModel
            {

                UserId = user.Id,
                FirstName = user.FirstName,
                LastName = user.LastName,
                GitHub = user.GitHub,
                LinkedIn = user.LinkedIn,
                Website = user.Website





            };

            //these variables stores all the courses,online courses,books
            var courses = _context.UniCourses.ToList();
            var onlineCourses = _context.OnlineCourses.ToList();
            var books = _context.Book.ToList();

            model.Courses = courses;
            model.OnlineCourses = onlineCourses;
            model.Books = books;





            model.Courses_Ids = !string.IsNullOrEmpty(user.Courses_Ids) ? Array.ConvertAll(user.Courses_Ids.Split(","), int.Parse) : new int[0];
            model.OnlineCourses_Ids = !string.IsNullOrEmpty(user.OnlineCourses_Ids) ? Array.ConvertAll(user.OnlineCourses_Ids.Split(","), int.Parse) : new int[0];
            model.Books_Ids = !string.IsNullOrEmpty(user.Books_Ids) ? Array.ConvertAll(user.Books_Ids.Split(","), int.Parse) : new int[0];

            //search in the all courses for courses that have the same course Id
            model.SelectedCourses = courses.Where(c => model.Courses_Ids.Contains(c.CourseId)).ToList();
            model.SelectedOnlineCourses = onlineCourses.Where(c => model.OnlineCourses_Ids.Contains(c.OnlineCourseId)).ToList();
            model.SelectedBooks = books.Where(c => model.Books_Ids.Contains(c.Id)).ToList();








            return View(model);


        }


        [HttpPost]
        public async Task<IActionResult> EditPortfolio([FromBody]ManagePortfolioDTO model)
        {
        
            if (ModelState.IsValid)
            {

                if (model.UserId == null)
                {
                    return RedirectToAction("Index", "Home");
                }

                var user = await userManager.FindByIdAsync(model.UserId);

                if (user != null)
                {

                    user.LinkedIn = model.LinkedIn;
                    user.GitHub = model.GitHub;
                    user.Courses_Ids = model.Courses_Ids != null && model.Courses_Ids.Length > 0 ? string.Join(",", model.Courses_Ids) : user.Courses_Ids;
                    user.OnlineCourses_Ids = model.OnlineCourses_Ids != null && model.OnlineCourses_Ids.Length > 0 ? string.Join(",", model.OnlineCourses_Ids) : user.OnlineCourses_Ids;
                    user.Books_Ids = model.Books_Ids != null && model.Books_Ids.Length > 0 ? string.Join(",", model.Books_Ids) : user.Books_Ids;
                    user.FirstName = model.FirstName;
                    user.LastName = model.LastName;
                    user.Website = model.Website;



                    _context.Update(user);//must update the user to take the new values
                    await _context.SaveChangesAsync();




                }
                return RedirectToAction("Index", "Home");

            }
            return View();




            //     }


            //     [HttpPost]

            //     public async Task<IActionResult> Test()
            //     {


            //         var user = await userManager.FindByNameAsync("AyaZ");

            //         Course course = new Course
            //         {
            //             CourseName = "sql",
            //             Description = "database management",


            //         };

            //         user.Courses.Add(course);

            //         return RedirectToAction("Index", "Home");

            //     }

            //[HttpGet]

            //public IActionResult ForgotPassword()
            //{

            //    return View();

            //}


            //[HttpPost]
            //public async Task<IActionResult> ForgotPassword(ForgotPasswordViewModel model)
            //{

            //    if (ModelState.IsValid)
            //    {


            //        var user = await userManager.FindByEmailAsync(model.Email!);


            //        if (user != null )
            //        {

            //            var token = await userManager.GeneratePasswordResetTokenAsync(user!);



            //            var passwordResetLink = Url.Action("ResetPassword", "Account", new { email = model.Email, token = token }, Request.Scheme);

            //            //_logger.Log(LogLevel.Warning, passwordResetLink);

            //            return View("ForgotPasswordConfirmation");

            //        }

            //        return View("ForgotPasswordConfirmation");


            //    }
            //    return View(model);
            //}
        }
    }
}
