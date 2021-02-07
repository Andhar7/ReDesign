//
//  LinePlantView.swift
//  ReDesign
//
//  Created by Andrej Kling on 05.02.21.
//

import SwiftUI

struct LinePlantView: View {
    var body: some View {
      
        LineItemView(title: "Recomended", button: "More")
     
    }
}

struct LinePlantView_Previews: PreviewProvider {
    static var previews: some View {
        LinePlantView()
    }
}

struct LineItemView: View {
    
    var title : String
    var button : String
    
    var body: some View {
        VStack {
            
            HStack {
                
                Text(title)
                    .font(.system(size: 18, weight: .regular, design: .serif))
                    .bold()
                    .foregroundColor(.black)
                Spacer(minLength: 0)
                Button(action: {}, label: {
                    Text(button)
                        .font(.caption)
                        .padding(.horizontal)
                        .background(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)))
                        .clipShape(Capsule())
                        .foregroundColor(.white)
                })
            }
            .padding(.horizontal)
        }
    }
}
