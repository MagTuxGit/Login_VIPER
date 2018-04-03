//
//  WelcomeWireframe.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/3/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class WelcomeWireframe: WelcomeWireframeProtocol {
    
    var window: UIWindow
    var navigationVC: UINavigationController
    
    init(window: UIWindow, navigationVC: UINavigationController) {
        self.window = window
        self.navigationVC = navigationVC
    }
    
    func presentWelcomeViewControllerInWindow() {
        let welcomeVC = WelcomeViewController.storyboardInstance
        self.navigationVC.viewControllers = [welcomeVC]
        self.window.rootViewController = navigationVC
        self.window.makeKeyAndVisible()
    }
    
    func presentLoginViewController() {
    }
    
    func presentSignupViewController() {
    }
    
}
