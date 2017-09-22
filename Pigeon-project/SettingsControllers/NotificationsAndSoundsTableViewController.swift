//
//  NotificationsAndSoundsTableViewController.swift
//  Pigeon-project
//
//  Created by Roman Mizin on 9/21/17.
//  Copyright © 2017 Roman Mizin. All rights reserved.
//

import UIKit

class NotificationsAndSoundsTableViewController: UITableViewController {
  
   var accessorySwich = UISwitch()

    override func viewDidLoad() {
        super.viewDidLoad()
      title = "Notifications"
      
      tableView = UITableView(frame: self.tableView.frame, style: .grouped)
      tableView.separatorStyle = .none
      extendedLayoutIncludesOpaqueBars = true
      view.backgroundColor = .white
      navigationController?.navigationBar.backgroundColor = .white
    }
  
    deinit {
      print("Notifications And Sounds DID DEINIT")
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let identifier = "cell"
    
    let cell = tableView.dequeueReusableCell(withIdentifier: identifier) ?? UITableViewCell(style: .default, reuseIdentifier: identifier)
    
    cell.accessoryView = accessorySwich
    cell.textLabel?.text = "In-App Sounds"
    cell.textLabel?.font = UIFont.systemFont(ofSize: 18)
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 55
  }
  
  override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 65
  }
  
  
}