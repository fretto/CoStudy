using Microsoft.EntityFrameworkCore;

namespace CoStudy.Models
{


    //this class for online courses
    public class OnlineCourse
    {
        public int OnlineCourseId { get; set; }
        public string? CourseName { get; set; }    
        public string? CourseURL { get; set; }  
        public string? CourseDescription { get; set; }



    }
}
