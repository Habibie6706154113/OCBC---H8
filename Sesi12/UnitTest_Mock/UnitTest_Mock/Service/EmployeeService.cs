using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using UnitTest_Mock.Models;
using UnitTest_Mock.Services;
using Microsoft.EntityFrameworkCore;


namespace UnitTest_Mock.Services
{
    public class EmployeeService : IEmployeeService
    {
        #region Property
        private readonly ApiDbContext _appDbContext;
        #endregion

        #region Constructor
        public EmployeeService(ApiDbContext appDbContext)
        {
            _appDbContext = appDbContext;
        }
        #endregion
        public async Task<string> GetEmployeeById(int EmpID)
        {
            var name = await _appDbContext.Employee.Where(c => c.Id == EmpID).Select(d => d.Name).FirstOrDefaultAsync();
            return name;
        }

        public async Task<Employee> GetEmployeeDetails(int EmpID)
        {
            var emp = await _appDbContext.Employee.FirstOrDefaultAsync(c => c.Id == EmpID);
            return emp;
        }

    }
}