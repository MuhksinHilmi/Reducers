//
//  QuestionAction.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 01/11/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

func fetchQuestion(state: AppState, store: Store<AppState>) -> FetchQuestionAction {
    assessmentAPI.getQuestion { questions in
        store.dispatch(SetQuestionAction(questions: questions))
    }
    
    return FetchQuestionAction()
}

struct QuestionAction: Action {
    
}

struct FetchQuestionAction:Action {
    
}

struct SetQuestionAction: Action {
    let questions: [Question]
}
