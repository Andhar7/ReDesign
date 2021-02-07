//
//  SearchPlantView.swift
//  ReDesign
//
//  Created by Andrej Kling on 05.02.21.
//

import SwiftUI

struct SearchPlantView: View {
    
    @State private var search = ""
    
    var body: some View {
        VStack {
            
            HStack {
                
                TextField("Search", text: $search)
                    .padding()
                    .frame(width: 310, height: 42)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .clipShape(Capsule())
                    .padding(.horizontal)
                    .overlay(
                        Image("search")
                            .offset(x: 140)
                        
                    )
            }
            .offset(y: 21)
            .shadow(color:  Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
            .shadow(color:  Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: -5)
        }
    }
}

struct SearchPlantView_Previews: PreviewProvider {
    static var previews: some View {
        SearchPlantView()
    }
}
