//
//  AppState.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

struct AppState: StateType {
    let routingState: RoutingState
    let loginState: LoginState
    let questionState: QuestionState
}
