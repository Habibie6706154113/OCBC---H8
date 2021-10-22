using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Payments.Data;
using Payments.Models;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;

namespace Payments.Controllers{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    public class PaymentController : ControllerBase{
        private readonly ApiDbContext _context;
        public PaymentController(ApiDbContext context){
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetItems(){
            var items = await _context.Items.ToListAsync();
            return Ok(items);
        }

        [HttpPost]
        public async Task<IActionResult> CreateItem(ItemData data){
            if(ModelState.IsValid){
                await _context.Items.AddAsync(data);
                await _context.SaveChangesAsync();

                return CreatedAtAction(nameof(GetItems), new { id= data.PaymentDetailId }, data);
            }
            return new JsonResult("Something Went Wrong"){StatusCode = 500};
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetItem(int id){
            var item = await _context.Items.FirstOrDefaultAsync(x => x.PaymentDetailId == id);

            if(item == null){
                return NotFound();
            }
            return Ok(item);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateItem(int id, ItemData item){
            if(id != item.PaymentDetailId){
                return BadRequest();
            }

            var existItem = await _context.Items.FirstOrDefaultAsync(x => x.PaymentDetailId ==id);

            if(existItem == null){
                return NotFound();
            }

            existItem.CardOwnerName = item.CardOwnerName;
            existItem.CardNumber = item.CardNumber;
            existItem.ExpirationDate = item.ExpirationDate;
            existItem.SecurityCode = item.SecurityCode;

            await _context.SaveChangesAsync();

            return Ok("Update Success!");
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteItem(int id){
            var existItem = await _context.Items.FirstOrDefaultAsync(x => x.PaymentDetailId == id);

            if(existItem == null){
                return NotFound();
            }

            _context.Items.Remove(existItem);
            await _context.SaveChangesAsync();

            return Ok(existItem);
        }
    }
}