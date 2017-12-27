//
//  DataResponse.swift
//  AlienStore
//
//  Created by Rio Swarawan on 12/27/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import Foundation
import ObjectMapper

struct DataResponse : Mappable {
    var id: Int?
    var name: String?
    var brand: String?
    var imageUrl: String?
    var description: String?
    var price: String?
    
    init() {
    }
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        self.id             <- map["id"]
        self.name           <- map["name"]
        self.brand          <- map["brand"]
        self.imageUrl       <- map["image_url"]
        self.description    <- map["description"]
        self.price          <- map["price"]
    }
}
