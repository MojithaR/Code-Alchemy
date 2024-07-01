using System;
using System.Web.Mvc;

namespace YourNamespace.Controllers
{
    // Example of using Areas to organize controllers
    [RouteArea("Admin")]
    public class HomeController : Controller
    {
        // GET: /Admin/Home/Index
        [Route("Index")]
        public ActionResult Index()
        {
            ViewBag.Message = "Welcome to the Admin Home Page!";
            return View();
        }

        // GET: /Admin/Home/About
        [Route("About")]
        public ActionResult About()
        {
            ViewBag.Message = "This is the Admin About Page.";
            return View();
        }

        // GET: /Admin/Home/Contact
        [Route("Contact")]
        public ActionResult Contact()
        {
            ViewBag.Message = "Contact us if you have any questions.";
            return View();
        }

        // Example of using Action Filters for logging
        [LogActionFilter] // Custom action filter for logging
        // POST: /Admin/Home/Submit
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Route("Submit")]
        public ActionResult Submit(FormCollection form)
        {
            // Process form submission
            // Example: Log the form submission data
            string formData = string.Join(", ", form.AllKeys) + ": " + string.Join(", ", form.GetValues(form.AllKeys));
            ViewBag.Message = "Form submitted successfully: " + formData;
            return View("Index");
        }

        // Example of a custom action filter for logging
        public class LogActionFilter : ActionFilterAttribute
        {
            public override void OnActionExecuting(ActionExecutingContext filterContext)
            {
                string controller = filterContext.RouteData.Values["controller"].ToString();
                string action = filterContext.RouteData.Values["action"].ToString();
                string message = $"Action '{action}' in controller '{controller}' started at {DateTime.Now}.";
                // Example: Log the message to a logging system
                Console.WriteLine(message);
                base.OnActionExecuting(filterContext);
            }
        }
    }
}
