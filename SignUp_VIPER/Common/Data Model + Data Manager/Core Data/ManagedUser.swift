//
//  ManagedUser.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/4/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import Foundation

extension User {
    var userDTO: UserDTO {
        get {
            return UserDTO(name: self.name ?? "", email: self.email ?? "", password: self.password ?? "")
        }
    }
}
