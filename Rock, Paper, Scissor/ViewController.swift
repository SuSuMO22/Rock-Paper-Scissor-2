//
//  ViewController.swift
//  Rock, Paper, Scissor
//
//  Created by Sumaiya Mohamed on 2/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userGuess: UILabel!
    @IBOutlet weak var compGuess: UILabel!
    @IBOutlet weak var winner: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    enum Guess: String {
        case rock = "Rock"
        case paper = "Paper"
        case scissor = "Scissor"
    }
    
    enum Winner: String{
        case user = "player wins!"
        case computer = "Computer wins!"
        case tie = "Tie!"
    }
    
    let Mguesses: [Guess] = [.rock, .paper, .scissor]
    
    @IBAction func userGuessed(_ sender: UIButton) {
        
        let cup = computerGuess()
        
        let tappedButton = sender.tag
        
        switch tappedButton{
        case 1:
            winner.text = (theWinner(user: .rock, computer: cup)).rawValue
        case 2:
            winner.text = (theWinner(user: .paper, computer: cup)).rawValue
        case 3:
            winner.text = (theWinner(user: .scissor, computer: cup)).rawValue
        default:
            print("press again")
        }
    }
    
    
    func computerGuess()-> Guess{
        return Mguesses.randomElement()!
    }
    
    func theWinner(user: Guess, computer: Guess)-> Winner{
        
        userGuess.text = "you guessed: \(user.rawValue)"
        compGuess.text = "computer guessed: \(computer.rawValue)"
        
        switch user {
            
        case .rock:
            if computer == .paper {
                return.user
            }else if computer == . scissor{
                return.computer
            }else{
                return .tie
            }
        case .paper:
            if computer == .scissor {
                return.user
            }else if computer == .rock{
                return.computer
            }else{
                return .tie
            }
        case .scissor:
            if computer == .rock {
                return.user
            }else if computer == .paper{
                return.computer
            }else{
                return .tie
            }
        }
        
        
    }
    
    
    
}
