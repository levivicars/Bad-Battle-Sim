//
//  ContentView.swift
//  Bad Battle Sim
//
//  Created by Levi Vicars on 9/22/21.
//

import SwiftUI

struct StartView: View {
    @EnvironmentObject var model: MonsterModel
    var body: some View {
        VStack {
            Spacer()
            Image("d&d")
                .cornerRadius(10)
                .scaleEffect(CGSize(width: 0.8, height: 0.8))
                .shadow(radius: 10)
            Spacer()
            Text("Hello, young (or old) adventurer. Welcome to the Bad Battle Simulation app, where you will face off with deadly monsters such as: The Bugbear, The Zombie, maybe even a spectator or two! Press the red button to begin.")
                .font(.title)
                .bold()
                .padding()
                .shadow(radius: 5)
            Spacer()
            
            NavigationLink {
                StatsView()
            } label: {
                ZStack {
                    RectangleCard(color: .green, height: 65)
                        .padding()
                    
                    Text("See Monster Stats")
                        .bold()
                        .foregroundColor(.black)
                        .padding()
                }
            }


            
            
            NavigationLink {
                BattleView()
                
            } label: {
                ZStack {
                    RectangleCard(color: .red, height: 65)
                    Text("Begin the battle of your life")
                        .bold()
                        .foregroundColor(.black)
                }
            }
            
            
            Button {
                // TODO: Send to battle view
                
            } label: {
                
            }
            Spacer()
        }
        
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

