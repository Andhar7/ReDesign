//
//  ShowPlantViews.swift
//  ReDesign
//
//  Created by Andrej Kling on 06.02.21.
//

import SwiftUI

struct ShowPlantViews: View {
    
    @State private var selected : Plant = plants[0]
    @State private var show = false
    
    var body: some View {
        
        ZStack {
            
            MainPlantView(selected: $selected, show: $show)
            
            if  show {
                
                DetailPlantView(selected: $selected, show: $show)
            }
        }
    }
}

struct ShowPlantViews_Previews: PreviewProvider {
    static var previews: some View {
        ShowPlantViews()
    }
}
