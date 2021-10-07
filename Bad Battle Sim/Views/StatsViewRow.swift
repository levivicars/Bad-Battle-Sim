//
//  StatsViewRow.swift
//  Bad Battle Sim
//
//  Created by Levi Vicars on 9/29/21.
//

import SwiftUI

struct StatsViewRow: View {
    @EnvironmentObject var model: MonsterModel
    var name: String
    var image: String
    var AC: Int
    var attackDamage: Int
    var imageScale: CGFloat
    var body: some View {
        
        ZStack {
            RectangleCard(color: .white, height: 100)
            HStack {
                Spacer()
                Image(image)
                    .scaleEffect(imageScale)
                    .frame(width: 95, height: 95 )
                    .cornerRadius(10)
                Spacer()
                Text("Name: \(name)")
                    .bold()
                VStack {
                    Text(String("Armor Class: \(AC)"))
                        .bold()
                    Text("Atack Damage: \(attackDamage)")
                        .bold()
                    
                }
                Spacer()
            }
        }
    }
    
    struct StatsViewRow_Previews: PreviewProvider {
        static var previews: some View {
            StatsViewRow(name: "Bugbear", image: "venomfang", AC: 10, attackDamage: 12, imageScale: 0.2)
        }
    }
}


// Wolf scale: 0.2
// cultist scale: 0.13
// giantSpider scale: 0.21
// goblin scale:0.15
// ogre scale: 0.16
// orc scale: 0.22
// owlbear scale: 0.18
// redbrandRuffian scale: 0.14
// venomfang scale: 0.2
