using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Xamarin_Postep.Models;

namespace Xamarin_Postep.Auth
{
    public interface IFirebaseAuthentication
    {
        Task<UserModel> LoginWithEmailAndPassword(string email, string password);
        Task<bool> RegisterWithEmailAndPassword(string username, string email, string password);
        Task ForgetPassword(string email);
        string GetUsername();
        string GetUserId();
        bool IsLoggedIn();
        bool LogOut();
    }
}
