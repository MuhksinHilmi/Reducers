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
    case let setQuestionAction as SetQuestionAction:
        let model = setQuestionAction.questions
        state.model = model
        state.showLoading = false
    default:
        break
    }
    return state
}
