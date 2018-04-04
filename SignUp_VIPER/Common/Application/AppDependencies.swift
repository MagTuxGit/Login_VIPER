//
//  AppDependencies.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/4/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

class AppDependencies {
    var rootWireframe = RootWireframe()
    
    init() {
        configureDependencies()
    }
    
    func installRootViewControllerIntoWindow(_ window: UIWindow) {
        self.rootWireframe.installRootViewControllerIntoWindow(window)
    }
    
    func configureDependencies() {
        
        /*
         let coreDataStore = CoreDataStore()
         let dataManager = DataManager(store: coreDataStore)
         moduleInteractor.dataManager = dataManager
        */
        
        let welcomeWireframe = WelcomeWireframe()
        let signupWireframe = SignupWireframe()
        let loginWireframe = LoginWireframe()
        let homeWireframe = HomeWireframe()
        
        welcomeWireframe.rootWireframe = rootWireframe
        signupWireframe.rootWireframe = rootWireframe
        loginWireframe.rootWireframe = rootWireframe
        homeWireframe.rootWireframe = rootWireframe
        
        welcomeWireframe.signupWireframe = signupWireframe
        welcomeWireframe.loginWireframe = loginWireframe
        signupWireframe.homeWireframe = homeWireframe
        loginWireframe.homeWireframe = homeWireframe

        rootWireframe.welcomeWireframe = welcomeWireframe
    }
}
