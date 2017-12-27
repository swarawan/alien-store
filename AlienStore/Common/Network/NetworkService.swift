//
//  NetworkService.swift
//  AlienStore
//
//  Created by Rio Swarawan on 12/27/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import UIKit
import Moya

enum NetworkService {
    case getHat()
    case getJeans()
    case getShirt()
}

extension NetworkService: TargetType {
    var baseURL: URL {
        return URL(string: "http://demo9618857.mockable.io")!
    }
    
    var path: String {
        switch self {
        case .getHat:
            return "/list/hat"
            
        case .getJeans:
            return "/list/jeans"
            
        case .getShirt:
            return "/list/shirt"
            
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var parameterEncoding: Moya.ParameterEncoding {
        return URLEncoding.default
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return ["Content-Type" : "application/json"]
    }
}
