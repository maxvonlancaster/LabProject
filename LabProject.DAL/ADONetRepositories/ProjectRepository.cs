using LabProject.Dal.Dto;
using LabProject.DAL.ADONetRepositories.Interfaces;
using LabProject.DAL.Services;
using LabProject.DAL.Services.Interfaces;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace LabProject.DAL.ADONetRepositories
{
    public class ProjectRepository : IProjectRepository
    {
        private readonly IDatabaseConnection _databaseConnection;

        public ProjectRepository(IDatabaseConnection databaseConnection)
        {
            _databaseConnection = databaseConnection;
        }

        public ProjectModel GetProject(int id)
        {
            throw new NotImplementedException();
        }

        public List<ProjectModel> GetProjects()
        {
            using (var connection = new SqlConnection(_databaseConnection.ConnectionString))
            {
                List<ProjectModel> projects = new List<ProjectModel>();
                var queryString = "SELECT ProjectName, ProjectDescription, StartDate, StartDate FROM [Employees].[dbo].[Projects]";
                var sqlCommand = new SqlCommand(queryString, connection);
                try
                {
                    connection.Open();
                    SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                    while (sqlDataReader.Read())
                    {
                        projects.Add( new ProjectModel()
                        {
                            ProjectName = sqlDataReader[0].ToString(),
                            ProjectDescription = sqlDataReader[1].ToString(),
                            StartDate = (DateTime)sqlDataReader[2],
                            EndDate = (DateTime)sqlDataReader[3]
                        });
                    }
                    return projects;
                }
                catch (Exception ex)
                {
                    return null;
                }
            }
        }
    }
}
