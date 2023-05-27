using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CoStudy.Migrations
{
    /// <inheritdoc />
    public partial class @new : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_StudentBooks_AspNetUsers_studentsId",
                table: "StudentBooks");

            migrationBuilder.DropForeignKey(
                name: "FK_StudentBooks_Book_BooksId",
                table: "StudentBooks");

            migrationBuilder.DropForeignKey(
                name: "FK_StudentCourses_AspNetUsers_studentsId",
                table: "StudentCourses");

            migrationBuilder.DropForeignKey(
                name: "FK_StudentCourses_UniCourses_CoursesCourseId",
                table: "StudentCourses");

            migrationBuilder.DropForeignKey(
                name: "FK_StudentOnlineCourses_AspNetUsers_studentsId",
                table: "StudentOnlineCourses");

            migrationBuilder.DropForeignKey(
                name: "FK_StudentOnlineCourses_OnlineCourses_onlineCoursesOnlineCourseId",
                table: "StudentOnlineCourses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_StudentOnlineCourses",
                table: "StudentOnlineCourses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_StudentCourses",
                table: "StudentCourses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_StudentBooks",
                table: "StudentBooks");

            migrationBuilder.RenameTable(
                name: "StudentOnlineCourses",
                newName: "ApplicationUserOnlineCourse");

            migrationBuilder.RenameTable(
                name: "StudentCourses",
                newName: "ApplicationUserCourse");

            migrationBuilder.RenameTable(
                name: "StudentBooks",
                newName: "ApplicationUserBook");

            migrationBuilder.RenameIndex(
                name: "IX_StudentOnlineCourses_studentsId",
                table: "ApplicationUserOnlineCourse",
                newName: "IX_ApplicationUserOnlineCourse_studentsId");

            migrationBuilder.RenameIndex(
                name: "IX_StudentCourses_studentsId",
                table: "ApplicationUserCourse",
                newName: "IX_ApplicationUserCourse_studentsId");

            migrationBuilder.RenameIndex(
                name: "IX_StudentBooks_studentsId",
                table: "ApplicationUserBook",
                newName: "IX_ApplicationUserBook_studentsId");

            migrationBuilder.AddColumn<string>(
                name: "Books_Ids",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Courses_Ids",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "OnlineCourses_Ids",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddPrimaryKey(
                name: "PK_ApplicationUserOnlineCourse",
                table: "ApplicationUserOnlineCourse",
                columns: new[] { "onlineCoursesOnlineCourseId", "studentsId" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_ApplicationUserCourse",
                table: "ApplicationUserCourse",
                columns: new[] { "CoursesCourseId", "studentsId" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_ApplicationUserBook",
                table: "ApplicationUserBook",
                columns: new[] { "BooksId", "studentsId" });

            migrationBuilder.AddForeignKey(
                name: "FK_ApplicationUserBook_AspNetUsers_studentsId",
                table: "ApplicationUserBook",
                column: "studentsId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ApplicationUserBook_Book_BooksId",
                table: "ApplicationUserBook",
                column: "BooksId",
                principalTable: "Book",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

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

            migrationBuilder.AddForeignKey(
                name: "FK_ApplicationUserOnlineCourse_AspNetUsers_studentsId",
                table: "ApplicationUserOnlineCourse",
                column: "studentsId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ApplicationUserOnlineCourse_OnlineCourses_onlineCoursesOnlineCourseId",
                table: "ApplicationUserOnlineCourse",
                column: "onlineCoursesOnlineCourseId",
                principalTable: "OnlineCourses",
                principalColumn: "OnlineCourseId",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ApplicationUserBook_AspNetUsers_studentsId",
                table: "ApplicationUserBook");

            migrationBuilder.DropForeignKey(
                name: "FK_ApplicationUserBook_Book_BooksId",
                table: "ApplicationUserBook");

            migrationBuilder.DropForeignKey(
                name: "FK_ApplicationUserCourse_AspNetUsers_studentsId",
                table: "ApplicationUserCourse");

            migrationBuilder.DropForeignKey(
                name: "FK_ApplicationUserCourse_UniCourses_CoursesCourseId",
                table: "ApplicationUserCourse");

            migrationBuilder.DropForeignKey(
                name: "FK_ApplicationUserOnlineCourse_AspNetUsers_studentsId",
                table: "ApplicationUserOnlineCourse");

            migrationBuilder.DropForeignKey(
                name: "FK_ApplicationUserOnlineCourse_OnlineCourses_onlineCoursesOnlineCourseId",
                table: "ApplicationUserOnlineCourse");

            migrationBuilder.DropPrimaryKey(
                name: "PK_ApplicationUserOnlineCourse",
                table: "ApplicationUserOnlineCourse");

            migrationBuilder.DropPrimaryKey(
                name: "PK_ApplicationUserCourse",
                table: "ApplicationUserCourse");

            migrationBuilder.DropPrimaryKey(
                name: "PK_ApplicationUserBook",
                table: "ApplicationUserBook");

            migrationBuilder.DropColumn(
                name: "Books_Ids",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "Courses_Ids",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "OnlineCourses_Ids",
                table: "AspNetUsers");

            migrationBuilder.RenameTable(
                name: "ApplicationUserOnlineCourse",
                newName: "StudentOnlineCourses");

            migrationBuilder.RenameTable(
                name: "ApplicationUserCourse",
                newName: "StudentCourses");

            migrationBuilder.RenameTable(
                name: "ApplicationUserBook",
                newName: "StudentBooks");

            migrationBuilder.RenameIndex(
                name: "IX_ApplicationUserOnlineCourse_studentsId",
                table: "StudentOnlineCourses",
                newName: "IX_StudentOnlineCourses_studentsId");

            migrationBuilder.RenameIndex(
                name: "IX_ApplicationUserCourse_studentsId",
                table: "StudentCourses",
                newName: "IX_StudentCourses_studentsId");

            migrationBuilder.RenameIndex(
                name: "IX_ApplicationUserBook_studentsId",
                table: "StudentBooks",
                newName: "IX_StudentBooks_studentsId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_StudentOnlineCourses",
                table: "StudentOnlineCourses",
                columns: new[] { "onlineCoursesOnlineCourseId", "studentsId" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_StudentCourses",
                table: "StudentCourses",
                columns: new[] { "CoursesCourseId", "studentsId" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_StudentBooks",
                table: "StudentBooks",
                columns: new[] { "BooksId", "studentsId" });

            migrationBuilder.AddForeignKey(
                name: "FK_StudentBooks_AspNetUsers_studentsId",
                table: "StudentBooks",
                column: "studentsId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_StudentBooks_Book_BooksId",
                table: "StudentBooks",
                column: "BooksId",
                principalTable: "Book",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

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

            migrationBuilder.AddForeignKey(
                name: "FK_StudentOnlineCourses_AspNetUsers_studentsId",
                table: "StudentOnlineCourses",
                column: "studentsId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_StudentOnlineCourses_OnlineCourses_onlineCoursesOnlineCourseId",
                table: "StudentOnlineCourses",
                column: "onlineCoursesOnlineCourseId",
                principalTable: "OnlineCourses",
                principalColumn: "OnlineCourseId",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
