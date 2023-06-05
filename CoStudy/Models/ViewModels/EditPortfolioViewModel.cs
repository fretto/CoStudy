using CoStudy.Models.Enums;

namespace CoStudy.Models.ViewModels
{
	public class EditPortfolioViewModel
	{

		public string? UserId { get; set; }
		public string? FirstName { get; set; }
		public string? LastName { get; set; }
		// public string? UserName { get; set; }

		public string? Major { get; set; }
		public string? LinkedIn { get; set; }
		public string? GitHub { get; set; }
		public string? Website { get; set; }
		public string? Phone { get; set; }



		//drop down list

		public List<Course>? Courses { get; set; }
		public List<OnlineCourse>? OnlineCourses { get; set; }
		public List<Book>? Books { get; set; }
		public List<Skill>? Skills { get; set; }


		public int[]? Courses_Ids { get; set; }
		public int[]? OnlineCourses_Ids { get; set; }
		public int[]? Books_Ids { get; set; }
		public int[]? Skills_Ids { get; set; }



		public List<Course>? SelectedCourses { get; set; }
		public List<OnlineCourse>? SelectedOnlineCourses { get; set; }
		public List<Book>? SelectedBooks { get; set; }
		public List<Skill>? SelectedSkills { get; set; }



		public List<SelectedUniCourses>? selectedUniCourses { get; set; }



	}
	public class ManagePortfolioDTO
	{
		public string? UserId { get; set; }
		public string? FirstName { get; set; }
		public string? LastName { get; set; }
		//  public string? UserName { get; set; }


		public string? Major { get; set; }
		public string? LinkedIn { get; set; }
		public string? GitHub { get; set; }
		public string? Website { get; set; }

		public string? Phone { get; set; }
		public int[]? Courses_Ids { get; set; }
		public int[]? OnlineCourses_Ids { get; set; }
		public int[]? Books_Ids { get; set; }
		public int[]? Skills_Ids { get; set; }

		public List<SelectedUniCourses> SelectedUniCourses { get; set; }

		//
	}

	public class PythonRecommendedCoursesRes
	{
		public string UserID { get; set; } = "";
		public int OnlineCourseId { get; set; }
		public bool Flag { get; set; }
	}
	public class PythonRequestBody
	{
		public string? UserId { get; set; }
		public List<SelectedUniCourses> UniCourses { get; set; } = new List<SelectedUniCourses>();
		public string OnlineCoursesIds { get; set; } = "";
		public List<Portfolio> CurrentPortfolio { get; set; } = new List<Portfolio>();
		public string Interests { get; set; } = "";

		public string Books { get; set; } = "";

	}

	public class PythonResponseBody
	{
		public List<Portfolio> UpdatedPorfolio { get; set; } = new List<Portfolio>();
		public List<PythonRecommendedCoursesRes> RecommendedCourses { get; set; } = new List<PythonRecommendedCoursesRes>();
	}
}
