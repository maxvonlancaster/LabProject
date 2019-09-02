using System;
using System.Collections.Generic;
using System.Text;

namespace LabProject.DAL.Services
{
    public class DatabaseConnection
    {
        public DatabaseConnection(string connectionString)
        {
            ConnectionString = connectionString;
        }

        public string ConnectionString { get; set; }
    }
}
