//
//  ContentView.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView() {
            VStack {
                
                // Projects
                VStack(alignment: .leading) {
                    HeaderView(text: "Projects")
                    ForEach(DataSource.shared.projects) { project in
                        ProjectCellView(project: project)
                    }
                    .padding([.top, .bottom])
                    FooterView(text: "More Projects")
                        .onTapGesture {
                            print("Navigate to projects page")
                        }
                }
                .padding([.top, .bottom])
                
                // Tools
                VStack(alignment: .leading) {
                    HeaderView(text: "Tools")
                    ForEach(DataSource.shared.tools) { tool in
                        CellView(cell: tool)
                    }
                    .padding([.top, .bottom])
                    FooterView(text: "More Tools")
                        .onTapGesture {
                            print("Navigate to tools page")
                        }
                }
                .padding([.top, .bottom])
                
            }
            
            .padding([.leading, .trailing])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
