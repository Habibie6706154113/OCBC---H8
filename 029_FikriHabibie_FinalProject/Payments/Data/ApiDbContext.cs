using Microsoft.EntityFrameworkCore;
using Payments.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity.UI;

namespace Payments.Data{
    public class ApiDbContext : IdentityDbContext{
        public virtual DbSet<ItemData> Items {get; set;}
        public virtual DbSet<RefreshToken> RefreshTokens { get; set; }
        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options){

        }
    }
}