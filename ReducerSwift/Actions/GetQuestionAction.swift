//
//  QuestionAction.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 01/11/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

func fetchQuestion(state: AppState, store: Store<AppState>) -> GetQuestionAction {
    
    assesmentAPI.getQuestion { (question) in
        store.dispatch(<#T##action: Action##Action#>)
    }
    
    iTunesAPI.searchFor(category: state.categoriesState.currentCategorySelected.rawValue) { imageUrls in
        store.dispatch(SetCardsAction(cardImageUrls: imageUrls))
    }
    
    return GetQuestionAction(question: <#[String]#>)
}

struct GetQuestionAction: Action {
    let question: [String]
}
