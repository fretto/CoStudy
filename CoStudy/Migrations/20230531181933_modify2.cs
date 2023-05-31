using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace CoStudy.Migrations
{
    /// <inheritdoc />
    public partial class modify2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_portfolios_AspNetUsers_UserId1",
                table: "portfolios");

            migrationBuilder.DropForeignKey(
                name: "FK_RecommendedCourses_AspNetUsers_UserId1",
                table: "RecommendedCourses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_RecommendedCourses",
                table: "RecommendedCourses");

            migrationBuilder.DropIndex(
                name: "IX_RecommendedCourses_UserId1",
                table: "RecommendedCourses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_portfolios",
                table: "portfolios");

            migrationBuilder.DropIndex(
                name: "IX_portfolios_UserId1",
                table: "portfolios");

            migrationBuilder.DropColumn(
                name: "UserId1",
                table: "RecommendedCourses");

            migrationBuilder.DropColumn(
                name: "UserId1",
                table: "portfolios");

            migrationBuilder.AlterColumn<string>(
                name: "UserId",
                table: "RecommendedCourses",
                type: "nvarchar(450)",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

            migrationBuilder.AddColumn<Guid>(
                name: "Id",
                table: "RecommendedCourses",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AlterColumn<string>(
                name: "UserId",
                table: "portfolios",
                type: "nvarchar(450)",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

            migrationBuilder.AddColumn<Guid>(
                name: "Id",
                table: "portfolios",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddPrimaryKey(
                name: "PK_RecommendedCourses",
                table: "RecommendedCourses",
                columns: new[] { "OnlineCourseId", "Id" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_portfolios",
                table: "portfolios",
                columns: new[] { "SkillId", "Id" });

            migrationBuilder.CreateIndex(
                name: "IX_RecommendedCourses_UserId",
                table: "RecommendedCourses",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_portfolios_UserId",
                table: "portfolios",
                column: "UserId");

            migrationBuilder.AddForeignKey(
                name: "FK_portfolios_AspNetUsers_UserId",
                table: "portfolios",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_RecommendedCourses_AspNetUsers_UserId",
                table: "RecommendedCourses",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_portfolios_AspNetUsers_UserId",
                table: "portfolios");

            migrationBuilder.DropForeignKey(
                name: "FK_RecommendedCourses_AspNetUsers_UserId",
                table: "RecommendedCourses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_RecommendedCourses",
                table: "RecommendedCourses");

            migrationBuilder.DropIndex(
                name: "IX_RecommendedCourses_UserId",
                table: "RecommendedCourses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_portfolios",
                table: "portfolios");

            migrationBuilder.DropIndex(
                name: "IX_portfolios_UserId",
                table: "portfolios");

            migrationBuilder.DropColumn(
                name: "Id",
                table: "RecommendedCourses");

            migrationBuilder.DropColumn(
                name: "Id",
                table: "portfolios");

            migrationBuilder.AlterColumn<Guid>(
                name: "UserId",
                table: "RecommendedCourses",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"),
                oldClrType: typeof(string),
                oldType: "nvarchar(450)",
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserId1",
                table: "RecommendedCourses",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AlterColumn<Guid>(
                name: "UserId",
                table: "portfolios",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"),
                oldClrType: typeof(string),
                oldType: "nvarchar(450)",
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserId1",
                table: "portfolios",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_RecommendedCourses",
                table: "RecommendedCourses",
                columns: new[] { "OnlineCourseId", "UserId" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_portfolios",
                table: "portfolios",
                columns: new[] { "SkillId", "UserId" });

            migrationBuilder.CreateIndex(
                name: "IX_RecommendedCourses_UserId1",
                table: "RecommendedCourses",
                column: "UserId1");

            migrationBuilder.CreateIndex(
                name: "IX_portfolios_UserId1",
                table: "portfolios",
                column: "UserId1");

            migrationBuilder.AddForeignKey(
                name: "FK_portfolios_AspNetUsers_UserId1",
                table: "portfolios",
                column: "UserId1",
                principalTable: "AspNetUsers",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_RecommendedCourses_AspNetUsers_UserId1",
                table: "RecommendedCourses",
                column: "UserId1",
                principalTable: "AspNetUsers",
                principalColumn: "Id");
        }
    }
}
