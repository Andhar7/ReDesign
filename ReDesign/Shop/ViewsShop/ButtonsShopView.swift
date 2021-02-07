//
//  ButtonsShopView.swift
//  ReDesign
//
//  Created by Andrej Kling on 06.02.21.
//

import SwiftUI

struct ButtonsShopView: View {
    
    @State private var isDetail = "Hand Bag"
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators:false)  {
            
            HStack(spacing: 21) {
                
                ForEach(scrolls, id:\.self) { item in
                    ItemButton(scroll: item, isDetail: $isDetail)
                    
                }
                .padding()
            }
        }
    }
}

struct ButtonsShopView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsShopView()
    }
}

struct ItemButton : View {
    
    var scroll : String
    @Binding var isDetail : String
    
    var body: some View {
        
        Button(action: {isDetail = scroll}, label: {
            
            VStack(alignment: .leading) {
                Text(scroll)
                    .font(.system(size: 18, weight: .regular, design: .serif))
                Rectangle()
                    .frame(width: 55, height: 5)
                    .cornerRadius(15)
            }
            .foregroundColor(isDetail == scroll ? Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)) : Color.gray.opacity(0.5))
            .shadow(color: Color(#colorLiteral(red: 0.3934569955, green: 0.8421524167, blue: 0.7535114884, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
            .shadow(color: Color(#colorLiteral(red: 0.3934569955, green: 0.8421524167, blue: 0.7535114884, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: -5)
        })
    }
}
