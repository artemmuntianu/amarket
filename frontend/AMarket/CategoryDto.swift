//
//  CategoryDto.swift
//  AMarket
//
//  Created by MacUser on 3/28/17.
//  Copyright © 2017 OrgName. All rights reserved.
//

import Alamofire

class CategoryDto: CustomStringConvertible {
    var id: Int;
	var name: String;
	var children = [CategoryDto]();
	
	init?(json: AnyObject) {
		if let id = json.value(forKeyPath: "id") as? Int,
            let name = json.value(forKeyPath: "name") as? String
		{
            self.id = id;
            self.name = name;
            if let childrenArr = json.value(forKeyPath: "children") as? [AnyObject] {
                for child in childrenArr {
                    children.append(CategoryDto(json: child)!);
                }
            }
		} else {
			return nil;
		}
	}
	
	var description: String {
		return "id: \(id); name: \(name); children: \(children)";
	}
}
