//
//  LoginWireframe.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/4/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class LoginWireframe: LoginWireframeProtocol {
    var rootWireframe: RootWireframe?
    var homeWireframe: HomeWireframe?
    weak var loginViewController: LoginViewController?
    
    func presentLoginScreen() {
        let loginVC = self.loginViewController ?? LoginViewController.nibInstance
        self.loginViewController = loginVC
        loginVC.loginWireframe = self
        self.rootWireframe?.pushViewController(loginVC)
    }
    
    func dismissLoginScreen() {
        self.rootWireframe?.removeFromNavigationStackViewController(loginViewController)
    }
    
    func presentHomeScreen(user: UserDTO) {
        self.homeWireframe?.presentHomeScreen(user: user)
        self.dismissLoginScreen()   // removes VC from the stack
    }
    
}

