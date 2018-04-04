//
//  SignupInteractorProtocol.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/4/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import Foundation

typealias SignupMethodCompletion = MethodCompletion<UserDTO>

protocol SignupInteractorProtocol {
    func signup(name: String?, email: String?, password: String?, completion: SignupMethodCompletion)
}
