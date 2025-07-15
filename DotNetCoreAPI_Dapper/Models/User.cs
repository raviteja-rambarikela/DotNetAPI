
namespace DapperApiDemo.Models
{
    public class User
    {
        public int UserId { get; set; }
        public string Username { get; set; } = string.Empty;
        public string Password { get; set; } = string.Empty;
        public string firstname { get; set; } = string.Empty;
        public string lastname { get; set; } = string.Empty;
        public string gender { get; set; } = string.Empty;
        public string phonenumber { get; set; } = string.Empty;
        public string email { get; set; } = string.Empty;
        public bool? IsActive { get; set; }
    }
}
