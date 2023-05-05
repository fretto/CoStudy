using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CoStudy.Migrations
{
    /// <inheritdoc />
    public partial class fluent : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ApplicationUserCourse_AspNetUsers_studentsId",
                table: "ApplicationUserCourse");

            migrationBuilder.DropForeignKey(
                name: "FK_ApplicationUserCourse_UniCourses_CoursesCourseId",
                table: "ApplicationUserCourse");

            migrationBuilder.DropPrimaryKey(
                name: "PK_ApplicationUserCourse",
                table: "ApplicationUserCourse");

            migrationBuilder.RenameTable(
                name: "ApplicationUserCourse",
                newName: "StudentCourses");

            migrationBuilder.RenameIndex(
                name: "IX_ApplicationUserCourse_studentsId",
                table: "StudentCourses",
                newName: "IX_StudentCourses_studentsId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_StudentCourses",
                table: "StudentCourses",
                columns: new[] { "CoursesCourseId", "studentsId" });

            migrationBuilder.AddForeignKey(
                name: "FK_StudentCourses_AspNetUsers_studentsId",
                table: "StudentCourses",
                column: "studentsId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_StudentCourses_UniCourses_CoursesCourseId",
                table: "StudentCourses",
                column: "CoursesCourseId",
                principalTable: "UniCourses",
                principalColumn: "CourseId",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_StudentCourses_AspNetUsers_studentsId",
                table: "StudentCourses");

            migrationBuilder.DropForeignKey(
                name: "FK_StudentCourses_UniCourses_CoursesCourseId",
                table: "StudentCourses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_StudentCourses",
                table: "StudentCourses");

            migrationBuilder.RenameTable(
                name: "StudentCourses",
                newName: "ApplicationUserCourse");

            migrationBuilder.RenameIndex(
                name: "IX_StudentCourses_studentsId",
                table: "ApplicationUserCourse",
                newName: "IX_ApplicationUserCourse_studentsId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_ApplicationUserCourse",
                table: "ApplicationUserCourse",
                columns: new[] { "CoursesCourseId", "studentsId" });

            migrationBuilder.AddForeignKey(
                name: "FK_ApplicationUserCourse_AspNetUsers_studentsId",
                table: "ApplicationUserCourse",
                column: "studentsId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ApplicationUserCourse_UniCourses_CoursesCourseId",
                table: "ApplicationUserCourse",
                column: "CoursesCourseId",
                principalTable: "UniCourses",
                principalColumn: "CourseId",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
