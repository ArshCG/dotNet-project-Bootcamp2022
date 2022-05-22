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
    public class Player1Controller : ControllerBase
    {
        // GET: api/Player1
        private readonly CricketContext _Cricketcontext;

        public Player1Controller(CricketContext cricketcontext)
        {
            _Cricketcontext = cricketcontext;
        }
        // GET api/values
        [HttpGet]
        public IActionResult getplayerlist()
        {
            var getplayer = _Cricketcontext.Player.ToList();
            return Ok(getplayer);
        }
        // GET: api/Player1/5
        /*[HttpGet("{id}", Name = "Get")]
        public string Get(int id)
        {
            return "value";
        }*/

        // POST: api/Player1
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/Player1/5
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
