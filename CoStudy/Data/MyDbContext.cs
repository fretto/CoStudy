using CoStudy.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace CoStudy.Data
{
    public class MyDbContext: IdentityDbContext<ApplicationUser>
    {

       public MyDbContext(DbContextOptions<MyDbContext>options):base(options) { 
        
        
        
        
        
        
        
        }

    }
}
