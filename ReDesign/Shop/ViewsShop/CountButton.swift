//
//  CountButton.swift
//  ReDesign
//
//  Created by Andrej Kling on 07.02.21.
//

import SwiftUI

struct CountButton: View {
    
    @State private var count = 0
    
    var body: some View {
        HStack(spacing: 20){
            
            Button(action: {
                if count > 0{count -= 1}
            }) {
                
                Image(systemName: "minus")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .frame(width: 35, height: 35)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth: 1))
            }
            
            Text("\(count)")
                .font(.title2)
            
            Button(action: {count += 1}) {
                
                Image(systemName: "plus")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .frame(width: 35, height: 35)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth: 1))
            }
            
            Spacer()
            
            Button(action: {}) {
                
                Image(systemName: "suit.heart.fill")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.red)
                    .clipShape(Circle())
            }
        }
        .padding(.horizontal)
    }
}

struct CountButton_Previews: PreviewProvider {
    static var previews: some View {
        CountButton()
    }
}
