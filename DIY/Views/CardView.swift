//
//  CardView.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/14/21.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        Color(.opaqueSeparator)
            .cornerRadius(16)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
