//
//  DetailView.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 7/18/21.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .center, spacing: 5, content: {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top , UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HeaderDetailView()
                .padding(.horizontal)
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0, content: {
                
                HStack(alignment: .center, content: {
                    RatingsView()
                        .padding(.top, -10)
                        .padding(.bottom, 10)
                    
                    Spacer()
                    
                    SizeView()
                        .padding(.top, -10)
                        .padding(.bottom, 10)
                })
                
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                Spacer()
                
                HStack(alignment: .center, content: {
                    QuantityView()
                    
                    Spacer()
                    
                    LikeButton()
                })
                .padding(.vertical, 15)
                
                AddToCartDetailVeiw()
                    .padding(.bottom, 20)
                
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
                    .padding(.horizontal, 0)
            )
            
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                shop.selectedProduct?.backgroundColor ?? sampleProduct.backgroundColor
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
            .environmentObject(Shop())
    }
}
