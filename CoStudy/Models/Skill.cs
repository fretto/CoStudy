namespace CoStudy.Models
{
    public class Skill
    {

        public int SkillId { get; set; }
        public string? SkillName { get; set; }

        public ICollection<Course>? Courses { get; set; }
    }
}
