namespace CoStudy.Models.ViewModels
{
    public class ContactViewModel
    {
        //this view model will be used for contact info section in the portfolio and then will be mapped
        //to the AspNetUsers table 

        public string? LinkedIn { get; set; }
        public string? GitHub { get; set; }
        public string? Website { get; set; }

    }
}
