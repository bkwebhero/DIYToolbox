//
//  ProjectCellView.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/13/21.
//

import SwiftUI

struct ProjectCellView: View {
    
    var project: Project
    
    var body: some View {
        VStack(alignment: .leading) {
            CellView(cell: project, showIcon: false)
            Spacer()
                .frame(height: 16)
            Text("What You'll Need:")
                .font(.headline)
            CarouselView(items: project.tools)
        }
        
    }
}

struct ProjectCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCellView(project: DataSource.shared.projects[0])
            .previewLayout(.sizeThatFits)
    }
}
