using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;

namespace AMarket.Data.FileStorage
{
    public class ImageResizeProperties
    {
        public int Width { get; set; }

        public int Height { get; set; }
    }

    public class ImagesUploadHandler
    {
        public bool Upload(string directoryName, string fileName, string contentType, Stream stream)
        {
            if (IsImage(contentType, fileName))
            {
                new FileSystemStorageProvider().SaveResource(directoryName, fileName, stream);
                return true;
            }
            return false;
        }

        public bool Upload(string directoryName, string fileName, string contentType, Stream stream, int prefWidth, int prefHeight)
        {
            if (IsImage(contentType, fileName))
            {
                var image = Image.FromStream(stream);
                var scale = (double)prefWidth / image.Width;
                var newWidth = Convert.ToInt32(image.Width * scale);
                var newHeight = Convert.ToInt32(image.Height * scale);
                var thumbnail = new Bitmap(newWidth, newHeight);

                var graphics = Graphics.FromImage(thumbnail);

                graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
                graphics.SmoothingMode = SmoothingMode.HighQuality;
                graphics.PixelOffsetMode = PixelOffsetMode.HighQuality;
                graphics.CompositingQuality = CompositingQuality.HighQuality;
                graphics.DrawImage(image, 0, 0, newWidth, newHeight);

                var imageCodecInfo_JPEG = ImageCodecInfo.GetImageEncoders()[1];
                var encoderParameters = new EncoderParameters(1)
                {
                    Param = new[]
                    {
                        new EncoderParameter(Encoder.Quality, 100L)
                    }
                };
                using (var streamWithResizedFile = new MemoryStream())
                {
                    thumbnail.Save(streamWithResizedFile, imageCodecInfo_JPEG, encoderParameters);
                    streamWithResizedFile.Position = 0;
                    new FileSystemStorageProvider().SaveResource(directoryName, fileName, streamWithResizedFile);
                }
                image.Dispose();
                thumbnail.Dispose();
                graphics.Dispose();
                return true;
            }
            return false;
        }

        public bool IsImage(string contentType, string fileName)
        {
            if (contentType.Contains("image"))
            {
                return true;
            }
            var formats = new string[] { ".jpg", ".png", ".gif", ".jpeg" };
            return formats.Any(item => fileName.EndsWith(item, StringComparison.OrdinalIgnoreCase));
        }
    }

}
