//
//  ViewController.swift
//  Pedra-Papel-Tesoura
//
//  Created by Kleiton Mendes on 20/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    var myPoints = 0
    var tiedGame = 0
    var computerPoints = 0
    let jokenpo = ["paper","stone","scissors"] // string türde bir dizi oluşturuldu.
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var myPointsLabel: UILabel!
    @IBOutlet weak var computerPointsLabel: UILabel!
    @IBOutlet weak var tiedGameLabel: UILabel!
    
   
    var randon: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func paperButton(_ sender: UIButton) {
        
        let randomSelected = Int(arc4random_uniform(3)) // 0,1,2
        let computerSelected = jokenpo[randomSelected]
        
        if computerSelected == "paper" {
            myImageView.image = UIImage(named: "paper.png")
            computerImageView.image = UIImage(named: "paper.png")
            winLabel.text = "Houve empate!"
            tiedGame += 1
            tiedGameLabel.text = String(tiedGame)

        }else if computerSelected == "stone" {
            myImageView.image = UIImage(named: "paper.png")
            computerImageView.image = UIImage(named: "stone.png")
            winLabel.text = "Eu ganhei!"
            
            myPoints += 1
            myPointsLabel.text = String(myPoints)
            
        }else if computerSelected == "scissors" {
            myImageView.image = UIImage(named: "paper.png")
            computerImageView.image = UIImage(named: "scissors.png")
            winLabel.text = "O computador ganhou!"
            
            computerPoints += 1
            computerPointsLabel.text = String(computerPoints)
            
        }
    }
    
    @IBAction func stoneButton(_ sender: UIButton) {
        
        let randomSelected = Int(arc4random_uniform(3))
        let computerSelected = jokenpo[randomSelected]
        
        if computerSelected == "paper" {
            myImageView.image = UIImage(named: "stone.png")
            computerImageView.image = UIImage(named: "paper.png")
            winLabel.text = "O computador ganhou!"
            computerPoints += 1
            myPointsLabel.text = String(myPoints)
            
        }else if computerSelected == "stone" {
            myImageView.image = UIImage(named: "stone.png")
            computerImageView.image = UIImage(named: "stone.png")
            winLabel.text = "Houve empate!"
            tiedGame += 1
            tiedGameLabel.text = String(tiedGame)

        }else if computerSelected == "scissors" {
            myImageView.image = UIImage(named: "stone.png")
            computerImageView.image = UIImage(named: "scissors.png")
            winLabel.text = "O computador ganhou!"
            
            computerPoints += 1
            computerPointsLabel.text = String(computerPoints)
            
        }
    }
    
    
    @IBAction func scissorsButton(_ sender: UIButton) {
        
        let randomSelected = Int(arc4random_uniform(3))
        let computerSelected = jokenpo[randomSelected]
        
        if computerSelected == "paper" {
            myImageView.image = UIImage(named: "scissors.png")
            computerImageView.image = UIImage(named: "paper.png")
            winLabel.text = "Eu ganhei!"
            myPoints += 1
            myPointsLabel.text = String(myPoints)
            
        }else if computerSelected == "stone" {
            myImageView.image = UIImage(named: "scissors.png")
            computerImageView.image = UIImage(named: "stone.png")
            winLabel.text = "O computador ganhou!"
            computerPoints += 1
            computerPointsLabel.text = String(computerPoints)
            
        }else if computerSelected == "scissors" {
            myImageView.image = UIImage(named: "scissors.png")
            computerImageView.image = UIImage(named: "scissors.png")
            winLabel.text = "Houve empate!"
            tiedGame += 1
            tiedGameLabel.text = String(tiedGame)

        }
    }
    
}
