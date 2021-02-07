//
//  CardShopView.swift
//  ReDesign
//
//  Created by Andrej Kling on 06.02.21.
//

import SwiftUI

struct CardShopView: View {
    
    var shop : Shop
    var animation : Namespace.ID
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5.0) {
            
            ZStack {
                
                Color(shop.image)
                    .cornerRadius(35, corners: [.bottomLeft, .topRight])
                
                Image(shop.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(31)
                    .matchedGeometryEffect(id: "image\(shop.image)", in: animation)
                    
            }
            
            Text(shop.title)
                .foregroundColor(.gray)
                .matchedGeometryEffect(id: "title\(shop.title)", in: animation)
            
            Text(shop.price)
                .bold()
                .matchedGeometryEffect(id: "price\(shop.price)", in: animation)
        }
    }
}

struct CardShopView_Previews: PreviewProvider {
    
    @Namespace static var animation
    
    static var previews: some View {
        CardShopView(shop: bags[0], animation: animation)
            .previewLayout(.sizeThatFits)
    }
}
