using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CricketWebApp1.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace CricketWebApp.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class CountryController : ControllerBase
    {

        private readonly CricketContext _Cricketcontext;

        public CountryController(CricketContext cricketcontext)
        {
            _Cricketcontext = cricketcontext;
        }
        // GET api/values
        [HttpGet]
        public IActionResult getcountrylist()
        {
            var getcountry = _Cricketcontext.Country.ToList();
            return Ok(getcountry);
        }

        // GET: api/Country/5
        /*[HttpGet("{id}", Name = "Get")]
        public string Get(int id)
        {
            return "value";
        }*/

        // POST: api/Country
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/Country/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}

