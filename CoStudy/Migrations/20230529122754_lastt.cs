using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CoStudy.Migrations
{
    /// <inheritdoc />
    public partial class lastt : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Book_AspNetUsers_ApplicationUserId",
                table: "Book");

            migrationBuilder.DropForeignKey(
                name: "FK_OnlineCourses_AspNetUsers_ApplicationUserId",
                table: "OnlineCourses");

            migrationBuilder.DropForeignKey(
                name: "FK_UniCourses_AspNetUsers_ApplicationUserId",
                table: "UniCourses");

            migrationBuilder.DropIndex(
                name: "IX_UniCourses_ApplicationUserId",
                table: "UniCourses");

            migrationBuilder.DropIndex(
                name: "IX_OnlineCourses_ApplicationUserId",
                table: "OnlineCourses");

            migrationBuilder.DropIndex(
                name: "IX_Book_ApplicationUserId",
                table: "Book");

            migrationBuilder.DropColumn(
                name: "ApplicationUserId",
                table: "UniCourses");

            migrationBuilder.DropColumn(
                name: "ApplicationUserId",
                table: "OnlineCourses");

            migrationBuilder.DropColumn(
                name: "ApplicationUserId",
                table: "Book");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "ApplicationUserId",
                table: "UniCourses",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ApplicationUserId",
                table: "OnlineCourses",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ApplicationUserId",
                table: "Book",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_UniCourses_ApplicationUserId",
                table: "UniCourses",
                column: "ApplicationUserId");

            migrationBuilder.CreateIndex(
                name: "IX_OnlineCourses_ApplicationUserId",
                table: "OnlineCourses",
                column: "ApplicationUserId");

            migrationBuilder.CreateIndex(
                name: "IX_Book_ApplicationUserId",
                table: "Book",
                column: "ApplicationUserId");

            migrationBuilder.AddForeignKey(
                name: "FK_Book_AspNetUsers_ApplicationUserId",
                table: "Book",
                column: "ApplicationUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_OnlineCourses_AspNetUsers_ApplicationUserId",
                table: "OnlineCourses",
                column: "ApplicationUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_UniCourses_AspNetUsers_ApplicationUserId",
                table: "UniCourses",
                column: "ApplicationUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");
        }
    }
}
