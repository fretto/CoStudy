using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CoStudy.Migrations
{
    /// <inheritdoc />
    public partial class level : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Level",
                table: "OnlineCourses",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Level",
                table: "OnlineCourses");
        }
    }
}
