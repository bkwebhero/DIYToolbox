//
//  DataSource.swift
//  DIY
//
//  Created by Benjamin Kelsey on 2/13/21.
//

import Foundation

struct DataSource {
    
    static var shared: DataSource = DataSource()
    
    var tools: [Tool] = [
        Tool(name: "Power Drill",
             description: "Need to put a hole in something? Look no further.",
             iconName: "070-drill"),
        
        Tool(name: "Circular Saw",
             description: "Make clean cuts to get your lumber to size.",
             iconName: "055-power-saw-1"),
        
        Tool(name: "Jackhammer",
             description: "Break up that huge concrete slab in the backyeard and get rid of it.",
             iconName: "049-jackhammer"),
        
        Tool(name: "Level",
             description: "Check that your picture frames, shelves, or countertops are straight and level.",
             iconName: "059-level"),
        
        Tool(name: "Staple Gun",
             description: "Secure your upholstery, wood, or carpet.",
             iconName: "058-staple-gun"),
        
        Tool(name: "Chainsaw",
             description: "Make less refined cuts with more maneuverability.",
             iconName: "034-chainsaw"),
        
        Tool(name: "Caulking Gun",
             description: "Hide the ugly cracks around your shower and prevent moisture from getting into your walls.",
             iconName: "008-sealant-gun")
    ]
    
    var projects: [Project] = [
        
        Project(name: "Paint the Walls",
                description: "Bring those drab walls into the new year with a fresh coat of paint.",
                iconName: "060-paint-roller",
                tools: [
                    Tool(name: "Paint Roller",
                         description: "Apply paint for speed over large surfaces.",
                         iconName: "060-paint-roller"),
                    
                    Tool(name: "Paint Brush",
                         description: "Apply paint for more control on small surfaces.",
                         iconName: "019-paintbrush"),
                    
                    Tool(name: "Scraper",
                         description: "Scrape any gunk off of your walls before painting.",
                         iconName: "040-scraper-3")
                    
                ]),
        
        Project(name: "Build a Workbench",
                description: "Why buy a workbench when you can make one yourself?",
                iconName: "046-work-bench",
                tools: [
                    Tool(name: "Ruler",
                         description: "This baby can both measure AND be a straight edge.",
                         iconName: "020-ruler"),
                    
                    Tool(name: "Hammer",
                         description: "You need something to drive nails through the wood.",
                         iconName: "032-hammer-1"),
                    
                    Tool(name: "Circular Saw",
                         description: "Make clean cuts to get your lumber to size.",
                         iconName: "055-power-saw-1"),
                    
                    Tool(name: "Power Drill",
                         description: "Need to put a hole in something? Look no further.",
                         iconName: "070-drill"),
                    
                    Tool(name: "Level",
                         description: "Check that your picture frames, shelves, or countertops are straight and level.",
                         iconName: "059-level")
                    
                ])
    ]
    
}
