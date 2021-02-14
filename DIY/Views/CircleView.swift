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
        ZStack {
            Color.gray
            Image(item.iconName)
                .resizable()
                .frame(width: 45, height: 45)
                .aspectRatio(contentMode: .fit)
        }
        .frame(width: 66, height: 66)
        .cornerRadius(33)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(item: DataSource.shared.tools[0])
    }
}
