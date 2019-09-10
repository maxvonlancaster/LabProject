using LabProject.DAL.Services.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace LabProject.DAL.Services
{
    public class DatabaseConnection : IDatabaseConnection
    {
        public DatabaseConnection(string connectionString)
        {
            ConnectionString = connectionString;
        }

        public string ConnectionString { get; set; }
    }
}
