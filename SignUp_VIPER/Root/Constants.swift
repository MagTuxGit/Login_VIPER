//
//  Constants.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/4/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import Foundation

public enum MethodResult<T> {
    case success(T)
    case failure(String)
}

typealias MethodCompletion<T> = (MethodResult<T>)->()
