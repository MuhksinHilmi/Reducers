//
//  RoutingState.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

struct RoutingState: StateType {
    var navigationState: NavigationState
    
    init(navigationState: NavigationState = .login) {
        self.navigationState = navigationState
    }
}
