//
//  AppReducer.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        routingState: routingReducer(action: action, state: state?.routingState),
        homeState: homeReducer(action: action, state: state?.homeState),
        questionState: questionReducer(action: action, state: state?.questionState),
        digiState: digiReducer(action: action, state: state?.digiState)
    )
}
