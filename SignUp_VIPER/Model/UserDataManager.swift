//
//  UserDataManager.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/2/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import Foundation
import CoreData

class UserDataManager {
    var dataManager = DataManager.shared
    let context = DataManager.shared.context

    func createUser(_ userInfo: UserDTO) -> User {
        let user = NSEntityDescription.insertNewObject(forEntityName: "User", into: context) as! User
        user.name = userInfo.name
        user.email = userInfo.email
        user.password = userInfo.password
        
        dataManager.saveContext()
        
        return user
    }
    
    func getUser(email: String) -> User? {
        let fetchRequest:NSFetchRequest<User> = User.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "%K == %@", #keyPath(User.email), email)
        return (try? context.fetch(fetchRequest))?.last
    }
    
    func deleteUser(_ user: User?) {
        guard let user = user else { return }
        context.delete(user)
        dataManager.saveContext()
    }
}
