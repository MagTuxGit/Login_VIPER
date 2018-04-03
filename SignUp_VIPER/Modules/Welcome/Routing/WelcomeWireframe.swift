//
//  WelcomeWireframe.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/3/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class WelcomeWireframe: WelcomeWireframeProtocol {
    var rootWireframe : RootWireframe?
    var welcomeViewController = WelcomeViewController.nibInstance

    func presentWelcomeScreenInWindow(_ window: UIWindow) {
        self.rootWireframe?.showRootViewController(self.welcomeViewController, inWindow: window)
    }
    
    func presentLoginScreen() {
    }
    
    func presentSignupScreen() {
    }
    
}
