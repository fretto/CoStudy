using CoStudy.Data;
using CoStudy.Models;
using CoStudy.Models.ViewModels;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.DotNet.MSIdentity.Shared;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Security.Policy;
using System.Text;

namespace CoStudy.Controllers
{
    public class AccountController : Controller
    {

        private UserManager<ApplicationUser> userManager;
        private SignInManager<ApplicationUser> SignInManager;
        private MyDbContext _context;
        private readonly ILogger<HomeController> _logger;
        private readonly HttpClient? _httpClient;


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
        public async Task<IActionResult> Portfolio(string? id)
        {

            if (id==null)
            {

                TempData["warning"] = "*Please login or sign up first";

                return RedirectToAction("Index", "Home");


            }

            var userr = await userManager.FindByIdAsync(id);

            if (userr == null)
            {
                TempData["warning"] = "Please login or sign up first";

                return RedirectToAction("Index", "Home");

            }



            var user = await _context.Users.FirstOrDefaultAsync(u => u.Id == id);
            if (user == null)
            {
                TempData["warning"] = "Please login or sign up first";

                return RedirectToAction("Index", "Home");

            }
            ViewBag.firstname = user!.FirstName;
            ViewBag.lastname = user.LastName;


            // ViewBag.courses = user!.Courses!.ToList();


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
            var books = _context.Books.ToList();
            var skills=_context.Skills.ToList();

            model.Courses = courses;
            model.OnlineCourses = onlineCourses;
            model.Books = books;
            model.Skills = skills;





            model.Courses_Ids = !string.IsNullOrEmpty(user.Courses_Ids) ? Array.ConvertAll(user.Courses_Ids.Split(","), int.Parse) : new int[0];
            model.OnlineCourses_Ids = !string.IsNullOrEmpty(user.OnlineCourses_Ids) ? Array.ConvertAll(user.OnlineCourses_Ids.Split(","), int.Parse) : new int[0];
            model.Books_Ids = !string.IsNullOrEmpty(user.Books_Ids) ? Array.ConvertAll(user.Books_Ids.Split(","), int.Parse) : new int[0];
            model.Skills_Ids = !string.IsNullOrEmpty(user.Skills_Ids) ? Array.ConvertAll(user.Skills_Ids.Split(","), int.Parse) : new int[0];

            //search in the all courses for courses that have the same course Id
            model.SelectedCourses = courses.Where(c => model.Courses_Ids.Contains(c.CourseId)).ToList();
            model.SelectedOnlineCourses = onlineCourses.Where(c => model.OnlineCourses_Ids.Contains(c.OnlineCourseId)).ToList();
            model.SelectedBooks = books.Where(c => model.Books_Ids.Contains(c.Id)).ToList();
            model.SelectedSkills = skills.Where(c => model.Skills_Ids.Contains(c.SkillId)).ToList();








            return View(model);


        }


