//
//  ColorButton.swift
//  ReDesign
//
//  Created by Andrej Kling on 06.02.21.
//

import SwiftUI

struct ColorButton: View {
    
    var colors = [ Color(#colorLiteral(red: 0.1834901273, green: 0.4343702197, blue: 0.5955243707, alpha: 1)), Color(#colorLiteral(red: 0.3106909394, green: 0.7606303096, blue: 0.3747624159, alpha: 1)), Color(#colorLiteral(red: 0.9650964141, green: 0.7890565991, blue: 0.214740485, alpha: 1))]
    @State private var selectColor = Color(#colorLiteral(red: 0.1834901273, green: 0.4343702197, blue: 0.5955243707, alpha: 1))
    
    var body: some View {
        
        HStack(spacing: 12) {
            
            ForEach(colors, id:\.self) { item in
                
                ItemCircleColor(color: item, selectColor: $selectColor)
            }
        }
    }
}

struct ColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ColorButton()
    }
}

struct ItemCircleColor: View {
    
    var color : Color
    @Binding var selectColor : Color
    
    var body: some View {
        
        Button(action: {
            selectColor = color
        }, label: {
            if selectColor == color {
                
                Circle()
                    .fill(color)
                    .frame(width: 15, height: 15)
                    .overlay(
                            Circle().stroke()
                                .frame(width: 21, height: 21)
                                .foregroundColor(Color.orange)
                    )
                
            } else {
                
                Circle()
                    .fill(color)
                    .frame(width: 15, height: 15)
            }
        })
    }
}
