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
    var maxHealth: Int
    var imageScale: CGFloat {
        
        if image == "bugbear" {
            return 0.1
        }else if image == "wolf" {
            return 0.18
        }else if image == "cultist" {
            return 0.13
        }else if image == "giantSpider" {
            return 0.21
        }else if image == "goblin" {
            return 0.15
        }else if image == "ogre" {
            return 0.16
        }else if image == "orc" {
            return 0.22
        }else if image == "owlbear" {
            return 0.18
        }else if image == "redbrandRuffian" {
            return 0.14
        }else if image == "venomfang" {
            return 0.2
        } else if image == "spectator" {
            return 0.21
        }else if image == "zombie" {
            return 0.15
        }
        return self.imageScale
    }
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
                        
                    Text("MaxHealth: \(maxHealth)")
                        
                    
                }
                Spacer()
            }
        }
    }
    
    struct StatsViewRow_Previews: PreviewProvider {
        static var previews: some View {
            StatsViewRow(name: "Wolf", image: "owlbear", AC: 10, maxHealth: 123)
        }
    }
}


// Wolf scale: 0.18
// cultist scale: 0.13
// giantSpider scale: 0.21
// goblin scale:0.15
// ogre scale: 0.16
// orc scale: 0.22
// owlbear scale: 0.18
// redbrandRuffian scale: 0.14
// venomfang scale: 0.2
// bugbear scale: 0.1
// spectator scale: 0.21
// zombie scale: 0.15
