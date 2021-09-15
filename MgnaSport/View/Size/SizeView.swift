//
//  SizeView.swift
//  MgnaSport
//
//  Created by Abdulloh Bahromjonov on 8/9/21.
//

import SwiftUI

struct SizeView: View {
    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack(alignment: .trailing, spacing: 3, content: {
            Text("Sizes")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            HStack(alignment: .center, spacing: 5, content: {
                ForEach(shop.selectedProduct?.sizes ?? sampleProduct.sizes,
                        id: \.self) { size in
                     SizeItemView(size: size)
                }
            })

        })
    }
}

struct SizeView_Previews: PreviewProvider {
    static var previews: some View {
        SizeView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
