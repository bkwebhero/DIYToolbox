//
//  ContentView.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            
            Text("Projects")
                .font(.title)
            ForEach(DataSource.shared.projects) { project in
                ProjectCellView(project: project)
            }
            
            Text("Tools")
                .font(.title)
            ForEach(DataSource.shared.tools) { tool in
                CellView(cell: tool)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
