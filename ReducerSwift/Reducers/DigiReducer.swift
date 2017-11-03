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
    case _ as DigiAction:
        var damage = 30
        let turn = state.turn
        switch turn.digimon {
        case .agumon:
            // create a play
            let play = Play(type: .fire, attack: .fire)
            state.agumon = play
            // pass the turn to the next player
            state.turn = Turn(digimon: .seadramon)
            
        case .seadramon:
            let play = Play(type: .fire, attack: .water)
            state.seadramon = play
            
        //Attack
            let agumonAttack = state.agumon.attack
            let enemy = state.seadramon.type
            
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
            default:
                break
            }
        }
        state.health = state.health - damage
    default:
        break
    }
    
    return state
    
}
