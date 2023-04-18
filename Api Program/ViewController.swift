//
//  ViewController.swift
//  Api Program
//
//  Created by R87 on 01/02/23.
//

import UIKit

class ViewController: UIViewController {
     
    var arrUser: [User] = []
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    //2
    private func getUser(){
        self.arrUser = []
        for i in 0..<Users.count{
            let user: User = User(userDetails: user[i])
            self.arrUser.append(user)
        }
            .resume()
    }
}

//3

private func getUser(){
    self.arrUser = []
    for i in 0..<Users.count{
        self.arrUser.map { User(userDetails: $0)}
        DispatchQueue.main.async {
            self.userTableView.reloadData()
        }
    }
  }
}

class User {
    var id: Int
    var name: String
    var email: String
    var gender: String
    var stuts: String
    
    init(userDetails: Dictionary<String, AnyObject>) {
        id = userDetails["id"] as! Int
        name = userDetails["name"] as! String
        email = userDetails["email"] as! String
        gender = userDetails["gender"] as! String
        stuts = userDetails["stuts"] as! String
    }
}
