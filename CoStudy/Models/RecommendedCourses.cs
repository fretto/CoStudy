using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoStudy.Models
{
    public class RecommendedCourses
    {

        public int Id {get;set;}

        public int UserId { get; set; }

        public bool Flag { get;set;}



    }
}
