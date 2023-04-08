using CoStudy.Models.ViewModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace CoStudy.Controllers
{
    public class AccountController : Controller
    {

        private UserManager<IdentityUser> userManager;
        private SignInManager<IdentityUser>SignInManager;

        public AccountController(UserManager<IdentityUser> _userManager, SignInManager<IdentityUser> _SignInManager) {
        
        
        userManager = _userManager;
        SignInManager = _SignInManager;
        
        }



        public ActionResult Register() {

            return View();
        }


        [HttpPost]
        public async Task <ActionResult> Register(RegisterViewModel model)
        {

            if(ModelState.IsValid)
            {

                IdentityUser user = new IdentityUser
                {

                    Email = model.Email,
                    UserName = model.Email


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

        public IActionResult Login()
        {




            return View();
        }


        [HttpPost]
        public  async Task<IActionResult> Login(LoginViewModel model)
        {
            if(ModelState.IsValid) {

                var result = await SignInManager.PasswordSignInAsync(model.Email!, model.Password!, false, false);

                if (result.Succeeded)
                {

                    return RedirectToAction("Index","Home");


                }


                ModelState.AddModelError("", "Invalid Username or Password");
                return View(model);
            }
            return View(model);



        }



        public IActionResult Index()
        {
            return View();
        }
    }
}
