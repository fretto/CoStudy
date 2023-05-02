using CoStudy.Models;
using CoStudy.Models.ViewModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace CoStudy.Controllers
{
    public class AccountController : Controller
    {

        private UserManager<ApplicationUser> userManager;
        private SignInManager<ApplicationUser>SignInManager;

        public AccountController(UserManager<ApplicationUser> _userManager, SignInManager<ApplicationUser> _SignInManager) {
        
        
        userManager = _userManager;
        SignInManager = _SignInManager;
        
        }


        [HttpGet]
        public ActionResult Register() {

            return View();
        }


        [HttpPost]
        public async Task <ActionResult> Register(RegisterViewModel model)
        {

            if(ModelState.IsValid)
            {

                ApplicationUser user = new ApplicationUser
                {
                    FirstName=model.FirstName!,
                    LastName=model.LastName!,
                    Email = model.Email,
                    UserName = model.UserName

                };

                var result=await userManager.CreateAsync(user,model.Password!);

                if(result.Succeeded)
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
        public  async Task<IActionResult> Login(LoginViewModel model)
        {
            if(ModelState.IsValid) {

                var result = await SignInManager.PasswordSignInAsync(model.UserName!, model.Password!, false, false);

                if (result.Succeeded)
                {

                    return RedirectToAction("Index","Home");


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
        public async Task <IActionResult> Portfolio(string? name)
        {

            var user = await userManager.FindByNameAsync(name!);


            return View(user);


        }




	}
}
