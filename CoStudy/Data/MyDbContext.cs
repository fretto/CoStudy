using CoStudy.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System.Reflection.Emit;
using System.Text.Json;
using System.Text.Json.Serialization;

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
            builder.Entity<SelectedUniCourses>().HasKey(e => new { e.Id });


            //var jsonOptions = new JsonSerializerOptions
            //{
            //    DefaultIgnoreCondition = JsonIgnoreCondition.WhenWritingNull
            //};

            //builder.Entity<Portfolio>()
            //    .Property(p => p.UserId)
            //    .HasConversion(
            //        v => JsonSerializer.Serialize(v, jsonOptions),
            //        v => JsonSerializer.Deserialize<Skill>(v, jsonOptions)
            //    );



        }



        public DbSet<Course> UniCourses { get; set; }   
        public DbSet<Skill> Skills { get; set; }
        public DbSet<OnlineCourse> OnlineCourses { get; set; }
        public DbSet<Book> Books { get; set; } = default!;
		public DbSet<RecommendedCourses> RecommendedCourses { get; set; }
        public DbSet<Portfolio> portfolios { get; set; }
        public DbSet<SelectedUniCourses> selectedUniCourses { get; set; }


    }
}
