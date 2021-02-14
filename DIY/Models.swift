//
//  Models.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/13/21.
//

import Foundation

protocol CircleViewRepresentable {
    var iconName: String { get set }
}

protocol CarouselDisplayable: CircleViewRepresentable {
    var name: String { get set }
}

protocol CellDisplayable: CarouselDisplayable {
    var description: String { get set }
}

struct Tool: CellDisplayable, CarouselDisplayable, Identifiable {
    var id: String
    
    var name: String
    var description: String
    var iconName: String
    var video: Video?
    
    init(name: String, description: String, iconName: String, video: Video? = nil) {
        self.id = name
        self.name = name
        self.description = description
        self.iconName = iconName
        self.video = video
    }
}

struct Project: CellDisplayable, Identifiable {
    var id: String
    
    var name: String
    var description: String
    var iconName: String
    var tools: [Tool]
    var video: Video?
    
    init(name: String, description: String, iconName: String, tools: [Tool], video: Video? = nil) {
        self.id = name
        self.name = name
        self.description = description
        self.iconName = iconName
        self.tools = tools
        self.video = video
    }
}

struct Video {
    var url: String
    var thumbnail: String
}
