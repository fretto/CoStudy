using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using CoStudy.Data;
using CoStudy.Models;

namespace CoStudy.Areas.Adminstrator.Controllers
{
    [Area("Adminstrator")]
    public class CoursesController : Controller
    {
        private readonly MyDbContext _context;

        public CoursesController(MyDbContext context)
        {
            _context = context;
        }

        // GET: Adminstrator/Courses
        public async Task<IActionResult> Index()
        {
              return _context.UniCourses != null ? 
                          View(await _context.UniCourses.ToListAsync()) :
                          Problem("Entity set 'MyDbContext.UniCourses'  is null.");
        }

        // GET: Adminstrator/Courses/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.UniCourses == null)
            {
                return NotFound();
            }

            var course = await _context.UniCourses
                .FirstOrDefaultAsync(m => m.CourseId == id);
            if (course == null)
            {
                return NotFound();
            }

            return View(course);
        }

        // GET: Adminstrator/Courses/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Adminstrator/Courses/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("CourseId,CourseName,Description")] Course course)
        {
            if (ModelState.IsValid)
            {
                _context.Add(course);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(course);
        }

        // GET: Adminstrator/Courses/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.UniCourses == null)
            {
                return NotFound();
            }

            var course = await _context.UniCourses.FindAsync(id);
            if (course == null)
            {
                return NotFound();
            }
            return View(course);
        }

        // POST: Adminstrator/Courses/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("CourseId,CourseName,Description")] Course course)
        {
            if (id != course.CourseId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(course);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!CourseExists(course.CourseId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(course);
        }

        // GET: Adminstrator/Courses/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.UniCourses == null)
            {
                return NotFound();
            }

            var course = await _context.UniCourses
                .FirstOrDefaultAsync(m => m.CourseId == id);
            if (course == null)
            {
                return NotFound();
            }

            return View(course);
        }

        // POST: Adminstrator/Courses/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.UniCourses == null)
            {
                return Problem("Entity set 'MyDbContext.UniCourses'  is null.");
            }
            var course = await _context.UniCourses.FindAsync(id);
            if (course != null)
            {
                _context.UniCourses.Remove(course);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool CourseExists(int id)
        {
          return (_context.UniCourses?.Any(e => e.CourseId == id)).GetValueOrDefault();
        }
    }
}
