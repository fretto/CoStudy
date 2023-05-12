﻿using CoStudy.Data;
using CoStudy.Models;
using CoStudy.Models.ViewModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections;

namespace CoStudy.Controllers
{
    public class AccountController : Controller
    {

        private UserManager<ApplicationUser> userManager;
        private SignInManager<ApplicationUser>SignInManager;
        private  MyDbContext _context;
        private readonly ILogger<HomeController> _logger;


        public AccountController(ILogger<HomeController> logger,UserManager<ApplicationUser> _userManager, SignInManager<ApplicationUser> _SignInManager,MyDbContext context) {
        
        
        userManager = _userManager;
        SignInManager = _SignInManager;
            _context = context;
            _logger = logger;


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
                    UserName = model.UserName,
                    major=model.major //here

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



            var user=await _context.Users.Include(x=>x.Courses).FirstOrDefaultAsync(u=>u.UserName==name);
			ViewBag.firstname = user!.FirstName;
			ViewBag.lastname = user.LastName;


			ViewBag.courses = user!.Courses!.ToList();

			return View(user);


        }

        [HttpGet]

        public IActionResult ForgotPassword()
        {

            return View();

        }


        [HttpPost]
        public async Task<IActionResult> ForgotPassword(ForgotPasswordViewModel model)
        {

            if (ModelState.IsValid)
            {


                var user = await userManager.FindByEmailAsync(model.Email!);


                if (user != null )
                {

                    var token = await userManager.GeneratePasswordResetTokenAsync(user!);



                    var passwordResetLink = Url.Action("ResetPassword", "Account", new { email = model.Email, token = token }, Request.Scheme);

                    //_logger.Log(LogLevel.Warning, passwordResetLink);

                    return View("ForgotPasswordConfirmation");

                }

                return View("ForgotPasswordConfirmation");


            }
            return View(model);
        }
        }
    }
