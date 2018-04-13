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
    var description: String? = nil
    var profilepic: UIImage? = nil
    
    init(username: String, userdescription: String?, userpic: UIImage?) {
        self.name = username
        if let desc = userdescription{
            self.description = desc
        }
        if let image = userpic{
            self.profilepic = image
        }
    }
}
