import Foundation
import ChattoAdditions
import AlamofireImage

class MyPhotoMessageViewModel: PhotoMessageViewModel<MyPhotoMessageModel>, MyMessageViewModelProtocol {

    var messageModel: MyMessageModelProtocol {
        return _photoMessage;
    }
    
    override init(photoMessage: MyPhotoMessageModel, messageViewModel: MessageViewModelProtocol) {
        super.init(photoMessage: photoMessage, messageViewModel: messageViewModel);
    }

    override func willBeShown() {
        if let imageUrl = _photoMessage.imageUrl {
            downloadImage(imageUrl);
        } else {
            image.value = _photoMessage.image;
        }
    }

    func downloadImage(_ imageUrl: String) {
        transferStatus.value = .transfering;
        let urlRequest = try! URLRequest(url: imageUrl, method: .get);
        ImageDownloader.default.download(
            urlRequest,
            progress: { progress in
                self.transferProgress.value = progress.fractionCompleted;
            },
            completion: { resp in
                if resp.result.value != nil {
                    self.image.value = resp.result.value!;
                    self.transferStatus.value = .success;
                } else {
                    self.transferStatus.value = .failed;
                }
            }
        );
    }
}

class MyPhotoMessageViewModelBuilder: ViewModelBuilderProtocol {
    let messageViewModelBuilder = MessageViewModelDefaultBuilder();

    func createViewModel(_ photoMessage: MyPhotoMessageModel) -> MyPhotoMessageViewModel {
        let messageViewModel = messageViewModelBuilder.createMessageViewModel(photoMessage);
        let photoMessageViewModel = MyPhotoMessageViewModel(photoMessage: photoMessage, messageViewModel: messageViewModel);
        photoMessageViewModel.avatarImage.value = UIImage.userLogo(from: photoMessage.logoPath, with: CGSize(width: 35, height: 35));
        return photoMessageViewModel;
    }

    func canCreateViewModel(fromModel model: Any) -> Bool {
        return model is MyPhotoMessageModel;
    }
}
