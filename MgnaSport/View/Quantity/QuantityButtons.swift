//
//  QuantityButtons.swift
//  MgnaSport
//
//  Created by Abdulloh Bahromjonov on 8/8/21.
//

import SwiftUI

struct MinusButton: View {
    @Binding var counter: Int
    
    var body: some View {
        Button(action: {
            if counter > 0 {
                counter -= 1
            }
        }, label: {
            Image(systemName: "minus.circle")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.size.width / 10)
                .foregroundColor(.black)
                
        })
    }
}

struct PlusButton: View {
    @Binding var counter: Int
    
    var body: some View {
        Button(action: {
            if counter < 100 {
                counter += 1
            }
        }, label: {
            Image(systemName: "plus.circle")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.size.width / 10)
                .foregroundColor(.black)
        })
    }
}

struct QuantityButtons_Previews: PreviewProvider {
    @State static var counter = 0
    
    static var previews: some View {
        MinusButton(counter: $counter)
            .previewLayout(.sizeThatFits)
            .padding()
        PlusButton(counter: $counter)
            .previewLayout(.sizeThatFits)
            .padding()
    }
    
    
}
