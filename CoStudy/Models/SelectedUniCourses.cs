using System.ComponentModel.DataAnnotations.Schema;

namespace CoStudy.Models
{
    public class SelectedUniCourses
    {

        public int Id {get; set;}

        [ForeignKey("User")]
        public string? UserId { get; set; }

        public ApplicationUser? User { get; set; }

        [ForeignKey("Course")]
        public int CourseId { get; set; }
        public Course? Course { get; set; }  

        public string? Grade { get; set; }

    }
}
