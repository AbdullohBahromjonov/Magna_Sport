//
//  QuantityView.swift
//  MgnaSport
//
//  Created by Abdulloh Bahromjonov on 8/8/21.
//

import SwiftUI

struct QuantityView: View {
    
    @State private var counter = 0
    
    var body: some View {
        HStack(spacing: 20, content: {
            
            MinusButton(counter: $counter)
            
            Text("\(counter)")
                .font(.title)
                .fontWeight(.semibold)
                .frame(minWidth: UIScreen.main.bounds.size.width / 14)
            
            PlusButton(counter: $counter)
            
        })
    }
}

struct QuantityView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
