//
//  LoginViewController.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 28/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift
@objcMembers
class LoginViewController: UIViewController,StoreSubscriber {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var register: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        store.subscribe(self) {
            $0.select {
                $0.loginState
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
        login.addTarget(self, action: #selector(loginButton), for: .touchUpInside)
        register.addTarget(self, action: #selector(registerButton), for: .touchUpInside)
    }
    
    func newState(state: LoginState) {
        login.setTitle(state.menuTitles[0], for: .normal)
        register.setTitle(state.menuTitles[1], for: .normal)
    }
    
    @objc func loginButton(){
        let routeDestination: NavigationState = .question
        store.dispatch(RoutingAction(destination: routeDestination))
    }
    
    @objc func registerButton(){
        let routeDestination: NavigationState = .register
        store.dispatch(RoutingAction(destination: routeDestination))
    }
}
