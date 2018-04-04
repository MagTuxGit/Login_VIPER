//
//  HomeInteractor.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/4/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import Foundation

class HomeInteractor: HomeInteractorProtocol {
    
    var userDataManager = DataManager.shared.user
    
    func deleteUser(_ userInfo: UserDTO) {
        userDataManager.deleteUser(userInfo)
    }
    
}
