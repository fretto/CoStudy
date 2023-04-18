﻿using CoStudy.Data;
using CoStudy.Models;
using Microsoft.AspNetCore.Mvc;
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



        [HttpGet]

        public IActionResult AllCourses() {
            //this view displayes all the online courses we have


            return View(_context.OnlineCourses);
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