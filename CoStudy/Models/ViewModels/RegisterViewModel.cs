using System.ComponentModel.DataAnnotations;

namespace CoStudy.Models.ViewModels
{
    public class RegisterViewModel
    {


        [EmailAddress]
        [Required(ErrorMessage ="Email is required")]
        [Display(Name ="Email Address")]
        public string? Email { get; set; }
        [DataType(DataType.Password)]
        [Required(ErrorMessage ="Password is required")]

        public string? Password { get; set; }

        [DataType(DataType.Password)]
        [Compare("Password",ErrorMessage ="Passwords do not match")]
        public string? ConfirmPassword { get; set;}


    }
}
