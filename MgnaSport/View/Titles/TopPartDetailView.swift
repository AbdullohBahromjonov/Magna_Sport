//
//  TopPartDetailView.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 7/18/21.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @State private var isAnimating = false
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .font(.system(size: UIScreen.main.bounds.size.width / 22))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                
                Text("$\(shop.selectedProduct?.price ?? sampleProduct.price)")
                    .font(.system(size: UIScreen.main.bounds.size.width / 15))
                    .font(.title)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
                    .foregroundColor(.black)
            })
            .offset(y: isAnimating ? -50: -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.size.width / 2)
                .offset(y: isAnimating ? 0: -35)
            
        })
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
        
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
