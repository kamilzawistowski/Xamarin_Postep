//using System;
//using System.IO;
//using System.Net;
//using HttpFtpCommon.Interfaces;
//using HttpFtpCommon.Models;

//namespace HttpFtpCommon.FTP
//{
//    public class FtpServiceIoC : IFtpServiceIoCExtended
//    {
//        #region private fields

//        private readonly string _username;
//        private readonly string _password;
//        private readonly string _filePath;

//        private const bool UploadBytes = false;
//        private const bool DailyFolder = true;

//        #endregion

//        #region constructors

//        public FtpServiceIoC(IFtpConnectionPreferences ftpConnectionPreferences)
//        {
//            _username = ftpConnectionPreferences.UserName; 
//            _password = ftpConnectionPreferences.Password;
//        }

//        #endregion

//        #region public methods

//        public byte[] DownloadFileBytes(string fileUrl, FtpFileModel ftpFile)
//        {
//            using (var webClient = new WebClient())
//            {
//                var response = webClient.DownloadData(fileUrl);

//                return response;
//            }
//        }

//        public int UploadFileBytes(byte[] fileBytes, FtpFileModel ftpFile)
//        {
//            var statusCode = -1;
//            if (fileBytes == null || fileBytes.Length == 0) return statusCode;

//                if (UploadBytes)
//                {
//                    int status;
//                    using (MemoryStream stream = new MemoryStream(fileBytes))
//                    {
//                      status = (int)Upload(stream, ftpFile);
//                    }

//                    return status;
//                }
//                else
//                {
//                    if (DailyFolder)
//                    {
//                        try
//                        {
//                            FtpWebRequest request = (FtpWebRequest)WebRequest.Create(ftpFile.GetWithoutLastSlash(ftpFile.GetPath(true)));
//                            request.Method = WebRequestMethods.Ftp.MakeDirectory;
//                            request.Credentials = new NetworkCredential(_username, _password);
//                            request.UsePassive = true;
//                            request.UseBinary = true;
//                            request.KeepAlive = false;
//                            using (var resp = (FtpWebResponse)request.GetResponse())
//                            {
//                                statusCode = (int)resp.StatusCode;
//                            }
//                        }
//                        catch (WebException ex)
//                        {
                            
//                            FtpWebResponse response = (FtpWebResponse)ex.Response;
//                            statusCode = (int) response.StatusCode;
//                            Console.WriteLine("CreateDailyFolder: " + ex.Message);
//                            if (statusCode != 550)
//                            {
//                                throw;
//                            }
//                        }

//                    }

//                    using (var webClient = new WebClient())
//                    {
//                        webClient.Credentials = new NetworkCredential(_username, _password);

//                        webClient.UploadData(ftpFile.GetPath(), WebRequestMethods.Ftp.UploadFile, fileBytes);
//                    }

//                    return 200;
//                }
//        }

//        public void UploadFileFromUrl(string fileUrl, FtpFileModel ftpFile)
//        {
//            using (var webClient = new WebClient())
//            {
//                var response = webClient.DownloadData(fileUrl);

//                webClient.Credentials = new NetworkCredential(_username, _password);
//                webClient.UploadData(ftpFile.GetPath(), WebRequestMethods.Ftp.UploadFile, response);
//            }
//        }

//        private FtpStatusCode Upload(Stream stream, FtpFileModel ftpFile)
//        {
//            if (stream == null)
//            {
//                throw new ArgumentNullException(nameof(stream));
//            }

//            try
//            {

//                FtpWebRequest ftpRequest = CreateFtpRequest(ftpFile);
//                ftpRequest.Method = WebRequestMethods.Ftp.UploadFile;

//                using (Stream requestSream = ftpRequest.GetRequestStream())
//                {
//                    Pump(stream, requestSream);
//                }

//                var ftpResponse = (FtpWebResponse)ftpRequest.GetResponse();
//                var status = ftpResponse.StatusCode;
//                ftpResponse.Close();
//                return status;
//            }
//            catch (Exception e)
//            {
//                throw new Exception(
//                    $"Failed to upload object. fileName: {ftpFile.GetPath()}, stream: {stream}", e);
//            }
//        }

//        private FtpWebRequest CreateFtpRequest(FtpFileModel ftpFile)
//        {
//            if (ftpFile == null)
//            {
//                throw new ArgumentNullException(nameof(ftpFile));
//            }

//            string serverUri = ftpFile.GetPath();
//            var ftpRequest = (FtpWebRequest)WebRequest.Create(serverUri);
//            ftpRequest.Credentials = new NetworkCredential(_username, _password);
//            ftpRequest.UsePassive = true;
//            ftpRequest.UseBinary = true;
//            ftpRequest.KeepAlive = false;

//            return ftpRequest;
//        }

//        private static void Pump(Stream input, Stream output)
//        {
//            var buffer = new byte[2048];
//            while (true)
//            {
//                int bytesRead = input.Read(buffer, 0, buffer.Length);
//                if (bytesRead == 0)
//                {
//                    break;
//                }
//                output.Write(buffer, 0, bytesRead);
//            }
//        }

//        #endregion
//    }
//}