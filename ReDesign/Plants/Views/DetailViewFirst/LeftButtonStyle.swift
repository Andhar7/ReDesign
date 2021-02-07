//
//  LeftButtonStyle.swift
//  ReDesign
//
//  Created by Andrej Kling on 06.02.21.
//

import SwiftUI

struct LeftButtonStyle: View {
    
    var icons = [ "sun", "icon_2", "icon_3", "icon_4"]
    
    var body: some View {
        
        VStack(spacing: 55) {
            
            ForEach(icons, id:\.self) { item in
                
               IconItemView(icon: item)
            }
        }
    }
}

struct LeftButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        LeftButtonStyle()
    }
}

 
