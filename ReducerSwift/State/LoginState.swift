//
//  LoginState.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

struct LoginState: StateType {
    var menuTitles: [String]
    
    init() {
        menuTitles = ["Login", "Register"]
    }
}
