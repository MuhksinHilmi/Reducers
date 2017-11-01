//
//  HomeViewController.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

class HomeViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        store.subscribe(self){
            $0.select {
                $0.questionState
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        store.unsubscribe(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        store.dispatch(fetchQuestion)
        // Do any additional setup after loading the view.
    }
}

extension HomeViewController: StoreSubscriber {
    func newState(state: QuestionState) {
        
        print(state.model.count)
        
//        state.showLoading ? loadingIndicator.startAnimating() : loadingIndicator.stopAnimating()
        
    }
}
