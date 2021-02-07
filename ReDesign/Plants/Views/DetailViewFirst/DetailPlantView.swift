//
//  DetailPlantView.swift
//  ReDesign
//
//  Created by Andrej Kling on 06.02.21.
//

import SwiftUI

struct DetailPlantView: View {
    
    @Binding var selected : Plant
    @Binding var show : Bool
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
                .edgesIgnoringSafeArea(.all)
            ScrollView( .vertical , showsIndicators: false) {
                
                VStack {
                    
                    HStack(spacing: 5) {
                        
                        LeftButtonStyle()
                        
                        Image(selected.image)
                            .resizable()
                            .frame(width: 320, height: 650)
                            .cornerRadius(55, corners: [.bottomLeft])
                            .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.4), radius: 15, x: 5, y: 15)
                            .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.4), radius: 15, x: 5, y: -5)
                            .overlay(
                                
                                TopDetailPlantView(show: $show)
                                    .offset(x: -5, y: -230)
                                
                            )
                    }
                    .padding(.horizontal)
                    
                    VStack(alignment: .leading)  {
                        
                        HStack(spacing: 150) {
                            
                            Text(selected.title)
                                .font(.system(size: 33, weight: .regular, design: .serif))
                                .bold()
                            
                            Text(selected.price)
                                .font(.title2)
                                .foregroundColor(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)))
                                .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
                                .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: -5)
                            
                        }
                        .padding(.top)
                        .offset(x: -5)
                        
                        Text("Russia")
                            .font(.system(size: 21, weight: .regular, design: .serif))
                            .foregroundColor(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)))
                            .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
                            .shadow(color: Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: -5)
                    }
                        
                        VStack {
                            
                            HStack {
                                
                                Button(action: {}, label: {
                                    Text("Buy Now")
                                        .padding()
                                        .foregroundColor(.white)
                                        .frame(width: 200, height: 85)
                                        .background(Color(#colorLiteral(red: 0.04482041299, green: 0.5955243707, blue: 0.4120893478, alpha: 1)) .edgesIgnoringSafeArea(.all))
                                        .cornerRadius(35, corners: [.topRight])
                                        .offset(y: 53)
                                })
                                
                                Spacer(minLength: 0)
                                
                                Button(action: {}, label: {
                                    Text("Description")
                                        .padding()
                                        .foregroundColor(.black)
                                        .frame(width: 200, height: 85)
                                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .offset(y: 53)
                                })
                            }
                        }
                        .padding(.bottom, 88)
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct DetailPlantView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPlantView(selected: .constant(plants[0]), show: .constant(false))
    }
}
