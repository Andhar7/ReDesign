//
//  IconItemView.swift
//  ReDesign
//
//  Created by Andrej Kling on 06.02.21.
//

import SwiftUI

struct IconItemView: View {
    
    var icon : String
    
    var body: some View {
        
             Image(icon)
                .padding()
                .background(Color.white)
                .cornerRadius(18, corners: [.bottomLeft, .topRight])
                .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
                .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: -5)

    }
}

struct IconItemView_Previews: PreviewProvider {
    static var previews: some View {
        IconItemView(icon: "sun")
    }
}
