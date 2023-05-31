using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoStudy.Models
{
    public class RecommendedCourses
    {

        [ForeignKey("User")]
        public string? UserId { get; set; }

        public ApplicationUser? User { get; set; }

        public int OnlineCourseId { get; set; }
        public OnlineCourse? OnlineCourse { get; set; }



        public bool Flag { get;set;}



    }
}
