//
//  LoginInteractorProtocol.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/4/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import Foundation

typealias LoginMethodCompletion = MethodCompletion<UserDTO>

protocol LoginInteractorProtocol {
    func login(email: String?, password: String?, completion: LoginMethodCompletion)
}
