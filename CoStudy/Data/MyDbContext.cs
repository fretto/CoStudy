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

			builder.Entity<Course>()
				.HasMany(p => p.students)
				.WithMany(u => u.Courses)
				.UsingEntity(j =>
				
					j.ToTable("StudentCourses")
				
				);
		}



		public DbSet<Course> UniCourses { get; set; }   
        public DbSet<Skill> Skills { get; set; }
        public DbSet<OnlineCourse> OnlineCourses { get; set; }
        public DbSet<CoStudy.Models.Book> Book { get; set; } = default!;


    }
}
