//
//  WelcomeViewController.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/2/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.setupLayer()
        signUpButton.setupLayer()
    }
    
    @IBAction func loginTouched(_ sender: UIButton) {
        let loginVC = LoginViewController.storyboardInstance
        navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @IBAction func signupTouched(_ sender: UIButton) {
        let signupVC = SignupViewController.storyboardInstance
        navigationController?.pushViewController(signupVC, animated: true)
    }

}

