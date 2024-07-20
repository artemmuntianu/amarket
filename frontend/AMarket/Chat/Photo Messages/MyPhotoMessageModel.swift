import Foundation
import ChattoAdditions

public class MyPhotoMessageModel: PhotoMessageModel<MessageModel>, MyMessageModelProtocol {

    public var logoPath: String;
    public var imageUrl: String?;
    public var status: MessageStatus {
        get {
            return self._messageModel.status
        }
        set {
            self._messageModel.status = newValue
        }
    }
    
    public init(messageModel: MessageModel, logoPath: String, imageSize: CGSize, imageUrl: String) {
        self.logoPath = logoPath;
        self.imageUrl = imageUrl;
        super.init(messageModel: messageModel, imageSize: imageSize, image: UIImage());
    }

    public init(messageModel: MessageModel, logoPath: String, imageSize: CGSize, image: UIImage) {
        self.logoPath = logoPath;
        super.init(messageModel: messageModel, imageSize: imageSize, image: image);
    }
    
}
