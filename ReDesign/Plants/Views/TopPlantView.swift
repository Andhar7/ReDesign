//
//  TopPlantView.swift
//  ReDesign
//
//  Created by Andrej Kling on 05.02.21.
//

import SwiftUI

struct TopPlantView: View {
    var body: some View {
        HStack {
            
            Image("menu")
            
            Spacer(minLength: 0)
        }
        .padding(.horizontal)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }
}

struct TopPlantView_Previews: PreviewProvider {
    static var previews: some View {
        TopPlantView()
    }
}
