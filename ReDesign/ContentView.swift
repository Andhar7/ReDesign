//
//  ContentView.swift
//  ReDesign
//
//  Created by Andrej Kling on 05.02.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection : Tab = .plants
    @Binding var selectColor : Color
    
    enum Tab {
        case plants
        case shop
    }
    
    var body: some View {
        
        TabView(selection: $selection) {
            ShowPlantViews()
                .tabItem {
                    Label("Plants", systemImage: "leaf")
                }
                .tag(Tab.plants)
            
           ShopHome(selectColor: $selectColor)
                .tabItem {
                    Label("Shop", systemImage: "giftcard")
                }
                .tag(Tab.shop)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectColor: .constant(Color(#colorLiteral(red: 0.1834901273, green: 0.4343702197, blue: 0.5955243707, alpha: 1))))
    }
}
