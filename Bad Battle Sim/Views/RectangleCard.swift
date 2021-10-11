//
//  RectangleCard.swift
//  Bad Battle Sim
//
//  Created by Levi Vicars on 9/22/21.
//

import SwiftUI

struct RectangleCard: View {
    var color: Color
    var height: CGFloat
    var body: some View {
        Rectangle()
            .cornerRadius(10)
            .foregroundColor(color)
            .frame(width: 390, height: height)
            .shadow(radius: 20)
        
        
    }
}

struct RectangleCard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCard(color: .white, height: 100)
    }
}
