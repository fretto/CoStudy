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
    public class OnlineCoursesController : Controller
    {
        private readonly MyDbContext _context;

        public OnlineCoursesController(MyDbContext context)
        {
            _context = context;
        }

        // GET: Adminstrator/OnlineCourses
        public async Task<IActionResult> Index()
        {
              return _context.OnlineCourses != null ? 
                          View(await _context.OnlineCourses.ToListAsync()) :
                          Problem("Entity set 'MyDbContext.OnlineCourses'  is null.");
        }

        // GET: Adminstrator/OnlineCourses/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.OnlineCourses == null)
            {
                return NotFound();
            }

            var onlineCourse = await _context.OnlineCourses
                .FirstOrDefaultAsync(m => m.OnlineCourseId == id);
            if (onlineCourse == null)
            {
                return NotFound();
            }

            return View(onlineCourse);
        }

        // GET: Adminstrator/OnlineCourses/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Adminstrator/OnlineCourses/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("OnlineCourseId,CourseTitle,CourseDescription,ReviewCount,CourseURL")] OnlineCourse onlineCourse)
        {
            if (ModelState.IsValid)
            {
                _context.Add(onlineCourse);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(onlineCourse);
        }

        // GET: Adminstrator/OnlineCourses/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.OnlineCourses == null)
            {
                return NotFound();
            }

            var onlineCourse = await _context.OnlineCourses.FindAsync(id);
            if (onlineCourse == null)
            {
                return NotFound();
            }
            return View(onlineCourse);
        }

        // POST: Adminstrator/OnlineCourses/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("OnlineCourseId,CourseTitle,CourseDescription,ReviewCount,CourseURL")] OnlineCourse onlineCourse)
        {
            if (id != onlineCourse.OnlineCourseId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(onlineCourse);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!OnlineCourseExists(onlineCourse.OnlineCourseId))
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
            return View(onlineCourse);
        }

        // GET: Adminstrator/OnlineCourses/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.OnlineCourses == null)
            {
                return NotFound();
            }

            var onlineCourse = await _context.OnlineCourses
                .FirstOrDefaultAsync(m => m.OnlineCourseId == id);
            if (onlineCourse == null)
            {
                return NotFound();
            }

            return View(onlineCourse);
        }

        // POST: Adminstrator/OnlineCourses/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.OnlineCourses == null)
            {
                return Problem("Entity set 'MyDbContext.OnlineCourses'  is null.");
            }
            var onlineCourse = await _context.OnlineCourses.FindAsync(id);
            if (onlineCourse != null)
            {
                _context.OnlineCourses.Remove(onlineCourse);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool OnlineCourseExists(int id)
        {
          return (_context.OnlineCourses?.Any(e => e.OnlineCourseId == id)).GetValueOrDefault();
        }
    }
}
