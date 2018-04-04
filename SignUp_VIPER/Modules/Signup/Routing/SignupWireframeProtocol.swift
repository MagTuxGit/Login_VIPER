//
//  SignupWireframeProtocol.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/3/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

protocol SignupWireframeProtocol {
    func presentSignupScreen()
    func dismissSignupScreen()
    func presentHomeScreen(user: UserDTO)
}

