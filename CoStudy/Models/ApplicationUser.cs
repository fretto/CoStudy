using Microsoft.AspNetCore.Identity;
using CoStudy.Models.Enums;
using System.ComponentModel.DataAnnotations;

namespace CoStudy.Models
{


    //this class extends from the identity user class, we use it to add customized attributes to the aspnetUsers table
    public class ApplicationUser : IdentityUser
    {

        public string? FirstName { get; set; }
        public string? LastName { get; set; }

        public string? Major { get; set; }

        public string? LinkedIn { get; set; }
        public string? GitHub { get; set; }
        public string? Website { get; set; }


        //for many to many relationships


        //to store the courses id's seperated by commas
        public string Courses_Ids { get; set; } = "";
        public string OnlineCourses_Ids { get; set; } = "";
        public string Books_Ids { get; set; } = "";
        public string Skills_Ids { get; set; } = "";
        // public string Interest { get; set; } = "";

        public List<Portfolio>? Portfolios { get; set; }


        //the returned recommended courses 

        public List<RecommendedCourses>? RecommendedCourses { get; set; }

        //
        public List<SelectedUniCourses>? selectedUniCourses { get; set; }






    }
}