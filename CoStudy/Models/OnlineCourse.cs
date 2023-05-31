using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoStudy.Models
{


    //this class for online courses
    public class OnlineCourse
    {
        public int OnlineCourseId { get; set; }
        public string? CourseTitle { get; set; }
        public string? CourseDescription { get; set; }
        //public Level level { get; set; }

        //duration_rating

      //  public string? Category { get; set; }//category of every course

        public string? Level { get; set; }

        public int? ReviewCount { get; set; }

        public string? CourseURL { get; set; }  
        //public enum Level
        //{
        //    beginner,
        //    intermediate,
        //    advance

        //}

        public string? Category { get; set; }



    }
}
