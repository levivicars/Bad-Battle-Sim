//
//  StatsView.swift
//  Bad Battle Sim
//
//  Created by Levi Vicars on 10/11/21.
//

import SwiftUI

struct StatsView: View {
    func statsCard(name: String, image: String, ac: Int, maxHealth: Int) {
        
        ZStack {
            RectangleCard(color: .white, height: 100)
            StatsViewRow(name: name, image: image, AC: ac, maxHealth: maxHealth)
        }
    }
    var body: some View {
        Image("bugbear")
            .scaleEffect(0.53)
            
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
