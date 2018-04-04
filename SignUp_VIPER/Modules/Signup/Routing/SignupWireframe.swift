//
//  SignupWireframe.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/3/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class SignupWireframe: SignupWireframeProtocol {

    var rootWireframe: RootWireframe?
    var homeWireframe: HomeWireframe?
    weak var signupViewController: SignupViewController?
    
    func presentSignupScreen() {
        let signupVC = self.signupViewController ?? SignupViewController.nibInstance
        self.signupViewController = signupVC
        signupVC.signupWireframe = self
        self.rootWireframe?.pushViewController(signupVC)
    }
    
    func dismissSignupScreen() {
        self.rootWireframe?.removeFromNavigationStackViewController(signupViewController)
    }

    func presentHomeScreen(user: UserDTO) {
        self.homeWireframe?.presentHomeScreen(user: user)
        self.dismissSignupScreen()
    }
    
}
