//
//  MainViewController.swift
//  AlienStore
//
//  Created by Rio Swarawan on 12/27/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var menuTable: UITableView!
    
    fileprivate var menu = [Menu]()
    fileprivate var presenter = MenuPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        menuTable.delegate = self
        menuTable.dataSource = self
        menuTable.register(UINib.init(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainTableViewCell")
        
        presenter.attachView(delegate: self)
        presenter.getAllMenu()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension MainViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as! MainTableViewCell
        let item = menu[indexPath.row]
        cell.displayItem(item)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension MainViewController : MenuDelegate {
    
    func displayMenus(menu: [Menu]) {
        self.menu = menu
        self.menuTable.reloadData()
    }
}
