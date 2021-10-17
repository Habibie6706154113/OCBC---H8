using Microsoft.EntityFrameworkCore;
using Movies.Models;

namespace Movies.Data{
    public class ApiDbContext:DbContext{
        public virtual DbSet<ItemData> Items {get; set;}

        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options){
            
        }
    }
}