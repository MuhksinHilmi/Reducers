//
//  DigiState.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 03/11/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

struct Turn {
    var digimon: Digimon
}

enum Digimon {
    case agumon
    case seadramon
}

enum DigiType {
    case water, fire, normal
}

enum AttackType {
    case water, fire, normal
}

struct Play {
    
    var type: DigiType
    var attack: AttackType
    
    init(type:DigiType, attack: AttackType){
        self.type = type
        self.attack = attack
    }
}

struct DigiState: StateType {
    var health: Int
    var turn: Turn
    var agumon: Play
    var seadramon: Play
    
    init() {
        self.health = 100
        self.turn = Turn(digimon: .agumon)
        self.agumon = Play(type: .fire, attack: .fire)
        self.seadramon = Play(type: .fire, attack: .water)
    }
}
