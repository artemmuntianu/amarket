using System.IO;

namespace AMarket.Data.FileStorage
{
    public class FileSystemStorageProvider
    {
        private string folderPath = @"C:\";

        public void GetResourceContent(string containerName, string resourceName, Stream content)
        {
            var physicalFilePath = Path.Combine(folderPath, "Images", containerName, resourceName);
            var bytes = File.ReadAllBytes(physicalFilePath);
            content.Write(bytes, 0, bytes.Length);
            content.Position = 0;
        }

        public string GetResourceRelativeUrl(string containerName, string resourceName)
        {
            return string.Format("{0}/{1}/{2}", "Images", containerName, resourceName).ToLower();
        }

        public async void SaveResource(string containerName, string resourceName, Stream content)
        {
            var dirPath = Path.Combine(folderPath, "Images", containerName);
            var filePath = Path.Combine(dirPath, resourceName);
            Directory.CreateDirectory(dirPath);
            using (var destStream = File.Create(filePath))
            {
                await content.CopyToAsync(destStream);
            }
        }

        public void RemoveResource(string containerName, string resourceName)
        {
            var physicalFilePath = Path.Combine(folderPath, "Images", containerName, resourceName);
            File.Delete(physicalFilePath);
        }
    }
}
