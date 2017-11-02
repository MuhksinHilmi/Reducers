//
//  RoutingState.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

struct RoutingState: StateType {
    var navigation: NavigationRoutes
    
    init(navigation: NavigationRoutes = .home) {
        self.navigation = navigation
    }
}
