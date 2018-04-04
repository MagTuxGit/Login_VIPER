//
//  HomeWireframe.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/4/18.
//  Copyright © 2018 Trand. All rights reserved.
//

class HomeWireframe: HomeWireframeProtocol {
    
    var rootWireframe: RootWireframe?
    weak var homeViewController: HomeViewController?
    
    func presentHomeScreen(user: User) {
        let homeVC = self.homeViewController ?? HomeViewController.nibInstance
        self.homeViewController = homeVC
        homeVC.homeWireframe = self
        homeVC.currentUser = user
        self.rootWireframe?.pushViewController(homeVC)
    }
    
    func dismissHomeScreen() {
        self.rootWireframe?.removeFromNavigationStackViewController(homeViewController)
    }
    
}

