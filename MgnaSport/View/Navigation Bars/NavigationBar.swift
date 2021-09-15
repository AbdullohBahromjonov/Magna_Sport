//
//  NavigationBar.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 5/2/21.
//

import SwiftUI



struct NavigationBar: View {
    @State private var isAnimated: Bool = false
    @EnvironmentObject var shop: Shop
    @Binding var text: String
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(){
                    shop.show = true
                }
            }, label: {
                if shop.show == true {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .padding(.horizontal, 8)
                            .foregroundColor(.gray)
                        
                        TextField("Search...", text: $text)
                        
                        Button(action: {
                            self.text = ""
                            shop.show = false
                            isAnimated = false
                        }, label: {
                            Image(systemName: "xmark.circle")
                                .foregroundColor(.gray)
                            
                        })
                        .padding(.horizontal, 8)
                    }
                    .frame(width: shop.show ? UIScreen.main.bounds.size.width - 54 : 0)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 10)
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                }
                else {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    
                }
                
               
                
            })
               
            if shop.show == false {
                Spacer()
                
                Image(uiImage: #imageLiteral(resourceName: "MAGAN"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: isAnimated ? 80 : 0)
                    .onAppear(perform: {
                        withAnimation(.easeOut(duration: 0.6)){
                            isAnimated.toggle()
                        }
                    })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                        .overlay(
                            Circle()
                                .fill(Color.red)
                                .frame(width: 14, height: 14)
                                .offset(x: 13, y: -10)
                        )
                })
            }
            
        }
        .frame(height: 40)
        
        
    }
    
}

