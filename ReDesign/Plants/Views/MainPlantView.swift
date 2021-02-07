//
//  MainPlantView.swift
//  ReDesign
//
//  Created by Andrej Kling on 05.02.21.
//

import SwiftUI

struct MainPlantView: View {
    
    
    @Binding var selected : Plant
    @Binding var show : Bool
    
    var body: some View {
        VStack {
            
            ScrollView(.vertical){
                
                ZStack(alignment: Alignment.bottom) {
                    
                    VStack {
                        
                        HStack {
                            
                            TopPlantView()
                        }
                        WelcomePlantView()
                    }
                }
                .frame(height: 210, alignment: .center)
                .background(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)))
                .cornerRadius(55, corners: [.bottomLeft, .bottomRight])
                
                VStack {
                    
                    SearchPlantView()
                        .offset(y: -55)
                    
                    HStack{
                        
                        LinePlantView()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: -15) {
                            
                            ForEach(plants) { plant in
                                
                                GeometryReader { geometry in
                                    CardPlantView(plant: plant)
                                        .rotation3DEffect(
                                            Angle(degrees: Double(geometry.frame(in: .global).minX - 31) / -22),
                                            axis: (x: 0, y: 5, z: 0))
                                        .onTapGesture{
                                            withAnimation(.easeIn) {
                                                selected = plant
                                                show.toggle()
                                                
                                            }
                                        }
                                }
                                .frame(width: 210, height: 340)
                            }
                        }
                        .padding()
                    }
                    
                    LineItemView(title: "Featured Plants", button: "More")
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: -15) {
                            
                            ForEach(plants2) { plant2 in
                                
                                GeometryReader { geometry in
                                    CardPlantView(plant: plant2)
                                        .rotation3DEffect(
                                            Angle(degrees: Double(geometry.frame(in: .global).minX - 31) / -22),
                                            axis: (x: 0, y: 5, z: 0))
                                        .onTapGesture{
                                            withAnimation(.easeIn) {
                                                selected = plant2
                                                show.toggle()
                                                
                                            }
                                        }
 
                                }
                                .frame(width: 210, height: 340)
                            }
                        }
                        .padding()
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct MainPlantView_Previews: PreviewProvider {
    static var previews: some View {
        MainPlantView(selected: .constant(plants[0]), show: .constant(false))
    }
}
