//
//  Monsters.swift
//  Bad Battle Sim
//
//  Created by Levi Vicars on 9/22/21.
//

import Foundation


class Monsters: Decodable, Identifiable {
    
    var name: String
    var image: String
    var id: Int
    var AC: Int
    var maxHealth: Int
    var attackdamage: Int
 
    
}
