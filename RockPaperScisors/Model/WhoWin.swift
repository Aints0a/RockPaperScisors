//
//  WhoWin.swift
//  RockPaperScisors
//
//  Created by Jean Yves Kaliva on 2/17/23.
//

import Foundation

struct WhoWin {
    var you: String
    var computer : String
    
    func win() -> Bool{
        if (you == "Rock" && computer == "Rock" ){
            return false
        }else if (you == "Rock" && computer == "Paper"){
            return false
        }else if (you == "Rock" && computer == "Scissors"){
            return true
        }else if (you == "Paper" && computer == "Rock"){
            return true
        }else if (you == "Paper" && computer == "Paper") {
            return false
        }else if (you == "Paper" && computer == "Scissors"){
            return false
        }else if (you == "Scissors" && computer == "Paper"){
            return true
        }else if (you == "Scissors" && computer == "Scissors"){
            return false
        } else {return false}
                    
        }
    }

