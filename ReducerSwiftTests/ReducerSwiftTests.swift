//
//  ReducerSwiftTests.swift
//  ReducerSwiftTests
//
//  Created by Muhksin Hilmi on 26/10/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import XCTest
import ReSwift
@testable import ReducerSwift

class ReducerSwiftTests: XCTestCase {

    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test() {
        let store = Store<AppState>(reducer: appReducer, state: nil)
        // agumon
        store.dispatch(DigiAction(attackType: .water))
        // seadramon
        store.dispatch(DigiAction(attackType: .water))
        print("health = ",store.state.digiState.health)
        // Check result
        XCTAssertTrue(store.state.digiState.health >= 70)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
