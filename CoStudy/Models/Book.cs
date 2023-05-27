namespace CoStudy.Models
{
	public class Book
	{
		public int Id { get; set; }
		public string? BookTitle { get; set; }

		public string? BookDescription { get; set;}


		public ICollection<Skill>? Skills { get; set; }
        public ICollection<ApplicationUser>? students { get; set; }

    }
}
