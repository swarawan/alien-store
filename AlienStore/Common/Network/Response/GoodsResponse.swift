//
//  HatResponse.swift
//  AlienStore
//
//  Created by Rio Swarawan on 12/27/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import Foundation
import ObjectMapper

struct GoodsResponse : Mappable {
    var status: Bool?
    var list: [DataResponse]?
    
    init() {
    }
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        self.status <- map["status"]
        self.list <- map["list"]
    }
}
