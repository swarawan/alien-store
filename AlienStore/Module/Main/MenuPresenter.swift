//
//  MenuPresenter.swift
//  AlienStore
//
//  Created by Rio Swarawan on 12/27/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import Moya
import ObjectMapper
import Alamofire

class MenuPresenter {
    
    weak private var delegate: MenuDelegate?
    
    func attachView(delegate: MenuDelegate) {
        self.delegate = delegate
    }
    
    func detachView() {
        self.delegate = nil
    }
    
    func getAllMenu() {
        
        var menus = [Menu]()
        menus.append(Menu(name: "Hats", image: #imageLiteral(resourceName: "sample-hat")))
        menus.append(Menu(name: "Jeans", image: #imageLiteral(resourceName: "sample-jeans")))
        menus.append(Menu(name: "Shirts", image: #imageLiteral(resourceName: "sample-shirt")))
        
        self.delegate?.displayMenus(menu: menus)
    }
}
