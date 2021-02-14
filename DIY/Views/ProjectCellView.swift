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
        VStack {
            CellView(cell: project, showIcon: false)
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
