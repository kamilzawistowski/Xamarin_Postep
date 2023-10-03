using System;

using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
//using Plugin.LocalNotification;
using Android.Content;
using Android.OS;
using System.IO;
using QuestPDF.Fluent;
using QuestPDF.Helpers;
using QuestPDF.Infrastructure;
using QuestPDF.Previewer;
using Xamarin.Essentials;
using Plugin.Messaging;

public static class DeviceInfo
{
    public static string GetDevicePath()
    {
        

        var dcimFolder = Android.OS.Environment.GetExternalStoragePublicDirectory(System.Environment.SystemDirectory).Path;
        var dcimFolder2 = Android.OS.Environment.GetExternalStoragePublicDirectory(System.Environment.CurrentDirectory).Path;

        var externalStorageState = Android.OS.Environment.ExternalStorageState;
        if (externalStorageState == Android.OS.Environment.MediaMounted)
        {
            // Masz dostêp do karty SD
           return  Path.Combine(Android.OS.Environment.ExternalStorageDirectory.AbsolutePath, "Documents");
        }
        return Path.Combine(Android.OS.Environment.ExternalStorageDirectory.AbsolutePath);




    }
}