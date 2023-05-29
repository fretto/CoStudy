using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CoStudy.Migrations
{
    /// <inheritdoc />
    public partial class modifications : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BookSkill");

            migrationBuilder.DropTable(
                name: "CourseSkill");

            migrationBuilder.DropTable(
                name: "OnlineCourseSkill");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Skills",
                table: "Skills");

            migrationBuilder.AlterColumn<string>(
                name: "SkillName",
                table: "Skills",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "SkillId",
                table: "Skills",
                type: "int",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int")
                .OldAnnotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddColumn<int>(
                name: "UserId",
                table: "Skills",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "ApplicationUserId",
                table: "Skills",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<double>(
                name: "Scale",
                table: "Skills",
                type: "float",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<string>(
                name: "Interest",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Skills",
                table: "Skills",
                columns: new[] { "SkillId", "SkillName", "UserId" });

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

            migrationBuilder.CreateTable(
                name: "RecommendedCourses",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false),
                    UserId = table.Column<int>(type: "int", nullable: false),
                    Flag = table.Column<bool>(type: "bit", nullable: false),
                    ApplicationUserId = table.Column<string>(type: "nvarchar(450)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RecommendedCourses", x => new { x.Id, x.UserId });
                    table.ForeignKey(
                        name: "FK_RecommendedCourses_AspNetUsers_ApplicationUserId",
                        column: x => x.ApplicationUserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateIndex(
                name: "IX_Skills_ApplicationUserId",
                table: "Skills",
                column: "ApplicationUserId");

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

            migrationBuilder.CreateIndex(
                name: "IX_RecommendedCourses_ApplicationUserId",
                table: "RecommendedCourses",
                column: "ApplicationUserId");

            migrationBuilder.AddForeignKey(
                name: "FK_Skills_AspNetUsers_ApplicationUserId",
                table: "Skills",
                column: "ApplicationUserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Skills_AspNetUsers_ApplicationUserId",
                table: "Skills");

            migrationBuilder.DropTable(
                name: "BookPortfolio");

            migrationBuilder.DropTable(
                name: "CoursePortfolio");

            migrationBuilder.DropTable(
                name: "OnlineCoursePortfolio");

            migrationBuilder.DropTable(
                name: "RecommendedCourses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Skills",
                table: "Skills");

            migrationBuilder.DropIndex(
                name: "IX_Skills_ApplicationUserId",
                table: "Skills");

            migrationBuilder.DropColumn(
                name: "UserId",
                table: "Skills");

            migrationBuilder.DropColumn(
                name: "ApplicationUserId",
                table: "Skills");

            migrationBuilder.DropColumn(
                name: "Scale",
                table: "Skills");

            migrationBuilder.DropColumn(
                name: "Interest",
                table: "AspNetUsers");

            migrationBuilder.AlterColumn<string>(
                name: "SkillName",
                table: "Skills",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<int>(
                name: "SkillId",
                table: "Skills",
                type: "int",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int")
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Skills",
                table: "Skills",
                column: "SkillId");

            migrationBuilder.CreateTable(
                name: "BookSkill",
                columns: table => new
                {
                    BooksId = table.Column<int>(type: "int", nullable: false),
                    SkillsSkillId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BookSkill", x => new { x.BooksId, x.SkillsSkillId });
                    table.ForeignKey(
                        name: "FK_BookSkill_Book_BooksId",
                        column: x => x.BooksId,
                        principalTable: "Book",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_BookSkill_Skills_SkillsSkillId",
                        column: x => x.SkillsSkillId,
                        principalTable: "Skills",
                        principalColumn: "SkillId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CourseSkill",
                columns: table => new
                {
                    CoursesCourseId = table.Column<int>(type: "int", nullable: false),
                    SkillsSkillId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CourseSkill", x => new { x.CoursesCourseId, x.SkillsSkillId });
                    table.ForeignKey(
                        name: "FK_CourseSkill_Skills_SkillsSkillId",
                        column: x => x.SkillsSkillId,
                        principalTable: "Skills",
                        principalColumn: "SkillId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CourseSkill_UniCourses_CoursesCourseId",
                        column: x => x.CoursesCourseId,
                        principalTable: "UniCourses",
                        principalColumn: "CourseId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "OnlineCourseSkill",
                columns: table => new
                {
                    SkillId = table.Column<int>(type: "int", nullable: false),
                    onlineCoursesOnlineCourseId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OnlineCourseSkill", x => new { x.SkillId, x.onlineCoursesOnlineCourseId });
                    table.ForeignKey(
                        name: "FK_OnlineCourseSkill_OnlineCourses_onlineCoursesOnlineCourseId",
                        column: x => x.onlineCoursesOnlineCourseId,
                        principalTable: "OnlineCourses",
                        principalColumn: "OnlineCourseId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_OnlineCourseSkill_Skills_SkillId",
                        column: x => x.SkillId,
                        principalTable: "Skills",
                        principalColumn: "SkillId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_BookSkill_SkillsSkillId",
                table: "BookSkill",
                column: "SkillsSkillId");

            migrationBuilder.CreateIndex(
                name: "IX_CourseSkill_SkillsSkillId",
                table: "CourseSkill",
                column: "SkillsSkillId");

            migrationBuilder.CreateIndex(
                name: "IX_OnlineCourseSkill_onlineCoursesOnlineCourseId",
                table: "OnlineCourseSkill",
                column: "onlineCoursesOnlineCourseId");
        }
    }
}
