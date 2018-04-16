//
//  UserClass.swift
//  Dont Eat Alone
//
//  Created by Samuel J. Lee on 4/9/18.
//  Copyright © 2018 Dont Eat Alone. All rights reserved.
//

import Foundation
import UIKit

class User {
    var name: String
    var emailid: String
    var year: String
    var major: String
    var favorites: String?
    var dietaryr: String? = nil
    var description: String? = nil
    var profilepic: UIImage? = nil
    
    init(username: String, useremail: String, useryear: String, usermajor: String, userdescription: String?, userpic: UIImage?, userdiet: String?) {
        self.name = username
        self.emailid = useremail
        self.year = useryear
        self.major = usermajor
        if let desc = userdescription{
            self.description = desc
        }
        if let image = userpic{
            self.profilepic = image
        }
        if let diet = userdiet{
            self.dietaryr = diet
        }
    }
}
