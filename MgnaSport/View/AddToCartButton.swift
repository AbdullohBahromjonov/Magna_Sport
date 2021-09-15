//
//  AddToCartDetailVeiw.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 7/19/21.
//

import SwiftUI

struct AddToCartDetailVeiw: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            print(shop.selectedProduct?.name ?? "")
            print(shop.selectedSize)
            print("stars\(shop.selectedStar.id)")
        }, label: {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .frame(height: UIScreen.main.bounds.size.height / 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .padding(15)
        .background(Color(shop.selectedProduct?.backgroundColor ?? sampleProduct.backgroundColor))
        .clipShape(Capsule())
    }
}

struct AddToCartDetailVeiw_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailVeiw()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
