//
//  NavigationState.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

enum NavigationState: String {
    case question = "Question"
    case home = "Home"
    case register = "Register"
    
    var controller: UIViewController {
        switch self {
        case .question:
            return QuestionTableViewController()
        case .register:
            return RegisterTableViewController()
        default:
            return HomeViewController()
        }
    }
}
