//
//  LoginViewController.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/2/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var dismissButton: UIButton!
    
    static var storyboardInstance: LoginViewController {
        get {
            return UIStoryboard.main.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.setupLayer()
        dismissButton.setupLayer()
    }
    
    @IBAction func loginTouched(_ sender: UIButton) {
        guard let userEmail = emailTextField.text, !userEmail.isEmpty,
            let userPassword = passwordTextField.text, !userPassword.isEmpty
            else {
                dismissTouched()
                return
        }
        
        guard let user = DataManager.shared.user.getUser(email: userEmail) else {
            let alertController = UIAlertController(title: "User Error", message: "User with email \(userEmail) doesn't exist", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default)
            alertController.addAction(OKAction)
            self.present(alertController, animated: true)
            return
        }
        
        guard user.password == userPassword else {
            let alertController = UIAlertController(title: "User Error", message: "Password is incorrect", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default)
            alertController.addAction(OKAction)
            self.present(alertController, animated: true)
            return
        }
        
        let homeVC = HomeViewController.storyboardInstance
        homeVC.currentUser = user
        navigationController?.pushViewController(homeVC, animated: true)
    }
    
    @IBAction func dismissTouched(_ sender: UIButton? = nil) {
        navigationController?.popViewController(animated: true)
    }
    
    
}
