using CoStudy.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace CoStudy.Data
{
    public class MyDbContext: IdentityDbContext<ApplicationUser>
    {

       public MyDbContext(DbContextOptions<MyDbContext>options):base(options) { 
 
        

        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            
            builder.Entity<RecommendedCourses>().HasKey(e => new { e.OnlineCourseId ,e.UserId});
            builder.Entity<Portfolio>().HasKey(e => new { e.SkillId, e.UserId });




        }



        public DbSet<Course> UniCourses { get; set; }   
        public DbSet<Skill> Skills { get; set; }
        public DbSet<OnlineCourse> OnlineCourses { get; set; }
        public DbSet<Book> Books { get; set; } = default!;
		public DbSet<RecommendedCourses> RecommendedCourses { get; set; }
        public DbSet<Portfolio> portfolios { get; set; }


    }
}
