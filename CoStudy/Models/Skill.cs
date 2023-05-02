namespace CoStudy.Models
{
    public class Skill
    {

        public int SkillId { get; set; }
        public string? SkillName { get; set; }

        public ICollection<Course>? Courses { get; set; }
		public ICollection<Book>? Books { get; set; }
        public ICollection<OnlineCourse> onlineCourses { get; set; }

	}
}
