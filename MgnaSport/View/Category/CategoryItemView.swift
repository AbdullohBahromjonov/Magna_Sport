//
//  CategoryItemView.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 5/10/21.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
            HStack {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.size.width / 11, alignment: .center)
                    .foregroundColor(shop.categoryPressed == category.name ? .white : .gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(shop.categoryPressed == category.name ? .white : .gray)
                    
                
                Spacer()
            }
            
            .padding()
            .background(shop.categoryPressed == category.name ? Color(#colorLiteral(red: 0.803850472, green: 0.8039670587, blue: 0.8038249612, alpha: 1)) : .white)
            .cornerRadius(12)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .onTapGesture {
                withAnimation(.easeIn) {
                    shop.categoryPressed = category.name
                    shop.selectedCategory = category
                }
                
            }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categoryData[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(backgroundColor)
            .environmentObject(Shop())
    }
}
