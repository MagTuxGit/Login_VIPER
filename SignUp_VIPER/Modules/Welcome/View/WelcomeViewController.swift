//
//  WelcomeViewController.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/2/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, NibLoadable {
    
    var welcomeWireframe: WelcomeWireframe?
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.setupLayer()
        signUpButton.setupLayer()
    }
    
    @IBAction func loginTouched(_ sender: UIButton) {
        self.welcomeWireframe?.presentLoginScreen()
    }
    
    @IBAction func signupTouched(_ sender: UIButton) {
        self.welcomeWireframe?.presentSignupScreen()
    }

}

