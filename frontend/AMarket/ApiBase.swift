//
//  ApiBase.swift
//  AMarket
//
//  Created by MacUser on 9/1/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class ApiBase {

    private static func responseCompletionHandler<T: ApiResponseProtocol> (
        _ model: PropsToArrayConvertibleProtocol,
        _ response: DataResponse<Any>,
        _ success: @escaping ((T) -> Void),
        _ error: @escaping ((ErrorResponse) -> Void),
        _ always: (() -> Void)? = nil)
    {
        always?();
        if let json = response.result.value as? [String: AnyObject] {
            if let jsonData = json["data"], let jsonError = json["error"] {
                if jsonError is NSNull {
                    if let responseModel = T(json: jsonData) {
                        success(responseModel);
                    } else {
                        error(ErrorResponse(message: "Результат API запроса не может быть обработан"));
                    }
                } else {
                    error(ErrorResponse(json: jsonError));
                }
            } else {
                var serverErrorMsg = "";
                if let jsonData = json["message"] {
                    serverErrorMsg = ". \(jsonData as! String)";
                }
                error(ErrorResponse(message: "Результат API запроса не полный\(serverErrorMsg)"));
            }
        } else {
            error(ErrorResponse(message: "API запрос завершился неудачей (код \(response.response?.statusCode))"));
        }
    }
    
	static func postJson<T: ApiResponseProtocol> (
		path: String,
		model: PropsToArrayConvertibleProtocol,
		success: @escaping ((T) -> Void),
		error: @escaping ((ErrorResponse) -> Void),
		always: (() -> Void)? = nil)
	{
		Alamofire
			.request(
                "\(Configs.shared.apiBaseUrl)\(path)",
                method: .post,
                parameters: model.propsToArray(),
                encoding: JSONEncoding.default
            )
            .responseJSON(
                completionHandler: { resp in
                    responseCompletionHandler(model, resp, success, error, always);
                }
            );
	}
    
    static func postMultipart<T: ApiResponseProtocol> (
        path: String,
        model: PropsToArrayConvertibleProtocol,
        image: UIImage?,
        success: @escaping ((T) -> Void),
        error: @escaping ((ErrorResponse) -> Void),
        always: (() -> Void)? = nil)
    {
        Alamofire
            .upload(
                multipartFormData: { formData in
                    if image != nil && !image!.size.equalTo(CGSize.zero) {
                        formData.append(UIImageJPEGRepresentation(image!, 1.0)!, withName: "image", fileName: "image.jpg", mimeType: "image/jpeg");
                    }
                    for (key, value) in model.propsToArray()! {
                        if (key != "image") {
                            formData.append("\(value)".data(using: .utf8)!, withName: key);
                        }
                    }
                },
                to: "\(Configs.shared.apiBaseUrl)\(path)",
                encodingCompletion: { encodingResult in
                    switch encodingResult {
                        case .success(let request, _, _):
                            request.responseJSON(
                                completionHandler: { resp in
                                    responseCompletionHandler(model, resp, success, error, always);
                                }
                            );
                        case .failure(let encodingError):
                            print(encodingError);
                    }
                }
            );
    }

}
