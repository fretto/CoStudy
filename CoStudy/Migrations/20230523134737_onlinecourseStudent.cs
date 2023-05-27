using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CoStudy.Migrations
{
    /// <inheritdoc />
    public partial class onlinecourseStudent : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "StudentOnlineCourses",
                columns: table => new
                {
                    onlineCoursesOnlineCourseId = table.Column<int>(type: "int", nullable: false),
                    studentsId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_StudentOnlineCourses", x => new { x.onlineCoursesOnlineCourseId, x.studentsId });
                    table.ForeignKey(
                        name: "FK_StudentOnlineCourses_AspNetUsers_studentsId",
                        column: x => x.studentsId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_StudentOnlineCourses_OnlineCourses_onlineCoursesOnlineCourseId",
                        column: x => x.onlineCoursesOnlineCourseId,
                        principalTable: "OnlineCourses",
                        principalColumn: "OnlineCourseId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_StudentOnlineCourses_studentsId",
                table: "StudentOnlineCourses",
                column: "studentsId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "StudentOnlineCourses");
        }
    }
}
