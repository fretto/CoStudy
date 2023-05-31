using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoStudy.Models
{
    public class Portfolio
    {

        [ForeignKey("User")]
        public string? UserId { get; set; }
        public ApplicationUser? User { get; set; }

        public int SkillId { get; set; }
        public Skill? Skill { get; set; }//label
        public double Scale { get; set; }






        //[ForeignKey("User")]
        //public int UserId { get; set; }








	}
}
