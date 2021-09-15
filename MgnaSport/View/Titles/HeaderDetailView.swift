//
//  HeaderDetailView.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 7/18/21.
//

import SwiftUI

struct HeaderDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Text("Protective Gear")
                    .font(.system(size: UIScreen.main.bounds.size.width / 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Text(shop.selectedProduct?.name ?? sampleProduct.name)
                    .font(.system(size: UIScreen.main.bounds.size.width / 11.5))
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
            }
            
            Spacer()
        
        }
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
