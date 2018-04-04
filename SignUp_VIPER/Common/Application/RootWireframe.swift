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
    var signupWireframe = SignupWireframe()
    var loginWireframe = LoginWireframe()
    var homeWireframe = HomeWireframe()

    func installRootViewControllerIntoWindow(_ window: UIWindow) {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        self.welcomeWireframe.rootWireframe = self
        self.signupWireframe.rootWireframe = self
        self.loginWireframe.rootWireframe = self
        self.homeWireframe.rootWireframe = self
        
        self.welcomeWireframe.signupWireframe = signupWireframe
        self.welcomeWireframe.loginWireframe = loginWireframe
        self.signupWireframe.homeWireframe = homeWireframe
        self.loginWireframe.homeWireframe = homeWireframe
        
        self.welcomeWireframe.presentWelcomeScreenInWindow(window)
    }
    
    func showRootViewController(_ viewController: UIViewController) {
        self.navigationController.viewControllers = [viewController]
    }
    
    func pushViewController(_ viewController: UIViewController) {
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func popViewController(animated: Bool) {
        self.navigationController.popViewController(animated: animated)
    }
    
    func removeFromNavigationStackViewController(_ viewController: UIViewController?) {
        let viewControllers = self.navigationController.viewControllers
        if viewControllers.last == viewController {
            self.navigationController.popViewController(animated: true)
        } else {
            self.navigationController.viewControllers = viewControllers.filter { $0 != viewController }
        }
    }
}
