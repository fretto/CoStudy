using CoStudy.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace CoStudy.Data
{
    public class MyDbContext: IdentityDbContext<ApplicationUser>
    {

       public MyDbContext(DbContextOptions<MyDbContext>options):base(options) { 
 
        

        }



        public DbSet<Course> UniCourses { get; set; }   
        public DbSet<Skill> Skills { get; set; }
        public DbSet<OnlineCourse> OnlineCourses { get; set; }


    }
}
