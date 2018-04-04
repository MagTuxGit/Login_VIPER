//
//  SignupInteractor.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/4/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import Foundation

class SignupInteractor: SignupInteractorProtocol {

    var userDataManager = DataManager.shared.user

    func signup(name: String?, email: String?, password: String?, completion: SignupMethodCompletion) {
        guard let userName = name, !userName.isEmpty,
            let userEmail = email, !userEmail.isEmpty,
            let userPassword = password, !userPassword.isEmpty
            else {
                completion(.failure("Fill in all the fields"))
                return
        }
        
        if let _ = userDataManager.getUser(email: userEmail) {
            completion(.failure("User with email \(userEmail) already exists"))
            return
        }
        
        let userInfo = UserDTO(name: userName, email: userEmail, password: userPassword)
        userDataManager.createUser(userInfo)
        completion(.success(userInfo))
    }
    
}
