using LabProject.Dal.Dto;
using LabProject.DAL.ADONetRepositories.Interfaces;
using LabProject.DAL.Services;
using System;
using System.Collections.Generic;
using System.Text;

namespace LabProject.DAL.ADONetRepositories
{
    public class ProjectRepository : IProjectRepository
    {
        private readonly DatabaseConnection _databaseConnection;

        public ProjectRepository(DatabaseConnection databaseConnection)
        {
            _databaseConnection = databaseConnection;
        }

        public ProjectModel GetProject(int id)
        {
            throw new NotImplementedException();
        }

        public List<ProjectModel> GetProjects()
        {
            throw new NotImplementedException();
        }
    }
}
