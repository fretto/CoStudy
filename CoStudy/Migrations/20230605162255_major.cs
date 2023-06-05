using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CoStudy.Migrations
{
    /// <inheritdoc />
    public partial class major : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "major",
                table: "AspNetUsers",
                newName: "Major");

            migrationBuilder.AlterColumn<string>(
                name: "Major",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Major",
                table: "AspNetUsers",
                newName: "major");

            migrationBuilder.AlterColumn<int>(
                name: "major",
                table: "AspNetUsers",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);
        }
    }
}
