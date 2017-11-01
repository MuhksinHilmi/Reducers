//
//  RoutingReducer.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

func routingReducer(action: Action, state: RoutingState?) -> RoutingState {
    var state = state ?? RoutingState()
    switch action {
    case let routingAction as RoutingAction:
        state.navigationState = routingAction.destination
    default: break
    }
    return state
}

