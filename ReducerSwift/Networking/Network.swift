//
//  Network.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 01/11/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import Foundation

final class assessmentAPI {
    
    static func getQuestion(completion: @escaping ([Question]) -> Void) {
        let urlString = "http://private-965f0-assessment5.apiary-mock.com/questions"
        
        let url = URL(string: urlString)!
        let jsonData = try! Data(contentsOf: url)
        let jsonDecoder = JSONDecoder()
        
        guard let questions = try? jsonDecoder.decode(Array<Question>.self, from: jsonData) else {return}
        print(questions)
        DispatchQueue.main.async {
            completion(questions)
        }
    }
}
