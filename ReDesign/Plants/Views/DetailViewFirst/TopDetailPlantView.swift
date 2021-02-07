//
//  TopDetailPlantView.swift
//  ReDesign
//
//  Created by Andrej Kling on 06.02.21.
//

import SwiftUI

struct TopDetailPlantView: View {
    
    @Binding var show : Bool
    
    var body: some View {
        
        VStack {
            
            HStack(spacing: 120) {
                
                Button(action: {
                    
                    withAnimation(.easeOut){
                        show.toggle()
                    }
                    
                }, label: {
                    Image("back_arrow")
                })
                
                Button(action: {}, label: {
                    ForEach(0 ..< 3) { item in
                        Circle()
                            .stroke(Color.black, lineWidth: 2)
                            .frame(width: 5, height: 5)
                    }
                })
            }
            .padding()
            .foregroundColor(.black)
        }
    }
}

struct TopDetailPlantView_Previews: PreviewProvider {
    static var previews: some View {
        TopDetailPlantView(show: .constant(false))
    }
}
