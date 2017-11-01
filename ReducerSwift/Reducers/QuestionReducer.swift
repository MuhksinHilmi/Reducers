//
//  QuestionReducer.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 01/11/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

func questionReducer(action:Action, state: QuestionState?) -> QuestionState{
    var state = state ?? QuestionState(model: [], showLoading: false)
    switch(action){
    case _ as FetchQuestionAction:
        state = QuestionState(model: [], showLoading: true)
    case _ as SetQuestionAction:

        state.showLoading = false
    default:
        break
    }
    return state
}
