//
//  CellView.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/13/21.
//

import SwiftUI

struct CellView: View {
    
    // Can be tool or project
    var cell: CellDisplayable
    var showIcon: Bool = true
    
    var body: some View {
        
        // HStack: Horizontal Stack
        // Views declared inside will appear next to each other, from left to right
        HStack {
            if showIcon {
                
                // VStack: Vetical Stack
                // Views declared inside will appear from top to bottom
                VStack {
                CircleView(item: cell)
                    .frame(alignment: .top)
                    
                // Spacer: Fills available space that previous view could not
                Spacer()
                }
                // Stop spacer above from forcing the text on the right to stretch to fill available space
                .fixedSize(horizontal: false, vertical: true)
            }
            
            VStack(alignment: .leading) {
                Text(cell.name)
                    .font(.title)
                Text(cell.description)
                    .font(.callout)
            }
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(cell: DataSource.shared.tools[6])
            .previewLayout(.sizeThatFits)
    }
}
