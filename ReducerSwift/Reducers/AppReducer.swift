//
//  AppReducer.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(routingState: routingReducer(action: action, state: state?.routingState),
                    loginState: loginReducer(action: action, state: state?.loginState))
}
