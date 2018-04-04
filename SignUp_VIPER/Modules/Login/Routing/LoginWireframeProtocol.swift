//
//  LoginWireframeProtocol.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/4/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

protocol LoginWireframeProtocol {
    func presentLoginScreen()
    func dismissLoginScreen()
    func presentHomeScreen(user: UserDTO)
}
