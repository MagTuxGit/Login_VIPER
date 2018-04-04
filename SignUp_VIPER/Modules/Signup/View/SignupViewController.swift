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
        guard let userName = nameTextField.text, !userName.isEmpty,
        let userEmail = emailTextField.text, !userEmail.isEmpty,
            let userPassword = passwordTextField.text, !userPassword.isEmpty
        else {
            dismissTouched()
            return
        }
        
        if let _ = DataManager.shared.user.getUser(email: userEmail) {
            self.showAlert(title: "User Error", message: "User with email \(userEmail) already exists")
            return
        }
        
        let userInfo = UserDTO(name: userName, email: userEmail, password: userPassword)
        let user = DataManager.shared.user.createUser(userInfo)
        
        self.signupWireframe?.presentHomeScreen(user: user)
    }
    
    @IBAction func dismissTouched(_ sender: UIButton? = nil) {
        self.signupWireframe?.dismissSignupScreen()
    }
    
}
