using System.ComponentModel.DataAnnotations;

namespace CoStudy.Models.ViewModels
{
    public class ForgotPasswordViewModel
    {
        [EmailAddress]
        [Required(ErrorMessage ="this field is required")]
        public string? Email { get; set; }
    }
}
