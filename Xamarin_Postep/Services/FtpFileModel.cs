//using System;
//using System.IO;
//using System.Linq;

//namespace HttpFtpCommon.Models
//{
//    public class FtpFileModel
//    {
//        private readonly string[] extensions = new[] { ".webp", ".jpg", ".png" };
//        private string _host;
//        private string _directory;
//        private string _fileName;
//        private readonly bool linuxSupport;

//        public FtpFileModel(bool linuxSuport)
//        {
//            this.linuxSupport = linuxSuport;
//        }

//        internal string Host
//        {
//            set => _host = value ?? throw new ArgumentNullException(nameof(Host));
//        }
//        internal string Directory
//        {
//            set => _directory = value ?? throw new ArgumentNullException(nameof(Directory));
//        }
//        public string FileName
//        {
//            internal set => _fileName = NormalizeFileExtension(value) ?? throw new ArgumentNullException(nameof(FileName));
//            get => _fileName;
//        }

//        public string DayilyPath(string startPath = "")
//        {
//           var folderName = DateTime.Today.ToString("ddMMyy");

//           if (string.IsNullOrEmpty(startPath)) return folderName;

//           return GetWithoutLastSlash(startPath) + $"/{folderName}";
//        }

//        public string GetPath(bool withoutFilename = false)
//        {
//            var host = linuxSupport ? GetWithLastDoubleSlash(_host) : GetWithoutLastSlash(_host);
//            var directory = GetWithoutLastSlash(_directory)  + "/" + DayilyPath();
//            var fileName = withoutFilename ? "" : GetWithoutLastSlash(_fileName);

//            return host + "/" + (string.IsNullOrEmpty(directory) ? "" : $"{directory}/") + fileName;
//        }

//        public string GetWithoutLastSlash(string pathPart)
//        {
//            if (string.IsNullOrEmpty(pathPart))
//            {
//                return string.Empty;
//            }
            
//            return pathPart.EndsWith("/") ? pathPart.Remove(pathPart.Length - 1) : pathPart;
//        }
//        private string NormalizeFileExtension(string filename)
//        {
//            if (string.IsNullOrEmpty(filename)) return filename;
//            if (extensions.Any(filename.EndsWith)) return filename;
//            else
//            {
//                var ex = "." + filename.Split('.').Last();
//                return filename.Replace(ex, extensions[0]);
//            }
//        }

//        private string GetWithLastDoubleSlash(string pathPart)
//        {
//            if (string.IsNullOrEmpty(pathPart))
//            {
//                return string.Empty;
//            }

//            return pathPart.EndsWith("/")
//                ? pathPart
//                : pathPart + "/";
//        }

//        public override string ToString()
//        {
//            return $"FTP fileModel - |Host: " + _host + " |Directory: " + _directory + " |FielName: " + _fileName;
//        }
//    }
//}