        [HttpPost]
        //[Route("Account/EditPortfolio")]
        public async Task<IActionResult> EditPortfolio(ManagePortfolioDTO model)
        {

            if (ModelState.IsValid)
            {

                if (model.UserId == null)
                {
                    return BadRequest();
                }

                var user = await userManager.FindByIdAsync(model.UserId);


                if (user != null)
                {

                    user.LinkedIn = model.LinkedIn;
                    user.GitHub = model.GitHub;
                    user.Courses_Ids = model.Courses_Ids != null && model.Courses_Ids.Length > 0 ? string.Join(",", model.Courses_Ids) : user.Courses_Ids;
                    user.OnlineCourses_Ids = model.OnlineCourses_Ids != null && model.OnlineCourses_Ids.Length > 0 ? string.Join(",", model.OnlineCourses_Ids) + "," + user.OnlineCourses_Ids : user.OnlineCourses_Ids;
                    user.Books_Ids = model.Books_Ids != null && model.Books_Ids.Length > 0 ? string.Join(",", model.Books_Ids)+","+user.Books_Ids : user.Books_Ids;
                    user.Skills_Ids = model.Skills_Ids != null && model.Skills_Ids.Length > 0 ? string.Join(",", model.Skills_Ids) + "," + user.Skills_Ids : user.Skills_Ids;
                    user.FirstName = model.FirstName;
                    user.LastName = model.LastName;
                    user.Website = model.Website;
                    user.PhoneNumber = model.Phone;


                    List<SelectedUniCourses> selected = new List<SelectedUniCourses>();
                    selected.Add(new SelectedUniCourses { UserId = "226e8c95-b7b2-4fca-aa14-acbb476f1021", CourseId = 2, Grade = "A+" });
                    selected.Add(new SelectedUniCourses { UserId = "226e8c95-b7b2-4fca-aa14-acbb476f1021", CourseId = 5, Grade = "C+" });

                    _context.selectedUniCourses.RemoveRange(_context.selectedUniCourses.Where(c => c.UserId == model.UserId));

                    _context.selectedUniCourses.AddRange(selected);



                    _context.Update(user);
                    await _context.SaveChangesAsync();

                    //void private method

                    //i willput the values into a body of a api request then recieves the
                    //api response with a body containing the recommended courses Id's and save them in the user table
                    //



                    //to retieve the portfolio for specific user
                    List<Portfolio> portfolio=_context.portfolios.Where(e=>e.UserId==user.Id).ToList();




                    



                    //List<Portfolio> CurrentPortfolio = new List<Portfolio>();
                    //CurrentPortfolio.Add(new Portfolio { SkillId = 2, Scale = 0.5 });
                    //CurrentPortfolio.Add(new Portfolio { SkillId = 5, Scale = 0.8 });




                    //the data sent in the json
                    var requestData = new
                    {
                        UserId=user.Id,
                        UniCourses=selected,

                        //list of university course+grade
                       // CoursesIds = user.Courses_Ids,
                        OnlineCoursesIds = user.OnlineCourses_Ids,
                        CurrentPortfolio=portfolio,

                        Interests=user.Skills_Ids

                    };


                    var json = JsonConvert.SerializeObject(requestData);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");


                    ///////////////handling the response 
                   
                    var _httpClient = new HttpClient();

                    // var response = await _httpClient.PostAsync("", content);


                    //var responseContent = await response.Content.ReadAsStringAsync();

                    string jsonResponse = @"
{
  ""UpdatedPorfolio"": [
    {
      ""UserId"": ""da52becc-32c2-4eb0-a3bc-447d5abd7098"",
      ""SkillId"": 2,
      ""Scale"": 0.8
    },
    // ... other portfolio objects
  ],
  ""RecommendedCourses"": [
    {
      ""UserId"": ""da52becc-32c2-4eb0-a3bc-447d5abd7098"",
      ""OnlineCourseId"": 53,
      ""Flag"": 0
    },
    // ... other recommended course objects
  ]
}";



                    dynamic responseObj = JsonConvert.DeserializeObject(jsonResponse);
                    List<Portfolio> portfolios = JsonConvert.DeserializeObject<List<Portfolio>>(responseObj["UpdatedPorfolio"].ToString());
                    List<RecommendedCourses> recommendedCourses = JsonConvert.DeserializeObject<List<RecommendedCourses>>(responseObj["RecommendedCourses"].ToString());


                     foreach(Portfolio port in portfolios)
                    {

                        user.Portfolios.Add(port);
                    }



                    return Ok(recommendedCourses);


                  //return RedirectToAction("Portfolio", "Account", new { id = model.UserId});






                }

            }
            return View(model);


        }



        public async Task<IActionResult> RecommendedCourses(string? id)
        {

            if(id == null)
            {

                return RedirectToAction("Index", "Home");

            }

            var user = await userManager.FindByIdAsync(id);

            if(user== null) {
				return RedirectToAction("Index", "Home");


			}

            var recoCourses = _context.RecommendedCourses.Where(u => u.UserId == user.Id).Include(x => x.OnlineCourse).ToList();

            return View(recoCourses);

        }


        [HttpGet("/courses")]//endpoint
        public async Task<IActionResult> YourEndpoint()
        {
            var user = await userManager.FindByEmailAsync("ahmad@yahoo.com");

            if (user == null)
            {
                return BadRequest();
            }
            else
            {

                return Ok(user.Courses_Ids);

            }
        }

        //test to consume
        [HttpGet]
        public IActionResult consume()
        {

            var _httpClient = new HttpClient();
            HttpResponseMessage response = _httpClient.GetAsync("http://127.0.0.1:8000/batool/").Result;

            if (response.IsSuccessStatusCode)
            {


                string result = response.Content.ReadAsStringAsync().Result;
                return Ok(result);


            }
            return BadRequest();


        }

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
