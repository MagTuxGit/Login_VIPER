//
//  WelcomeWireframe.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/3/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class WelcomeWireframe: WelcomeWireframeProtocol {
    
    var rootWireframe: RootWireframe?
    var signupWireframe: SignupWireframe?
    var loginWireframe: LoginWireframe?
    weak var welcomeViewController: WelcomeViewController?

    func presentWelcomeScreenInWindow(_ window: UIWindow) {
        let welcomeVC = self.welcomeViewController ?? WelcomeViewController.nibInstance
        self.welcomeViewController = welcomeVC
        welcomeVC.welcomeWireframe = self
        self.rootWireframe?.showRootViewController(welcomeVC)
    }
    
    func presentLoginScreen() {
        self.loginWireframe?.presentLoginScreen()
    }
    
    func presentSignupScreen() {
        self.signupWireframe?.presentSignupScreen()
    }
    
}
