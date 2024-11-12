using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp2
{
    public class Cinema
    {
        private string movieName;
        private string movieGenre;
        private bool ageRestriction=false;
        private int capacity;
        private double ticketPrice;
        private int soldTickets;
        private int toatlEarnings;
        public string MovieName { get; set; }
        public string MovieGenre { get; set; }
        public bool AgeRestriction { get;set; }
        public int Capacity { get;set; }
        private double TicketPrice { get;set; }
        public int SoldTickets { get; set; }
        public int ToatlEarnings { get; set; }
        public void AddMovie(string name)
        {
            if (name.Length == 0)
            {
                throw new ArgumentException("the movie name cant be empty string");
            }
        }
        public void AddGenre(string genre)
        {
            if (genre.Length == 0)
            {
                throw new ArgumentException("the genre cant be empty string");
            }
        }
        public void AddRestriction()
        {
            AgeRestriction = true;
        }
    }
}
