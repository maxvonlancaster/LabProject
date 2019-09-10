using System;
using System.Collections.Generic;
using System.Text;

namespace LabProject.DAL.Services.Interfaces
{
    public interface IDatabaseConnection
    {
        string ConnectionString { get; set; }
    }
}
