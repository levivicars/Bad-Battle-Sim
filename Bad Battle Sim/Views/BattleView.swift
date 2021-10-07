//
//  BattleView.swift
//  Bad Battle Sim
//
//  Created by Levi Vicars on 9/29/21.
//

import SwiftUI

struct BattleView: View {
    var randomInt = Int.random(in: 0...10)
    var body: some View {
        Button {
            
        } label: {
            Text("Generate")
            Text(String(randomInt))
        }

            
        
    }
}

struct BattleView_Previews: PreviewProvider {
    static var previews: some View {
        BattleView()
    }
}
