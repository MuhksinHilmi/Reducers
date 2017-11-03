
//
//  DigiReducer.swift
//  ReducerSwift
//
//  Created by Muhksin Hilmi on 03/11/2017.
//  Copyright © 2017 Shinkan. All rights reserved.
//

import ReSwift

func digiReducer(action:Action, state: DigiState?) -> DigiState{
    var state = state ?? DigiState()
    switch action {
    case let digiAttack as DigiAction:
        var damage = 0
        let turn = state.turn
        switch turn.digimon {
        case .agumon:
            // create a play
            let play = Play(type: .fire, attack: digiAttack.attackType)
            state.agumon = play
            // pass the turn to the next player
            state.turn = Turn(digimon: .seadramon)
            
        case .seadramon:
            let play = Play(type: .fire, attack: digiAttack.attackType)
            state.seadramon = play
            
        //Attack
            let agumonAttack = state.agumon.attack
            let enemy = state.seadramon.type
            print(agumonAttack.hashValue)
            switch agumonAttack {
            case .fire:
                switch enemy{
                case .fire:
                    damage = 30
                case .water:
                    damage = 0
                default:
                    damage = 40
                }
            case .water:
                switch enemy{
                case .fire:
                    damage = 100
                case .water:
                    damage = 30
                default:
                    damage = 40
                }
            case .normal:
                switch enemy{
                case .fire:
                    damage = 40
                case .water:
                    damage = 40
                default:
                    damage = 40
                }
            }
        }
        state.health = state.health - damage
    default:
        break
    }
    
    return state
    
}
