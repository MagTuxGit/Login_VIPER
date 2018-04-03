//
//  NibLoadable.swift
//  SignUp_VIPER
//
//  Created by Andriy Trubchanin on 4/3/18.
//  Copyright © 2018 Trand. All rights reserved.
//

import UIKit

protocol NibLoadable {
}

extension NibLoadable where Self: UIViewController {
    static var nibInstance: Self {
        get {
            return Self(nibName: String(describing: Self.self), bundle: nil)
        }
    }
}
