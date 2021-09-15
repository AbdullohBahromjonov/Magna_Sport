//
//  SearchButton.swift
//  MgnaSport
//
//  Created by Abdulloh Bahromjonov on 7/26/21.
//

import SwiftUI

struct SearchButton: View {
    
    @EnvironmentObject var shop: Shop
    @Binding var text: String
    
    var body: some View {
        HStack {
            if shop.show {
                Image(systemName: "magnifyingglass")
                    .padding(.horizontal, 8)
                    .foregroundColor(.gray)
                
                TextField("Search...", text: $text)
                    .frame(width: .infinity, height: 30)
                
                Button(action: {
                    withAnimation {
                        self.text = ""
                        shop.show.toggle()
                    }
                    
                }){
                    Image(systemName: "xmark.circle")
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 8)
            }
            else {
                Button(action: {
                    withAnimation{
                        shop.show.toggle()
                    }
                }){
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.black)
                }
            }
        }
        .padding(shop.show ? 10 : 0)
        .background(Color(.systemGray6))
        .cornerRadius(20)
    }
}

struct SearchButton_Previews: PreviewProvider {
    @State static var text = ""
    
    static var previews: some View {
        SearchButton(text: $text)
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
