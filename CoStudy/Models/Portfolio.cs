using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CoStudy.Models
{
    public class Portfolio
    {

        [ForeignKey("User")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]

        public string? UserId { get; set; }
        public ApplicationUser? User { get; set; }

        public int SkillId { get; set; }
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]

        public Skill? Skill { get; set; }
        public double Scale { get; set; }






        //[ForeignKey("User")]
        //public int UserId { get; set; }








	}
}
