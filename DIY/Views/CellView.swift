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
        HStack {
            if showIcon {
                VStack {
                    ZStack {
                        Color.gray
                        Image(cell.iconName)
                            .resizable()
                            .frame(width: 45, height: 45)
                            .aspectRatio(contentMode: .fit)
                    }
                    .frame(width: 66, height: 66)
                    .cornerRadius(33)
                    Spacer()
                }
            }
            
            VStack(alignment: .leading) {
                Text(cell.name)
                    .font(.headline)
                Text(cell.description)
                    .font(.callout)
            }
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(cell: DataSource.shared.tools[0])
    }
}
