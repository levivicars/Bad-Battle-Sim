//
//  RectangleCard.swift
//  Bad Battle Sim
//
//  Created by Levi Vicars on 9/22/21.
//

import SwiftUI

struct RectangleCard: View {
    var color: Color
    var body: some View {
        
        VStack {
            Rectangle()
                .cornerRadius(10)
                .foregroundColor(color)
                .frame(width: 375, height: 65)
                .shadow(radius: 20)
            
        }
            
    }
}

struct RectangleCard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCard(color: .white)
    }
}
