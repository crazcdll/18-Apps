//
//  ViewController.swift
//  Noughts And Crosses
//
//  Created by ZC on 16/1/15.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activeState = 1 // 1 == noughts  2 == corsses
    
    var gameActive = true
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let winningCombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func playAgain(sender: AnyObject) {
        
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        
        activeState = 1
        
        gameActive = true
        
        gameOverLabel.hidden = true
        
        gameOverLabel.center = CGPointMake(gameOverLabel.center.x - 500, gameOverLabel.center.y)
        
        playAgainButton.hidden = true
        
        playAgainButton.center = CGPointMake(playAgainButton.center.x - 500, playAgainButton.center.y)
        
        var buttonToClear : UIButton
        
        for var i = 0; i < 9; i++ {
            
            buttonToClear = view.viewWithTag(i) as! UIButton
            
            buttonToClear.setImage(nil, forState: .Normal)
            
        }
        
        
    }
    
    @IBOutlet weak var gameOverLabel: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        if (gameState[sender.tag] == 0 && gameActive == true) {
            
            gameState[sender.tag] = activeState
        
            if activeState == 1 {
            
                sender.setImage(UIImage(named: "nought.png"), forState: .Normal)
                
                activeState = 2
                
            }else {
                
                sender.setImage(UIImage(named: "cross.png"), forState: .Normal)
                
                activeState = 1
                
            }
        }
        
        for combination in winningCombinations {
            
            if (gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] && gameActive == true) {
                
                gameActive = false
                
                if gameState[combination[0]] == 1 {
                
                    gameOverLabel.text = "Noughtes have won!"
                
                } else {
                    
                    gameOverLabel.text = "Crosses have won!"
                    
                }
                
                endGame()
            }

        }
        
        if gameActive == true {
        
            gameActive = false
            
            for buttonState in gameState {
                
                if buttonState == 0 {
                    
                    gameActive = true
                }
                
            }
            
            if gameActive == false {
                
                gameOverLabel.text = "It's a draw!"
                
                endGame()
            }
            
        }
    }
    
    
    func endGame() {
        
        gameOverLabel.hidden = false
        
        gameOverLabel.center = CGPointMake(gameOverLabel.center.x + 500, gameOverLabel.center.y)
        
        playAgainButton.hidden = false
        
        playAgainButton.center = CGPointMake(playAgainButton.center.x + 500, playAgainButton.center.y)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gameOverLabel.hidden = true
        
        gameOverLabel.center = CGPointMake(gameOverLabel.center.x - 500, gameOverLabel.center.y)
        
        playAgainButton.hidden = true
        
        playAgainButton.center = CGPointMake(playAgainButton.center.x - 500, playAgainButton.center.y)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

