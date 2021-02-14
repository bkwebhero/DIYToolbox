//
//  ContentView.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // List is SwiftUI equivalent of UITableView
        // Views declared in closure will appear in a vertical table
        List {
            
            Text("Projects")
                .font(.title)
            ForEach(DataSource.shared.projects) { project in
                ProjectCellView(project: project)
                    .listRowInsets(EdgeInsets())
            }
            ButtonView(text: "More Projects", action: {
                print("No more, I'm not getting paid for this")
            })
            
            Text("Tools")
                .font(.title)
            ForEach(DataSource.shared.tools) { tool in
                CellView(cell: tool)
            }
            ButtonView(text: "More Tools", action: {
                print("No more, this is a free sample")
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
