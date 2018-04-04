//
//  LoginViewController.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/2/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, NibLoadable {

    var loginWireframe: LoginWireframe?
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var dismissButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.setupLayer()
        dismissButton.setupLayer()
    }
    
    @IBAction func loginTouched(_ sender: UIButton) {
        guard let userEmail = emailTextField.text, !userEmail.isEmpty,
            let userPassword = passwordTextField.text, !userPassword.isEmpty
            else {
                self.showAlert(title: "User Error", message: "Fill in all the fields")
                return
        }
        
        guard let user = DataManager.shared.user.getUser(email: userEmail) else {
            self.showAlert(title: "User Error", message: "User with email \(userEmail) doesn't exist")
            return
        }
        
        guard user.password == userPassword else {
            self.showAlert(title: "User Error", message: "Password is incorrect")
            return
        }
        
        self.loginWireframe?.presentHomeScreen(user: user)
    }
    
    @IBAction func dismissTouched(_ sender: UIButton? = nil) {
        self.loginWireframe?.dismissLoginScreen()
    }
    
    
}
