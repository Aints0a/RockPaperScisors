//
//  ComputerImageBrain.swift
//  RockPaperScisors
//
//  Created by Jean Yves Kaliva on 2/17/23.
//

import Foundation

struct ComputerImageBrain {
    let imagesAvailable = ["Rock","Paper","Scissors"]
    var imagePicked : String {
        return imagesAvailable.randomElement() ?? "Rock"
    }
    
}
