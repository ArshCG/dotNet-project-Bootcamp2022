using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CricketWebApp1.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace CricketWebApp1.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class MatchesController : ControllerBase
    {
        private readonly CricketContext _Cricketcontext;

        public MatchesController(CricketContext cricketcontext)
        {
            _Cricketcontext = cricketcontext;
        }
        // GET api/values
        [HttpGet]
        public IActionResult getmatcheslist()
        {
            var getmatches = _Cricketcontext.Matches.ToList();
            return Ok(getmatches);
        }
        // GET: api/Matches/5
        /*[HttpGet("{id}", Name = "Get")]
        public string Get(int id)
        {
            return "value";
        }*/

        // POST: api/Matches
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/Matches/5
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
