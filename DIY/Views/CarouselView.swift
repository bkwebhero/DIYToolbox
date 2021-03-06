//
//  CarouselView.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/13/21.
//

import SwiftUI

struct CarouselView: View {
    
    var items: [CarouselDisplayable]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<items.count) { index in
                    VStack {
                        CircleView(item: items[index])
                        Text(items[index].name)
                            .font(.caption)
                    }
                }
            }
            .padding([.leading, .trailing])
        }
        .padding([.leading, .trailing], -16)
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView(items: DataSource.shared.projects[0].tools)
            .previewLayout(.sizeThatFits)
    }
}
