using Microsoft.AspNetCore.Identity;
using CoStudy.Models.Enums;
using System.ComponentModel.DataAnnotations;

namespace CoStudy.Models
{


    //this class extends from the identity user class, we use it to add customized attributes to the aspnetUsers table
    public class ApplicationUser:IdentityUser
    {

        public string? FirstName { get; set; }
        public string? LastName { get; set; }

        public Major major { get; set; }  
        public string? LinkedIn { get; set; }
        public string? GitHub { get; set; }


        public ICollection<Course>? Courses { get; set; }


    }
}
