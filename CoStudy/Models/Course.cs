namespace CoStudy.Models
{
    public class Course
    {

        public int CourseId { get; set; }
        public string? CourseName { get; set; }

        public ICollection<Skill>? Skills { get; set; }

    }
}
