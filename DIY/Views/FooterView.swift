//
//  FooterView.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/14/21.
//

import SwiftUI

struct FooterView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(.blue)
            .font(.title)
            .fontWeight(.bold)
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView(text: "Footer")
            .previewLayout(.sizeThatFits)
    }
}
