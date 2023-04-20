namespace CoStudy.Models
{

    //uni courses
    public class Course
    {

        public int CourseId { get; set; }
        public string? CourseName { get; set; }

        public string? Description { get; set; }



        public ICollection<Skill>? Skills { get; set; }

    }
}
