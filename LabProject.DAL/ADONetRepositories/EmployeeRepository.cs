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

        public string GetEmployee(int id)
        {
            using (var connection = new SqlConnection(_databaseConnection.ConnectionString))
            {
                var queryString = "SELECT FirstName FROM Employees WHERE Id = @Id";
                var parameter = new SqlParameter("@Id", id);
                var sqlCommand = new SqlCommand(queryString, connection);
                try
                {
                    connection.Open();
                    sqlCommand.Parameters.Add(parameter);
                    SqlDataReader reader = sqlCommand.ExecuteReader();
                    if (reader.HasRows)
                    {
                        return reader[0].ToString();
                    }
                    else
                    {
                        throw new Exception();
                    }
                }
                catch (Exception ex)
                {
                    return null;
                }
            }
        }

        public List<string> GetEmployees()
        {
            using (var connection = new SqlConnection(_databaseConnection.ConnectionString))
            {
                List<string> employees = new List<string>();
                var queryString = "SELECT LastName FROM Employees";
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
