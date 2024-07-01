using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace YourNamespace.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home/Index
        public ActionResult Index()
        {
            return View(new UserInputModel());
        }

        // POST: Home/SubmitForm
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SubmitForm(UserInputModel model)
        {
            if (ModelState.IsValid)
            {
                // Process valid input (e.g., save to database)
                // Redirect to success page or do further processing
                return RedirectToAction("Success");
            }

            // If ModelState is not valid, return to the same view with validation errors
            return View("Index", model);
        }

        public ActionResult Success()
        {
            return View();
        }

        public class UserInputModel
        {
            [Required(ErrorMessage = "Name is required")]
            public string Name { get; set; }

            [Required(ErrorMessage = "Email is required")]
            [EmailAddress(ErrorMessage = "Invalid Email Address")]
            public string Email { get; set; }
        }
    }
}
