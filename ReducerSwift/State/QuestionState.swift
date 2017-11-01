//
//  QuestionState.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 01/11/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

struct Question: Codable{
    let question: String,
    published_at: String
}

struct QuestionState: StateType {
    var model: [Question]
    var showLoading: Bool
}
