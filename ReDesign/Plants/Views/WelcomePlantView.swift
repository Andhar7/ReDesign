//
//  WelcomePlantView.swift
//  ReDesign
//
//  Created by Andrej Kling on 05.02.21.
//

import SwiftUI

struct WelcomePlantView: View {
    var body: some View {
        VStack {
            
            HStack {
                
                Text("Hi Andrej!")
                    .font(.system(size: 23, weight: .regular, design: .serif))
                    .bold()
                Spacer(minLength: 0)
                Image("logo")
            }
            .padding()
        }
        .padding(.horizontal)
    }
}

struct WelcomePlantView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePlantView()
    }
}
