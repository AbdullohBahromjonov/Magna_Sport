//
//  SizeItemView.swift
//  MgnaSport
//
//  Created by Abdulloh Bahromjonov on 8/9/21.
//

import SwiftUI

struct SizeItemView: View {
    @EnvironmentObject var shop: Shop
    let defaultColor = Color.gray
    let selectedColor = Color.white
    @State var pressed = false
    let size: String
    var body: some View {
        ZStack {
            Text(size)
                .font(.callout)
                .fontWeight(.black)
                .frame(height: 30, alignment: .center)
                .frame(minWidth: 30)
                .foregroundColor(shop.selectedSize == size ? selectedColor : defaultColor)
                .background(
                    Color(shop.selectedSize == size ? .gray : .white)
                        .cornerRadius(5)
                )
                .background(
                    RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, style: StrokeStyle(lineWidth: 1))
                )
                
        }
        .onTapGesture {
            shop.selectedSize = size
        }
    }
}

struct SizeItemView_Previews: PreviewProvider {
    static var previews: some View {
        SizeItemView(size: "")
            .previewLayout(.sizeThatFits)
            .environmentObject(Shop())
    }
}
