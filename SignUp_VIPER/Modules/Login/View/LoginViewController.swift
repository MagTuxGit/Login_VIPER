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
    var loginInteractor = LoginInteractor()
    
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
        
        self.loginInteractor.login(
            email: emailTextField.text,
            password: passwordTextField.text)
        { (result) in
            switch result {
            case let .success(user):
                self.loginWireframe?.presentHomeScreen(user: user)
            case let .failure(message):
                self.showAlert(title: "User Error", message: message)
            }
        }
    }
    
    @IBAction func dismissTouched(_ sender: UIButton? = nil) {
        self.loginWireframe?.dismissLoginScreen()
    }
    
    
}
