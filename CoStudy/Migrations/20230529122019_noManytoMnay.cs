using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CoStudy.Migrations
{
    /// <inheritdoc />
    public partial class noManytoMnay : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ApplicationUserBook");

            migrationBuilder.DropTable(
                name: "ApplicationUserCourse");

            migrationBuilder.DropTable(
                name: "ApplicationUserOnlineCourse");

            migrationBuilder.DropTable(
                name: "BookPortfolio");

            migrationBuilder.DropTable(
                name: "CoursePortfolio");

            migrationBuilder.DropTable(
                name: "OnlineCoursePortfolio");

            migrationBuilder.DropColumn(
                name: "Interest",
                table: "AspNetUsers");

            migrationBuilder.AddColumn<string>(
                name: "ApplicationUserId",
                table: "UniCourses",
                type: "nvarchar(450)",
                nullable: true);

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

            migrationBuilder.AddColumn<string>(
                name: "ApplicationUserId",
                table: "OnlineCourses",
                type: "nvarchar(450)",
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

            migrationBuilder.AddColumn<string>(
                name: "ApplicationUserId",
                table: "Book",
                type: "nvarchar(450)",
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
                name: "IX_UniCourses_ApplicationUserId",
                table: "UniCourses",
                column: "ApplicationUserId");

            migrationBuilder.CreateIndex(
                name: "IX_UniCourses_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "UniCourses",
                columns: new[] { "PortfolioSkillId", "PortfolioSkillName", "PortfolioUserId" });

            migrationBuilder.CreateIndex(
                name: "IX_OnlineCourses_ApplicationUserId",
                table: "OnlineCourses",
                column: "ApplicationUserId");

            migrationBuilder.CreateIndex(
                name: "IX_OnlineCourses_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "OnlineCourses",
                columns: new[] { "PortfolioSkillId", "PortfolioSkillName", "PortfolioUserId" });

            migrationBuilder.CreateIndex(
                name: "IX_Book_ApplicationUserId",
                table: "Book",
                column: "ApplicationUserId");

            migrationBuilder.CreateIndex(
                name: "IX_Book_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "Book",
                columns: new[] { "PortfolioSkillId", "PortfolioSkillName", "PortfolioUserId" });

            migrationBuilder.AddForeignKey(
                name: "FK_Book_AspNetUsers_ApplicationUserId",
                table: "Book",
                column: "ApplicationUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Book_Skills_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "Book",
                columns: new[] { "PortfolioSkillId", "PortfolioSkillName", "PortfolioUserId" },
                principalTable: "Skills",
                principalColumns: new[] { "SkillId", "SkillName", "UserId" });

            migrationBuilder.AddForeignKey(
                name: "FK_OnlineCourses_AspNetUsers_ApplicationUserId",
                table: "OnlineCourses",
                column: "ApplicationUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_OnlineCourses_Skills_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "OnlineCourses",
                columns: new[] { "PortfolioSkillId", "PortfolioSkillName", "PortfolioUserId" },
                principalTable: "Skills",
                principalColumns: new[] { "SkillId", "SkillName", "UserId" });

            migrationBuilder.AddForeignKey(
                name: "FK_UniCourses_AspNetUsers_ApplicationUserId",
                table: "UniCourses",
                column: "ApplicationUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_UniCourses_Skills_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "UniCourses",
                columns: new[] { "PortfolioSkillId", "PortfolioSkillName", "PortfolioUserId" },
                principalTable: "Skills",
                principalColumns: new[] { "SkillId", "SkillName", "UserId" });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Book_AspNetUsers_ApplicationUserId",
                table: "Book");

            migrationBuilder.DropForeignKey(
                name: "FK_Book_Skills_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "Book");

            migrationBuilder.DropForeignKey(
                name: "FK_OnlineCourses_AspNetUsers_ApplicationUserId",
                table: "OnlineCourses");

            migrationBuilder.DropForeignKey(
                name: "FK_OnlineCourses_Skills_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "OnlineCourses");

            migrationBuilder.DropForeignKey(
                name: "FK_UniCourses_AspNetUsers_ApplicationUserId",
                table: "UniCourses");

            migrationBuilder.DropForeignKey(
                name: "FK_UniCourses_Skills_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "UniCourses");

            migrationBuilder.DropIndex(
                name: "IX_UniCourses_ApplicationUserId",
                table: "UniCourses");

            migrationBuilder.DropIndex(
                name: "IX_UniCourses_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "UniCourses");

            migrationBuilder.DropIndex(
                name: "IX_OnlineCourses_ApplicationUserId",
                table: "OnlineCourses");

            migrationBuilder.DropIndex(
                name: "IX_OnlineCourses_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "OnlineCourses");

            migrationBuilder.DropIndex(
                name: "IX_Book_ApplicationUserId",
                table: "Book");

            migrationBuilder.DropIndex(
                name: "IX_Book_PortfolioSkillId_PortfolioSkillName_PortfolioUserId",
                table: "Book");

            migrationBuilder.DropColumn(
                name: "ApplicationUserId",
                table: "UniCourses");

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
                name: "ApplicationUserId",
                table: "OnlineCourses");

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
                name: "ApplicationUserId",
                table: "Book");

            migrationBuilder.DropColumn(
                name: "PortfolioSkillId",
                table: "Book");

            migrationBuilder.DropColumn(
                name: "PortfolioSkillName",
                table: "Book");

            migrationBuilder.DropColumn(
                name: "PortfolioUserId",
                table: "Book");

            migrationBuilder.AddColumn<string>(
                name: "Interest",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.CreateTable(
                name: "ApplicationUserBook",
                columns: table => new
                {
                    BooksId = table.Column<int>(type: "int", nullable: false),
                    studentsId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ApplicationUserBook", x => new { x.BooksId, x.studentsId });
                    table.ForeignKey(
                        name: "FK_ApplicationUserBook_AspNetUsers_studentsId",
                        column: x => x.studentsId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ApplicationUserBook_Book_BooksId",
                        column: x => x.BooksId,
                        principalTable: "Book",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ApplicationUserCourse",
                columns: table => new
                {
                    CoursesCourseId = table.Column<int>(type: "int", nullable: false),
                    studentsId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ApplicationUserCourse", x => new { x.CoursesCourseId, x.studentsId });
                    table.ForeignKey(
                        name: "FK_ApplicationUserCourse_AspNetUsers_studentsId",
                        column: x => x.studentsId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ApplicationUserCourse_UniCourses_CoursesCourseId",
                        column: x => x.CoursesCourseId,
                        principalTable: "UniCourses",
                        principalColumn: "CourseId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ApplicationUserOnlineCourse",
                columns: table => new
                {
                    onlineCoursesOnlineCourseId = table.Column<int>(type: "int", nullable: false),
                    studentsId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ApplicationUserOnlineCourse", x => new { x.onlineCoursesOnlineCourseId, x.studentsId });
                    table.ForeignKey(
                        name: "FK_ApplicationUserOnlineCourse_AspNetUsers_studentsId",
                        column: x => x.studentsId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ApplicationUserOnlineCourse_OnlineCourses_onlineCoursesOnlineCourseId",
                        column: x => x.onlineCoursesOnlineCourseId,
                        principalTable: "OnlineCourses",
                        principalColumn: "OnlineCourseId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "BookPortfolio",
                columns: table => new
                {
                    BooksId = table.Column<int>(type: "int", nullable: false),
                    SkillsSkillId = table.Column<int>(type: "int", nullable: false),
                    SkillsSkillName = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    SkillsUserId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BookPortfolio", x => new { x.BooksId, x.SkillsSkillId, x.SkillsSkillName, x.SkillsUserId });
                    table.ForeignKey(
                        name: "FK_BookPortfolio_Book_BooksId",
                        column: x => x.BooksId,
                        principalTable: "Book",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_BookPortfolio_Skills_SkillsSkillId_SkillsSkillName_SkillsUserId",
                        columns: x => new { x.SkillsSkillId, x.SkillsSkillName, x.SkillsUserId },
                        principalTable: "Skills",
                        principalColumns: new[] { "SkillId", "SkillName", "UserId" },
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CoursePortfolio",
                columns: table => new
                {
                    CoursesCourseId = table.Column<int>(type: "int", nullable: false),
                    SkillsSkillId = table.Column<int>(type: "int", nullable: false),
                    SkillsSkillName = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    SkillsUserId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CoursePortfolio", x => new { x.CoursesCourseId, x.SkillsSkillId, x.SkillsSkillName, x.SkillsUserId });
                    table.ForeignKey(
                        name: "FK_CoursePortfolio_Skills_SkillsSkillId_SkillsSkillName_SkillsUserId",
                        columns: x => new { x.SkillsSkillId, x.SkillsSkillName, x.SkillsUserId },
                        principalTable: "Skills",
                        principalColumns: new[] { "SkillId", "SkillName", "UserId" },
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CoursePortfolio_UniCourses_CoursesCourseId",
                        column: x => x.CoursesCourseId,
                        principalTable: "UniCourses",
                        principalColumn: "CourseId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "OnlineCoursePortfolio",
                columns: table => new
                {
                    onlineCoursesOnlineCourseId = table.Column<int>(type: "int", nullable: false),
                    SkillId = table.Column<int>(type: "int", nullable: false),
                    SkillName = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    SkillUserId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OnlineCoursePortfolio", x => new { x.onlineCoursesOnlineCourseId, x.SkillId, x.SkillName, x.SkillUserId });
                    table.ForeignKey(
                        name: "FK_OnlineCoursePortfolio_OnlineCourses_onlineCoursesOnlineCourseId",
                        column: x => x.onlineCoursesOnlineCourseId,
                        principalTable: "OnlineCourses",
                        principalColumn: "OnlineCourseId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_OnlineCoursePortfolio_Skills_SkillId_SkillName_SkillUserId",
                        columns: x => new { x.SkillId, x.SkillName, x.SkillUserId },
                        principalTable: "Skills",
                        principalColumns: new[] { "SkillId", "SkillName", "UserId" },
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ApplicationUserBook_studentsId",
                table: "ApplicationUserBook",
                column: "studentsId");

            migrationBuilder.CreateIndex(
                name: "IX_ApplicationUserCourse_studentsId",
                table: "ApplicationUserCourse",
                column: "studentsId");

            migrationBuilder.CreateIndex(
                name: "IX_ApplicationUserOnlineCourse_studentsId",
                table: "ApplicationUserOnlineCourse",
                column: "studentsId");

            migrationBuilder.CreateIndex(
                name: "IX_BookPortfolio_SkillsSkillId_SkillsSkillName_SkillsUserId",
                table: "BookPortfolio",
                columns: new[] { "SkillsSkillId", "SkillsSkillName", "SkillsUserId" });

            migrationBuilder.CreateIndex(
                name: "IX_CoursePortfolio_SkillsSkillId_SkillsSkillName_SkillsUserId",
                table: "CoursePortfolio",
                columns: new[] { "SkillsSkillId", "SkillsSkillName", "SkillsUserId" });

            migrationBuilder.CreateIndex(
                name: "IX_OnlineCoursePortfolio_SkillId_SkillName_SkillUserId",
                table: "OnlineCoursePortfolio",
                columns: new[] { "SkillId", "SkillName", "SkillUserId" });
        }
    }
}
