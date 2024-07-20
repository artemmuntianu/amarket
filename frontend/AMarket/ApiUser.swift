//
//  ApiUser.swift
//  AMarket
//
//  Created by MacUser on 8/31/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class ApiUser: ApiBase {

    static func login(model: UserLoginRequest, success: @escaping ((UserLoginResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
        postJson(path: "user/login", model: model, success: success, error: error, always: always);
	}

    static func signup(model: UserSignupRequest, success: @escaping ((EmptyApiResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
        postJson(path: "user/signup", model: model, success: success, error: error, always: always);
    }
    
    static func confirmEmail(model: UserConfirmEmailRequest, success: @escaping ((UserConfirmEmailResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
        postJson(path: "user/confirmEmail", model: model, success: success, error: error, always: always);
    }
    
	static func get(model: UserGetRequest, success: @escaping ((UserGetResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
		postJson(path: "user/get", model: model, success: success, error: error, always: always);
	}
    
    static func update(model: UserUpdateRequest, success: @escaping ((UserUpdateResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
        postMultipart(path: "user/update", model: model, image: model.image, success: success, error: error, always: always);
    }

}

// MARK: UserLogin

class UserLoginResponse: ApiResponseProtocol {
	let guid: String;
    let user: UserDto;

	required init?(json: AnyObject) {
		if let guid = json.value(forKeyPath: "guid") as? String,
            let userJson = json.value(forKeyPath: "user") as AnyObject?,
            let user = UserDto(json: userJson) {
			self.guid = guid;
            self.user = user;
		} else {
			return nil;
		}
	}

	var description: String {
		return "guid: \(guid); user: \(user)";
	}
}

class UserLoginRequest: PropsToArrayConvertibleProtocol {
	let uniqueId: String;
	let roleName: String;
    let email: String;
	let password: String;

	init(uniqueId: String, roleName: String, email: String, password: String) {
		self.uniqueId = uniqueId;
		self.roleName = roleName;
        self.email = email;
		self.password = password;
	}

	func propsToArray() -> [String: AnyObject]? {
		return [
			"uniqueId": uniqueId as AnyObject,
			"roleName": roleName as AnyObject,
			"email": email as AnyObject,
			"password": password as AnyObject
		];
	}
}

// MARK: UserSignup

class UserSignupRequest: PropsToArrayConvertibleProtocol {
    let uniqueId: String;
    let roleName: String;
    let email: String;
    let password: String;
    let secretWord: String;
    let username: String;
    let securityCode: String;
    let companyName: String?;
    
    init(uniqueId: String, roleName: String, email: String, password: String, secretWord: String, username: String, securityCode: String, companyName: String?) {
        self.uniqueId = uniqueId;
        self.roleName = roleName;
        self.email = email;
        self.password = password;
        self.secretWord = secretWord;
        self.username = username;
        self.securityCode = securityCode;
        self.companyName = companyName;
    }
    
    func propsToArray() -> [String: AnyObject]? {
        return [
            "uniqueId": uniqueId as AnyObject,
            "roleName": roleName as AnyObject,
            "email": email as AnyObject,
            "password": password as AnyObject,
            "secretWord": secretWord as AnyObject,
            "username": username as AnyObject,
            "securityCode": securityCode as AnyObject,
            "companyName": companyName as AnyObject
        ];
    }
}

// MARK: UserConfirmEmail

class UserConfirmEmailResponse: ApiResponseProtocol {
    let code: String;
    
    required init?(json: AnyObject) {
        if let code = json.value(forKeyPath: "code") as? String {
            self.code = code;
        } else {
            return nil;
        }
    }
    
    var description: String {
        return "code: \(code)";
    }
}

class UserConfirmEmailRequest: PropsToArrayConvertibleProtocol {
    let email: String;
    
    init(email: String) {
        self.email = email;
    }
    
    func propsToArray() -> [String: AnyObject]? {
        return [
            "email": email as AnyObject
        ];
    }
}

// MARK: UserGet

class UserGetResponse: ApiResponseProtocol {
	let user: UserDto;
	
	required init?(json: AnyObject) {
		if let user = UserDto(json: json) {
			self.user = user;
		} else {
			return nil;
		}
	}
	
	var description: String {
		return "user: \(user)";
	}
}

class UserGetRequest: PropsToArrayConvertibleProtocol {
	let guid: String;
	let userId: Int;
	
	init(userId: Int) {
		self.guid = UserData.guid;
		self.userId = userId;
	}
	
	func propsToArray() -> [String: AnyObject]? {
		return [
			"guid": guid as AnyObject,
			"userId": userId as AnyObject
		];
	}
}

// MARK: UserUpdate

class UserUpdateRequest: PropsToArrayConvertibleProtocol {
    let guid: String;
    let userName: String;
    let address: String;
    let webSiteUrl: String;
    let image: UIImage?;
    
    init(userName: String, address: String, webSiteUrl: String, image: UIImage?) {
        self.guid = UserData.guid;
        self.userName = userName;
        self.address = address;
        self.webSiteUrl = webSiteUrl;
        self.image = image;
    }
    
    func propsToArray() -> [String: AnyObject]? {
        return [
            "guid": guid as AnyObject,
            "userName": userName as AnyObject,
            "address": address as AnyObject,
            "webSiteUrl": webSiteUrl as AnyObject,
            "image": image as AnyObject
        ];
    }
}

class UserUpdateResponse: ApiResponseProtocol {
    let user: UserDto;
    
    required init?(json: AnyObject) {
        if let userJson = json.value(forKeyPath: "user") as AnyObject?,
            let user = UserDto(json: userJson) {
            self.user = user;
        } else {
            return nil;
        }
    }
    
    var description: String {
        return "user: \(user)";
    }
}
