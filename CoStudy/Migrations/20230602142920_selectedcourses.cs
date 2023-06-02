using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CoStudy.Migrations
{
    /// <inheritdoc />
    public partial class selectedcourses : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "selectedUniCourses",
                columns: table => new
                {
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    CourseId = table.Column<int>(type: "int", nullable: false),
                    Grade = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_selectedUniCourses", x => new { x.UserId, x.CourseId });
                    table.ForeignKey(
                        name: "FK_selectedUniCourses_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_selectedUniCourses_UniCourses_CourseId",
                        column: x => x.CourseId,
                        principalTable: "UniCourses",
                        principalColumn: "CourseId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_selectedUniCourses_CourseId",
                table: "selectedUniCourses",
                column: "CourseId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "selectedUniCourses");
        }
    }
}
