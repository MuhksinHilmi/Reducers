//
//  NavigationState.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

enum NavigationState: String {
    case login = "LoginViewController"
    case home = "HomeTableViewController"
    case register = "RegisterViewController"
    
    var controller: UIViewController {
        switch self {
        case .home:
            return HomeViewController()
        case .register:
            return RegisterTableViewController()
        default:
            return LoginViewController()
        }
    }
}
