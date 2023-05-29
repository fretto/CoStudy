using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CoStudy.Migrations
{
    /// <inheritdoc />
    public partial class noManytoMnayerty : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Book_Skills_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "Book");

            migrationBuilder.DropForeignKey(
                name: "FK_OnlineCourses_Skills_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "OnlineCourses");

            migrationBuilder.DropForeignKey(
                name: "FK_UniCourses_Skills_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "UniCourses");

            migrationBuilder.DropIndex(
                name: "IX_UniCourses_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "UniCourses");

            migrationBuilder.DropIndex(
                name: "IX_OnlineCourses_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "OnlineCourses");

            migrationBuilder.DropIndex(
                name: "IX_Book_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "Book");

            migrationBuilder.DropColumn(
                name: "PortfolioSkillId",
                table: "UniCourses");

            migrationBuilder.DropColumn(
                name: "PortfolioSkillName",
                table: "UniCourses");

            migrationBuilder.DropColumn(
                name: "PortfolioUserId",
                table: "UniCourses");

            migrationBuilder.DropColumn(
                name: "PortfolioSkillId",
                table: "OnlineCourses");

            migrationBuilder.DropColumn(
                name: "PortfolioSkillName",
                table: "OnlineCourses");

            migrationBuilder.DropColumn(
                name: "PortfolioUserId",
                table: "OnlineCourses");

            migrationBuilder.DropColumn(
                name: "PortfolioSkillId",
                table: "Book");

            migrationBuilder.DropColumn(
                name: "PortfolioSkillName",
                table: "Book");

            migrationBuilder.DropColumn(
                name: "PortfolioUserId",
                table: "Book");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "PortfolioSkillId",
                table: "UniCourses",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PortfolioSkillName",
                table: "UniCourses",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "PortfolioUserId",
                table: "UniCourses",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "PortfolioSkillId",
                table: "OnlineCourses",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PortfolioSkillName",
                table: "OnlineCourses",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "PortfolioUserId",
                table: "OnlineCourses",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "PortfolioSkillId",
                table: "Book",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PortfolioSkillName",
                table: "Book",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "PortfolioUserId",
                table: "Book",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_UniCourses_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "UniCourses",
                columns: new[] { "PortfolioSkillId", "PortfolioSkillName", "PortfolioUserId" });

            migrationBuilder.CreateIndex(
                name: "IX_OnlineCourses_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "OnlineCourses",
                columns: new[] { "PortfolioSkillId", "PortfolioSkillName", "PortfolioUserId" });

            migrationBuilder.CreateIndex(
                name: "IX_Book_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "Book",
                columns: new[] { "PortfolioSkillId", "PortfolioSkillName", "PortfolioUserId" });

            migrationBuilder.AddForeignKey(
                name: "FK_Book_Skills_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "Book",
                columns: new[] { "PortfolioSkillId", "PortfolioSkillName", "PortfolioUserId" },
                principalTable: "Skills",
                principalColumns: new[] { "SkillId", "SkillName", "UserId" });

            migrationBuilder.AddForeignKey(
                name: "FK_OnlineCourses_Skills_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "OnlineCourses",
                columns: new[] { "PortfolioSkillId", "PortfolioSkillName", "PortfolioUserId" },
                principalTable: "Skills",
                principalColumns: new[] { "SkillId", "SkillName", "UserId" });

            migrationBuilder.AddForeignKey(
                name: "FK_UniCourses_Skills_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "UniCourses",
                columns: new[] { "PortfolioSkillId", "PortfolioSkillName", "PortfolioUserId" },
                principalTable: "Skills",
                principalColumns: new[] { "SkillId", "SkillName", "UserId" });
        }
    }
}
