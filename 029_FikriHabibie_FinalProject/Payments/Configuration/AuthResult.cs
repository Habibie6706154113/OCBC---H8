using System.Collections.Generic;

namespace Payments.Configuration{
    public class AuthResult{
        public string token { get; set; }
        public string refreshToken { get; set; }
        public bool success { get; set; }
        public List<string> errors { get; set; }
    }
}