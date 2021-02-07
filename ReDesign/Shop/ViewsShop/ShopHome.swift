//
//  ShopHome.swift
//  ReDesign
//
//  Created by Andrej Kling on 06.02.21.
//

import SwiftUI

struct ShopHome: View {
    
    @State private var isSelection : Shop!
    @State private var check = false
    @Binding var selectColor : Color
    @Namespace var animation
    
    var columns = [
        GridItem(),
        GridItem()
    ]
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                    HStack {
                        
                        Button(action: {}, label: {
                            Image(systemName: "square.grid.2x2")
                                .padding()
                                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                .cornerRadius(15, corners: [.bottomLeft, .topRight])
                                .shadow(color: Color(#colorLiteral(red: 0.3934569955, green: 0.8421524167, blue: 0.7535114884, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
                                .shadow(color: Color(#colorLiteral(red: 0.3934569955, green: 0.8421524167, blue: 0.7535114884, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: -5)
                               
                        })
             
                        Spacer(minLength: 0)
                        
                            Text("Shop")
                                .font(.system(size: 21, weight: .regular, design: .serif))
                                .bold()
                                .padding()
                                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                .cornerRadius(15, corners: [.bottomRight, .topLeft])
                                .shadow(color: Color(#colorLiteral(red: 0.3934569955, green: 0.8421524167, blue: 0.7535114884, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
                                .shadow(color: Color(#colorLiteral(red: 0.3934569955, green: 0.8421524167, blue: 0.7535114884, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: -5)
             
                        Spacer(minLength: 0)
                        
                        HStack {
                            Button(action: {}, label: {
                                Image(systemName: "magnifyingglass")
                                     
                            })
                            
                            Button(action: {}, label: {
                                Image(systemName: "cart")
                                    
                            })
                        }
                        .padding()
                        .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .cornerRadius(15, corners: [.bottomLeft, .topRight])
                        .shadow(color: Color(#colorLiteral(red: 0.3934569955, green: 0.8421524167, blue: 0.7535114884, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
                        .shadow(color: Color(#colorLiteral(red: 0.3934569955, green: 0.8421524167, blue: 0.7535114884, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: -5)
                    }
                    .padding()
                    .foregroundColor(.black)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.top))
                    .shadow(color: Color(#colorLiteral(red: 0.3934569955, green: 0.8421524167, blue: 0.7535114884, alpha: 1)).opacity(0.3), radius: 5, x: 5, y: 5)
                    .shadow(color: Color(#colorLiteral(red: 0.3934569955, green: 0.8421524167, blue: 0.7535114884, alpha: 1)).opacity(0.3), radius: 5, x: -5, y: -5)
    
                
                ButtonsShopView()
                
                VStack {
                    
                    ScrollView {
                        
                        LazyVGrid(columns: columns) {
                            
                            ForEach(bags) { item in
                                
                                GeometryReader { geometry in
                                    
                                    CardShopView(shop: item, animation: animation)
                                        .onTapGesture {
                                            withAnimation(.easeIn){
                                                isSelection = item
                                                check.toggle()
                                            }
                                        }
                                }
                                .frame(width: 180, height: 310)
                            }
                        }
                        .padding(.top)
                        .padding(.horizontal, 12)
                        .padding(.bottom, 33)
                    }
                }
            }
            if isSelection != nil && check {
                
                DetailShopView(isSelection: $isSelection,  selectColor: $selectColor, check: $check, animation: animation)
            }
        }
//        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ShopHome_Previews: PreviewProvider {
    static var previews: some View {
        ShopHome(selectColor: .constant(Color(#colorLiteral(red: 0.1834901273, green: 0.4343702197, blue: 0.5955243707, alpha: 1))))
    }
}
