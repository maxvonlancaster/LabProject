using System;
using System.Collections.Generic;
using System.Text;

namespace LabProject.DAL.ADONetRepositories.Interfaces
{
    public interface IEmployeeRepository
    {
        List<string> GetEmployees();

        string GetEmployee(int id);
    }
}
