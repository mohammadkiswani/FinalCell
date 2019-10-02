//
//  ViewController.swift
//  FinalCell
//
//  Created by Mohamed on 8/29/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import UIKit

final class ViewController: UIViewController  {
    
    // << Outlet >>
    
    @IBOutlet private weak var tableView: UITableView!
  
    
    // << Properties >>
    
    var information = [["Mohammad" , "Ali" , "Ahmad" ],[ "25" , "26" , "20" ],[ "Amaan" , "Zarqa" , "Aqaba"] ]
    
    // << Lifecycle >>
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.register(UINib.init(nibName: "TableViewCell11", bundle: nil) , forCellReuseIdentifier: "TableViewCell11")
    }
}


// << Extension >>

extension ViewController: UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return information[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell11", for: indexPath)
        cell.textLabel?.text = information[indexPath.section][indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = ["Name","Age","City"]
        return title[section]
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return information.count
    }
    
    
}
