//
//  HeaderView.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/14/21.
//

import SwiftUI

struct HeaderView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(text: "Header")
            .previewLayout(.sizeThatFits)
    }
}
