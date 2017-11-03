//
//  HomeViewController.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

class HomeViewController: UIViewController, StoreSubscriber {

    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var RegisterButton: UIButton!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        store.subscribe(self) {
            $0.select {
                $0.homeState
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        store.unsubscribe(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        store.dispatch(fetchQuestion)
        // Do any additional setup after loading the view.
        NextButton.addTarget(self, action: #selector(nextClick), for: .touchUpInside)
        RegisterButton.addTarget(self, action: #selector(registerClick), for: .touchUpInside)
    }
    
    func newState(state: HomeState) {
    }
    
    @objc func nextClick(){
        let routeDestination: NavigationRoutes = .question
        store.dispatch(RoutingAction(destination: routeDestination))
    }
    
    @objc func registerClick(){
        let routeDestination: NavigationRoutes = .register
        store.dispatch(RoutingAction(destination: routeDestination))
    }
}
