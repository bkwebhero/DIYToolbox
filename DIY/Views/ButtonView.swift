//
//  ButtonView.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/13/21.
//

import SwiftUI

struct ButtonView: View {
    var text: String
    var action: (() -> Void)
    
    var body: some View {
        Button(action: action, label: {
            ZStack {
                Color.blue
                Text(text)
                    .foregroundColor(.white)
            }
        })
        .frame(height: Constants.buttonHeight)
        .cornerRadius(Constants.buttonCornerRadius)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "Press Me", action: {
            print("Pressed!")
        })
        .previewLayout(.sizeThatFits)
    }
}
