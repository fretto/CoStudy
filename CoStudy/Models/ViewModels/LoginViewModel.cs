using System.ComponentModel.DataAnnotations;

namespace CoStudy.Models.ViewModels
{
    public class LoginViewModel
    {


        [Required(ErrorMessage ="Email is required")]
        [Display(Name ="Email Address")]
        public string? Email { get; set; }
        [Required(ErrorMessage = "Password is required")]
        [DataType(DataType.Password)]
        public string? Password { get; set; }



    }
}
