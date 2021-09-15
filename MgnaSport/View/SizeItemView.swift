//
//  SizeItemView.swift
//  MgnaSport
//
//  Created by Abdulloh Bahromjonov on 8/4/21.
//

import SwiftUI

struct SizeItemView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack(alignment: .center, spacing: 5, content: {
            ForEach(shop.selectedProduct?.size
                        ?? sampleProduct.size, id: \.self) { size in
                Button(action: {
                    
                }, label: {
                    Text(size)
                        .font(
                            shop.selectedProduct?.size.size ?? sampleProduct.size == helmetSize[0]
                            ||
                            shop.selectedProduct?.size ?? sampleProduct.size == wrapSize[0].size
                            ||
                            shop.selectedProduct?.size ?? sampleProduct.size == ringSize[0].size
                                ? .callout: .footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.gray)
                        .frame(minWidth: 30)
                        .frame(height: 30, alignment: .center)
                        .background(shop.selectedProduct?.size ?? sampleProduct.size)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                })
            }
        })    }
}

struct SizeItemView_Previews: PreviewProvider {
    static var previews: some View {
        SizeItemView()
            .environmentObject(Shop())
    }
}
