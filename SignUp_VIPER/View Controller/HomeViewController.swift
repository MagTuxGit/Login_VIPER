//
//  HomeViewController.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/2/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    var currentUser: User!
    
    static var storyboardInstance: HomeViewController {
        get {
            return UIStoryboard.main.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        deleteButton.setupLayer()
        logoutButton.setupLayer()
        
        titleLabel.text = currentUser.name
    }
    
    @IBAction func logoutTouched(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func deleteTouched(_ sender: UIButton) {
        DataManager.shared.user.deleteUser(currentUser)
        navigationController?.popViewController(animated: true)
    }
}
