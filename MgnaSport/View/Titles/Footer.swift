//
//  Footer.swift
//  Touch down
//
//  Created by Abdulloh Bahromjonov on 5/3/21.
//

import SwiftUI

struct Footer: View {
    var body: some View {
        VStack {
            Text("We offer th most cutting edge, comfortable, lightweight and durable products for Boxing in the market at affordable prices.")
                .multilineTextAlignment(.center)
                .frame(height: 100)
                .foregroundColor(.gray)
                .padding(.horizontal, 30)
            
            Image(uiImage: #imageLiteral(resourceName: "MAGAN"))
                .resizable()
                .scaledToFit()
                .frame(height: 80)
            
            Text("Copyright @ Bahromjanov Abdulloh")
                .foregroundColor(.gray)
            Text("All right reserved")
                .foregroundColor(.gray)
        }
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
