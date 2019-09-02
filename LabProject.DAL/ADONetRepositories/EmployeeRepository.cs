using LabProject.DAL.ADONetRepositories.Interfaces;
using LabProject.DAL.Services;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;
using System.Data;
using System.Runtime;

namespace LabProject.DAL.ADONetRepositories
{
    public class EmployeeRepository : IEmployeeRepository
    {
        private readonly DatabaseConnection _databaseConnection;

        public EmployeeRepository(DatabaseConnection databaseConnection)
        {
            _databaseConnection = databaseConnection;
        }

        public List<string> GetEmployees()
        {
            using (var connection = new SqlConnection(_databaseConnection.ConnectionString))
            {
                List<string> employees = new List<string>();
                var queryString = "SELECT FirstName FROM Employees";
                var sqlCommand = new SqlCommand(queryString, connection);
                try
                {
                    connection.Open();
                    SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                    while (sqlDataReader.Read())
                    {
                        employees.Add(sqlDataReader[0].ToString());
                    }
                    return employees;
                }
                catch (Exception ex)
                {
                    return null;
                }
            }
        }
    }
}
