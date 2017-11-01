//
//  NavigationState.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

enum NavigationState: String {
    case login = "Login"
    case home = "Home"
    case register = "Register"
    
    var controller: UIViewController {
        switch self {
        case .login:
            return LoginViewController()
        case .register:
            return RegisterTableViewController()
        default:
            return HomeViewController()
        }
    }
}
