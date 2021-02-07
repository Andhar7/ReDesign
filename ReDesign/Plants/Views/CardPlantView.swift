//
//  CardPlantView.swift
//  ReDesign
//
//  Created by Andrej Kling on 05.02.21.
//

import SwiftUI

struct CardPlantView: View {
    
    var plant : Plant
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            
            VStack {
                
                Image(plant.image)
                    .resizable()
                    .frame(width: 180, height: 240)
                    .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
                    .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: -5)
                
                VStack(alignment: .leading) {
                    
                    HStack(spacing: 32) {
                        
                        Text(plant.title.uppercased())
                            .font(.system(size: 13, weight: .regular, design: .serif))
                            .bold()
                        Text(plant.price)
                            .foregroundColor(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)))
                            .shadow(color:  Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    Text("Russia")
                        .padding(.horizontal)
                        .padding(.bottom)
                        .foregroundColor(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)))
                        .shadow(color:  Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
                }
                .frame(width: 180, height: 80)
                .background(Color.white)
                .cornerRadius(15)
                .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 15, x: -5, y: 5)
                .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 15, x: 5, y: -5)
               // .padding()
            }
            .cornerRadius(15)
            .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: 5)
            .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: 10, y: 10)
        }
    }
}

struct CardPlantView_Previews: PreviewProvider {
    static var previews: some View {
        CardPlantView(plant: plants[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
