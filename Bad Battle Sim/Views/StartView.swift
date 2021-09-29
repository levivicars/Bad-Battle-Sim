//
//  ContentView.swift
//  Bad Battle Sim
//
//  Created by Levi Vicars on 9/22/21.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("d&d")
                .cornerRadius(10)
                .scaleEffect(CGSize(width: 0.8, height: 0.8))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("Hello, young (or old) adventurer. Welcome to the Bad Battle Simulation app, where you will face off with deadly monsters such as: The Bugbear, The Zombie, maybe even a spectator or two! Press the red button to begin.")
                .font(.title)
                .bold()
                .padding()
                .shadow(radius: 5)
            Spacer()
            
            Button {
                // TODO Send to battle view
            } label: {
                ZStack {
                    RectangleCard(color: .red)
                    Text("Begin the battle of your life")
                        .bold()
                        .foregroundColor(.black)
                }
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

