//
//  SignupViewController.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/2/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var dismissButton: UIButton!
    
    static var storyboardInstance: SignupViewController {
        get {
            return UIStoryboard.main.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        }
    }

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
            let alertController = UIAlertController(title: "User Error", message: "User with email \(userEmail) already exists", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default)
            alertController.addAction(OKAction)
            self.present(alertController, animated: true)
            return
        }
        
        let userInfo = UserDTO(name: userName, email: userEmail, password: userPassword)
        let user = DataManager.shared.user.createUser(userInfo)
        let homeVC = HomeViewController.storyboardInstance
        homeVC.currentUser = user

        var navigationArray = self.navigationController!.viewControllers
        navigationArray.removeLast()
        navigationArray.append(homeVC)
        navigationController?.setViewControllers(navigationArray, animated: true)
    }
    
    @IBAction func dismissTouched(_ sender: UIButton? = nil) {
        navigationController?.popViewController(animated: true)
    }
    
}
