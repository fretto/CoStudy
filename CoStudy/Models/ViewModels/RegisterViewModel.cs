using CoStudy.Models.Enums;
using System.ComponentModel.DataAnnotations;

namespace CoStudy.Models.ViewModels
{
    public class RegisterViewModel
    {
        [Required(ErrorMessage = "this field is required")]
        [Display(Name = "First Name")]

        public string? FirstName { get; set; }

        [Required(ErrorMessage = "this field is required")]
        [Display(Name = "Last Name")]

        public string? LastName { get; set; }
        [Required(ErrorMessage = "this field is required")]
        [Display(Name = "User Name")]
        public string? UserName { get; set; }


        [EmailAddress]
        [Required(ErrorMessage ="Email is required")]
        [Display(Name ="Email Address")]
        public string? Email { get; set; }


       

        public string Major { get; set; }

		[DataType(DataType.Password)]
		[Required(ErrorMessage = "Password is required")]

		public string? Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name="Confirm Password")]
        [Compare("Password",ErrorMessage ="Passwords do not match")]
        public string? ConfirmPassword { get; set;}


    }
}
