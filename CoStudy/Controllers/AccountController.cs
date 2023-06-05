using CoStudy.Data;
using CoStudy.Models;
using CoStudy.Models.ViewModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Text;
using System.Transactions;

namespace CoStudy.Controllers
{
	public class AccountController : Controller
	{

		private UserManager<ApplicationUser> userManager;
		private SignInManager<ApplicationUser> SignInManager;
		private MyDbContext _context;
		private readonly ILogger<HomeController> _logger;
		private readonly HttpClient _httpClient;



		public AccountController(ILogger<HomeController> logger, UserManager<ApplicationUser> _userManager, SignInManager<ApplicationUser> _SignInManager, MyDbContext context)
		{
			userManager = _userManager;
			SignInManager = _SignInManager;
			_context = context;
			_logger = logger;
			_httpClient = new HttpClient();
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
					Major = model.Major //here

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

			if (id == null)
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



			var user = _context.Users
	       .Include(u => u.Portfolios)
		   .ThenInclude(p => p.Skill)
	          .FirstOrDefault(u => u.Id == id);

			if (user == null)
			{
				TempData["warning"] = "Please login or sign up first";

				return RedirectToAction("Index", "Home");

			}
			ViewBag.firstname = user!.FirstName;
			ViewBag.lastname = user.LastName;








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
				Website = user.Website,
				Major=user.Major
				




			};

			//these variables stores all the courses,online courses,books
			var courses = _context.UniCourses.ToList();
			var onlineCourses = _context.OnlineCourses.ToList();
			var books = _context.Books.ToList();
			var skills = _context.Skills.ToList();

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
		public async Task<IActionResult> EditPortfolio( [FromBody] ManagePortfolioDTO model)
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
					//using (TransactionScope scope = new TransactionScope())
					//{
						//using(new Trans)
						user.LinkedIn = model.LinkedIn;
						user.GitHub = model.GitHub;
					user.Major = model.Major;
						//user.Courses_Ids = model.Courses_Ids != null && model.Courses_Ids.Length > 0 ? string.Join(",", model.Courses_Ids) : user.Courses_Ids;
						user.OnlineCourses_Ids = model.OnlineCourses_Ids != null && model.OnlineCourses_Ids.Length > 0 ? string.Join(",", model.OnlineCourses_Ids) : "";
						user.Books_Ids = model.Books_Ids != null && model.Books_Ids.Length > 0 ? string.Join(",", model.Books_Ids)  : "";
						user.Skills_Ids = model.Skills_Ids != null && model.Skills_Ids.Length > 0 ? string.Join(",", model.Skills_Ids): "";
						user.FirstName = model.FirstName;
						user.LastName = model.LastName;
						user.Website = model.Website;
						user.PhoneNumber = model.Phone;

						_context.Update(user);

						foreach (var s in model.SelectedUniCourses)
						{

							s.UserId = model.UserId;

						}
						_context.selectedUniCourses.RemoveRange(_context.selectedUniCourses.Where(c => c.UserId == model.UserId));
						_context.selectedUniCourses.AddRange(model.SelectedUniCourses);





						List<Portfolio> oldportfolio = _context.portfolios.Where(e => e.UserId == user.Id).ToList();
						_context.portfolios.RemoveRange(_context.portfolios.Where(c => c.UserId == model.UserId));


						PythonRequestBody requestBody = new PythonRequestBody
						{
							UserId = user.Id,
							OnlineCoursesIds = user.OnlineCourses_Ids,
							Interests = user.Skills_Ids,
							UniCourses = model.SelectedUniCourses,
							CurrentPortfolio = oldportfolio,
							Books=user.Books_Ids
						};

                        var settings = new JsonSerializerSettings
                        {
                            ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                        };

                        var json = JsonConvert.SerializeObject(requestBody,settings);
						var content = new StringContent(json, Encoding.UTF8, "application/json");

						// todo python url
						var response = await _httpClient.PostAsync("http://127.0.0.1:8000/batool/", content);


						string responseContent = await response.Content.ReadAsStringAsync();

						PythonResponseBody responseBody = JsonConvert.DeserializeObject<PythonResponseBody>(responseContent);

						if (responseBody != null)
						{
							_context.portfolios.AddRange(responseBody.UpdatedPorfolio);
							_context.RecommendedCourses.RemoveRange(_context.RecommendedCourses.Where(r => r.UserId == user.Id));

							var newRecommendedCourses = responseBody.RecommendedCourses.Select((r) => new RecommendedCourses
							{
								UserId = r.UserID,
								Flag = r.Flag,
								OnlineCourseId = r.OnlineCourseId
							}).ToList();

							_context.RecommendedCourses.AddRange(newRecommendedCourses);
						}




						await _context.SaveChangesAsync();

					return Ok();
					}
				}
			//}
			return BadRequest();
		}


		[HttpGet]
		public async Task<IActionResult> RecommendedCourses(string? id)
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

			var recoCourses = _context.RecommendedCourses.Where(u => u.UserId == user.Id).Include(x => x.OnlineCourse).ToList();

			return View(recoCourses);

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
