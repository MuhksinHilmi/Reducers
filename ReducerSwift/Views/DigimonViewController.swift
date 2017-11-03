//
//  DigimonViewController.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 03/11/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

class DigimonViewController: UIViewController,StoreSubscriber {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        store.subscribe(self) {
            $0.select {
                $0.digiState
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        store.unsubscribe(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func newState(state: DigiState) {
        
    }
}
