//
//  LoginInteractor.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/4/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import Foundation

class LoginInteractor: LoginInteractorProtocol {

    var userDataManager = DataManager.shared.user

    func login(email: String?, password: String?, completion: LoginMethodCompletion) {
        guard let userEmail = email, !userEmail.isEmpty,
            let userPassword = password, !userPassword.isEmpty
            else {
                completion(.failure("Fill in all the fields"))
                return
        }
        
        guard let user = userDataManager.getUser(email: userEmail)?.userDTO else {
            completion(.failure("User with email \(userEmail) doesn't exist"))
            return
        }
        
        guard user.password == userPassword else {
            completion(.failure("Password is incorrect"))
            return
        }

        completion(.success(user))
    }
    
}
