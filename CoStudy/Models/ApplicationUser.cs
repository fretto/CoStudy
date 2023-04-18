using Microsoft.AspNetCore.Identity;

namespace CoStudy.Models
{


    //this class extends from the identity user class, we use it to add customized attributes to the aspnetUsers table
    public class ApplicationUser:IdentityUser
    {

        public string? FirstName { get; set; }
        public string? LastName { get; set; }


    }
}
