using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoStudy.Models
{
    public class Portfolio
    {

        public int SkillId { get; set; }
       
        public int UserId { get; set; }
        public string? SkillName { get; set; }//label
        public double Scale { get; set; }






        //[ForeignKey("User")]
        //public int UserId { get; set; }








	}
}
