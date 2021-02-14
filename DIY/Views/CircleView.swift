//
//  CircleView.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/13/21.
//

import SwiftUI



struct CircleView: View {
    
    var item: CircleViewRepresentable
    
    var body: some View {
        // ZStack: back to front
        // Each view declared will appear on top of the previous
        ZStack {
            let imageHeight: CGFloat = Constants.circleWidth - (2 * Constants.circleIconPadding)
            
            Color.gray
            Image(item.iconName)
                .resizable()
                .frame(width: imageHeight, height: imageHeight)
                .aspectRatio(contentMode: .fit)
        }
        .frame(width: Constants.circleWidth, height: Constants.circleWidth)
        // cornerRadius is how the view appears to be a circle - divide width by 2
        .cornerRadius(Constants.circleWidth / 2)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(item: DataSource.shared.tools[0])
            .previewLayout(.sizeThatFits)
    }
}
