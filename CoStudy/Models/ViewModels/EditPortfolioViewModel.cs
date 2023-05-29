using CoStudy.Models.Enums;

namespace CoStudy.Models.ViewModels
{
	public class EditPortfolioViewModel
	{

        public string? UserId { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }

        public Major major { get; set; }
        public string? LinkedIn { get; set; }
        public string? GitHub { get; set; }
        public string? Website { get; set; }
        public string? Phone { get; set; }



        //drop down list

        public List<Course>? Courses { get; set; }
        public List<OnlineCourse>? OnlineCourses { get; set; }
        public List<Book>? Books { get; set; }


        public int[]? Courses_Ids { get; set; } 
        public int[]? OnlineCourses_Ids { get; set; } 
        public int[]? Books_Ids { get; set; }



        public List<Course>? SelectedCourses { get; set; }
        public List<OnlineCourse>? SelectedOnlineCourses { get; set; }
        public List<Book>? SelectedBooks { get; set; }

    }
    public class ManagePortfolioDTO
    {
        public string? UserId { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        
        public int MajorId { get; set; }
        public string? LinkedIn { get; set; }
        public string? GitHub { get; set; }
        public string? Website { get; set; }

        public string? Phone { get; set; }
        public int[]? Courses_Ids { get; set; }
        public int[]? OnlineCourses_Ids { get; set; }
        public int[]? Books_Ids { get; set; }
    }
}
