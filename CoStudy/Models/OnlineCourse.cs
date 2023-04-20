using Microsoft.EntityFrameworkCore;

namespace CoStudy.Models
{


    //this class for online courses
    public class OnlineCourse
    {
        public int OnlineCourseId { get; set; }
        public string? CourseTitle { get; set; }
        public string? CourseDescription { get; set; }
        public Level level { get; set; }

        //duration_rating
        public int ReviewCount { get; set; }

        public string? CourseURL { get; set; }  
        public enum Level
        {
            beginner,
            intermediate,
            advance

        }




    }
}
