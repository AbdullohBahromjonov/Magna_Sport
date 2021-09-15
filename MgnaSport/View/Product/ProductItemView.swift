//
//  ProductItemView.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 7/14/21.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 170)
                    .padding(10)
            }
            .background(
                Color(product.backgroundColor)
                    .frame(width: 200, height: 300)
            )
            .cornerRadius(12)
            
            Text(product.name)
                .font(.system(size: 25))
                .fontWeight(.black)
                .padding(.horizontal, 8)
                .frame(height: 25)
            
            Text("$\(product.price)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                .padding(.horizontal, 8)
        })
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: productsData[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(backgroundColor)
        
    }
}
