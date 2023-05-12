﻿using System.ComponentModel.DataAnnotations;

namespace CoStudy.Models.ViewModels
{
    public class LoginViewModel
    {


        [Required(ErrorMessage ="this field is required")]
        [Display(Name ="User Name")]
        public string? UserName { get; set; }
        [EmailAddress]
        [Required(ErrorMessage = "Password is required")]
        [DataType(DataType.Password)]
        public string? Password { get; set; }




    }
}
