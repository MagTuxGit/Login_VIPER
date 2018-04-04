//
//  HomeViewController.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/2/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, NibLoadable {
    
    var homeWireframe: HomeWireframe?
    var homeInteractor = HomeInteractor()
    
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    var currentUser: UserDTO!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deleteButton.setupLayer()
        logoutButton.setupLayer()
        
        titleLabel.text = currentUser.name
    }
    
    @IBAction func logoutTouched(_ sender: UIButton) {
        self.homeWireframe?.dismissHomeScreen()
    }
    
    @IBAction func deleteTouched(_ sender: UIButton) {
        self.homeInteractor.deleteUser(currentUser)
        self.homeWireframe?.dismissHomeScreen()
    }
}
