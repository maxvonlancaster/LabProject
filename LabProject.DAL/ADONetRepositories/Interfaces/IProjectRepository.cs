using LabProject.Dal.Dto;
using System;
using System.Collections.Generic;
using System.Text;

namespace LabProject.DAL.ADONetRepositories.Interfaces
{
    interface IProjectRepository
    {
        List<ProjectModel> GetProjects();
        ProjectModel GetProject(int id);
    }
}
