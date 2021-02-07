//
//  DetailShopView.swift
//  ReDesign
//
//  Created by Andrej Kling on 06.02.21.
//

import SwiftUI

struct DetailShopView: View {
    
    @Binding var isSelection : Shop!
    @State var isSmallDevice = UIScreen.main.bounds.height < 750
    @Binding var selectColor : Color
    @Binding var check : Bool
    var animation : Namespace.ID
    
    var body: some View {
        
        ZStack {
            
            Color(isSelection.image)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        withAnimation(.easeOut){
                            check.toggle()
                        }
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.title)
                    })
                    Spacer(minLength: 0)
                    
                    Image(systemName: "magnifyingglass")
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "cart")
                            .font(.title)
                    })
                }
                .padding()
                .foregroundColor(.white)
                
                VStack {
            
                    HStack {
                        Text(isSelection.title)
                            .font(.system(size: 33, weight: .regular, design: .serif))
                            .matchedGeometryEffect(id: "title\(isSelection.title)", in: animation)
                        Spacer()
                    }
                    .padding()
                    .foregroundColor(.white)
                        
                    HStack(spacing: 10){
                            
                            VStack(alignment: .leading, spacing: 5.0) {
                                
                                Text("Price")
                                      .font(.system(size: 14, weight: .regular, design: .serif))
                                
                                Text(isSelection.price)
                                    .font(.largeTitle)
                                    .matchedGeometryEffect(id: "price\(isSelection.price)", in: animation)
                            }
                            .foregroundColor(.white)
                            
                            Image(isSelection.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .matchedGeometryEffect(id: "image\(isSelection.image)", in: animation)
                              
                       
                        }
                        .padding()
                        .padding(.top, 10)
                        .zIndex(1)
                    
                    VStack {
                        
                        ScrollView(isSmallDevice ? .vertical : .init(), showsIndicators: false) {
                            
                            HStack(spacing: 15)  {
                                
                                VStack(alignment: .leading, spacing: 5.0) {
                                    
                                    Text("Color")
                                        .font(.system(size: 15, weight: .regular, design: .serif))
                                    ColorButton()
                                }
                                
                               Spacer(minLength: 0)
                                
                                VStack(alignment: .leading, spacing: 5.0) {
                                    
                                    Text("Size")
                                          .font(.system(size: 15, weight: .regular, design: .serif))
                                    Text("12 cm")
                                        .bold()
                                }
                            }
                            .padding(.horizontal)
                            
                                ScrollView(.vertical, showsIndicators: false) {
                                    
                                    Text(isSelection.description)
                                       .font(.system(size: 18, weight: .regular, design: .serif))
                                        .multilineTextAlignment(.leading)
                                }
                             
                      
                            CountButton()
                            
                            Button(action: {}) {
                                
                                Text("BUY NOW")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width - 120, height: 33)
                                    .background(Color(isSelection.image))
                                    .clipShape(Capsule())
                            }
                        }
                    }
                    .background(
                        Color.white
                            .clipShape(CustomCorner())
                            .padding(.top, isSmallDevice ? -60 : -100)
                            .edgesIgnoringSafeArea(.bottom)
                    )
                    .zIndex(0)
                }
            }
        }
    }
}

struct DetailShopView_Previews: PreviewProvider {
    
    @Namespace static var animation
    
    static var previews: some View {
        DetailShopView(isSelection: .constant(bags[0]), selectColor: .constant(Color(#colorLiteral(red: 0.1834901273, green: 0.4343702197, blue: 0.5955243707, alpha: 1))), check: .constant(false), animation: animation)
    }
}
