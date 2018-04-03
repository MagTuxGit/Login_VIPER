//
//  RootWireframe.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/3/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class RootWireframe {
    
    var navigationController = UINavigationController()
    var welcomeWireframe = WelcomeWireframe()
    
    func installRootViewControllerIntoWindow(_ window: UIWindow) {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        self.welcomeWireframe.rootWireframe = self
        self.welcomeWireframe.presentWelcomeScreenInWindow(window)
    }
    
    func showRootViewController(_ viewController: UIViewController, inWindow: UIWindow) {
        let navigationController = navigationControllerFromWindow(inWindow)
        navigationController.viewControllers = [viewController]
    }
    
    func navigationControllerFromWindow(_ window: UIWindow) -> UINavigationController {
        let navigationController = window.rootViewController as! UINavigationController
        return navigationController
    }

}
