//
//  RootWireframe.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/3/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class RootWireframe {
    
    var window: UIWindow
    var navigationVC: UINavigationController
    var welcomeWireframe: WelcomeWireframe
    
    init(window: UIWindow) {
        self.window = window
        self.navigationVC = UINavigationController()
        
        self.welcomeWireframe = WelcomeWireframe(window: self.window, navigationVC: self.navigationVC)
        self.welcomeWireframe.presentWelcomeViewControllerInWindow()
    }
}
