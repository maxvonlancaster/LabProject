using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using LabProject.Models;
using LabProject.DAL.ADONetRepositories.Interfaces;
using LabProject.DAL.ADONetRepositories;
using LabProject.DAL.Services;

namespace LabProject.Controllers
{
    public class HomeController : Controller
    {
        private readonly IProjectRepository _projectRepository;
        private readonly IEmployeeRepository _employeeRepository;

        public HomeController(IProjectRepository projectRepository, IEmployeeRepository employeeRepository)
        {
            _projectRepository = projectRepository;
            _employeeRepository = employeeRepository;
        }

        public IActionResult Index()
        {
            var connection = new DatabaseConnection("Server=LAPTOP-2M0GJS3G\\SQLEXPRESS;Database=Employees;Trusted_Connection=True");
            var repository = new ProjectRepository(connection);

            var projects = repository.GetProjects();
            ViewData["Message"] = projects;
            return View(ViewData);
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
