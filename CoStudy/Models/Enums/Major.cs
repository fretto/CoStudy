using System.ComponentModel.DataAnnotations;

namespace CoStudy.Models.Enums
{
    public enum Major
    {

       
            [Display(Name = "Computer Science")]
            CS,
            [Display(Name = "Business Information Technology")]

            BIT,
            [Display(Name = "Computer Information Systems")]

            CIS,
            [Display(Name = "Artificial Intelligence")]

            AI,
            [Display(Name = "Data Science")]

            DS
        
    }
}
