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
        menus.append(Menu(name: "Hats", image: "https://www.villagehatshop.com/photos/product/standard/4511390S61504/all/pinch-crown-crushable-wool-felt-fedora-hat.jpg"))
        menus.append(Menu(name: "Jeans", image: "http://stylefeed.wejoin.us/std_api/kstyle/public/uploads/cache/data/style/2015-02-26/ftSgBjXZ-360x360.jpg"))
        menus.append(Menu(name: "Shirts", image: "http://stylefeed.wejoin.us/std_api/kstyle/public/uploads/cache/data/style/2015-02-25/m3xcJprh-360x360.jpg"))
        
        self.delegate?.displayPatients(menu: menus)
    }
}
