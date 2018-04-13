//
//  UserListViewController.swift
//  Dont Eat Alone
//
//  Created by Samuel J. Lee on 4/9/18.
//  Copyright © 2018 Dont Eat Alone. All rights reserved.
//

import UIKit

class UserListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var userList = [User]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        cell.image_cell = userList[indexPath.row].profilepic
        
        cell.descrip_cell = userList[indexPath.row].description
        cell.name_cell = userList[indexPath.row].name
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        userList = [User.init(username: "Samuel", userdescription: "I love being clean", userpic: #imageLiteral(resourceName: "Sam")), User.init(username: "Doggo", userdescription: "I love living life on the edge", userpic: #imageLiteral(resourceName: "Doggo"))]
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        self.tableView.rowHeight = 100

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
