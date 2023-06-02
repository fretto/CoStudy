using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CoStudy.Migrations
{
    /// <inheritdoc />
    public partial class updae : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_selectedUniCourses_AspNetUsers_UserId",
                table: "selectedUniCourses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_selectedUniCourses",
                table: "selectedUniCourses");

            migrationBuilder.AlterColumn<string>(
                name: "UserId",
                table: "selectedUniCourses",
                type: "nvarchar(450)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddColumn<int>(
                name: "Id",
                table: "selectedUniCourses",
                type: "int",
                nullable: false,
                defaultValue: 0)
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddPrimaryKey(
                name: "PK_selectedUniCourses",
                table: "selectedUniCourses",
                column: "Id");

            migrationBuilder.CreateIndex(
                name: "IX_selectedUniCourses_UserId",
                table: "selectedUniCourses",
                column: "UserId");

            migrationBuilder.AddForeignKey(
                name: "FK_selectedUniCourses_AspNetUsers_UserId",
                table: "selectedUniCourses",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_selectedUniCourses_AspNetUsers_UserId",
                table: "selectedUniCourses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_selectedUniCourses",
                table: "selectedUniCourses");

            migrationBuilder.DropIndex(
                name: "IX_selectedUniCourses_UserId",
                table: "selectedUniCourses");

            migrationBuilder.DropColumn(
                name: "Id",
                table: "selectedUniCourses");

            migrationBuilder.AlterColumn<string>(
                name: "UserId",
                table: "selectedUniCourses",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(450)",
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_selectedUniCourses",
                table: "selectedUniCourses",
                columns: new[] { "UserId", "CourseId" });

            migrationBuilder.AddForeignKey(
                name: "FK_selectedUniCourses_AspNetUsers_UserId",
                table: "selectedUniCourses",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
