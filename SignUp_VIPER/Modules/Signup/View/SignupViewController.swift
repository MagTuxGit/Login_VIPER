//
//  SignupViewController.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/2/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController, NibLoadable {
    
    var signupWireframe: SignupWireframe?
    var signupInteractor = SignupInteractor()
    
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var dismissButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signupButton.setupLayer()
        dismissButton.setupLayer()
    }
    
    @IBAction func signupTouched(_ sender: UIButton) {
        self.signupInteractor.signup(
            name: nameTextField.text,
            email: emailTextField.text,
            password: passwordTextField.text)
        { (result) in
            switch result {
            case let .success(user):
                self.signupWireframe?.presentHomeScreen(user: user)
            case let .failure(message):
                self.showAlert(title: "User Error", message: message)
            }
        }
    }
    
    @IBAction func dismissTouched(_ sender: UIButton? = nil) {
        self.signupWireframe?.dismissSignupScreen()
    }
    
}
