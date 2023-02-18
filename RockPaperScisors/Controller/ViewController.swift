//
//  ViewController.swift
//  RockPaperScisors
//
//  Created by Jean Yves Kaliva on 2/16/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var youImageView: UIImageView!
 
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var computerImageView: UIImageView!
   
    
    @IBOutlet weak var timeProgressBar: UIProgressView!
   
    var score = 0
    var prog : Float = 0.0
    var round = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
//MARK: - ProgressBar Initialisation
        if round<10 {
        round = round + 1
        prog = Float(round)/10
        timeProgressBar.progress = prog
        
            if let actionTilte = (sender.titleLabel?.text){
                switch actionTilte {
                case "Rock":
                    youImageView.image = UIImage(named: "Rock")
                case "Paper":
                    youImageView.image = UIImage(named: "Paper")
                case "Scissors":
                    youImageView.image = UIImage(named: "Scissors")
                default:
                    return
                }
                
                //MARK: - Showing random Computer Image
                
                let computerShowImage = ComputerImageBrain()
                let computerImage = computerShowImage.imagePicked
                computerImageView.image =  UIImage(named: computerImage)
                
                //MARK: - score Compting
                let winner = WhoWin(you: actionTilte, computer: computerImage)
                if winner.win() == true {
                    
                    score = score + 1
                    print (score)
                    scoreLabel.text = "Score:" + String(score) + "/10"
                } else {return}
                
            }
            
        } else {print ("End of the game")
            let alert = UIAlertController(title: "Game Over", message: "Your score is \(score).", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default){ (action) in
                self.restartGame()
            }
            alert.addAction(restartAction)

            let cancelAction = UIAlertAction(title: "Cancel", style: .default){ (action)in
                return
            }
            alert.addAction(cancelAction)
            present(alert, animated: true,completion: nil)
        }
    }
    
   func restartGame(){
        score = 0
       scoreLabel.text = "Score:" + String(score) + "/10"
        round = 0
        timeProgressBar.progress = 0.0
    }
     
    @IBAction func rulesButton(_ sender: UIButton) {
        performSegue(withIdentifier:"showRules", sender: self)
    }
}
    
   
        
    
    



