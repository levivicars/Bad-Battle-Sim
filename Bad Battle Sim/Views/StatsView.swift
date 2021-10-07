//
//  StatsView.swift
//  Bad Battle Sim
//
//  Created by Levi Vicars on 9/29/21.
//

import SwiftUI

struct StatsView: View {
    @EnvironmentObject var model: MonsterModel
    var body: some View {
        
        ForEach(model.monsters) { m in
            ZStack {
                StatsViewRow(name: m.name, image: m.image, AC: m.AC, attackDamage: m.attackdamage, imageScale: 0.13)
                
            }
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
