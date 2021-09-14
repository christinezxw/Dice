//
//  ViewController.swift
//  Dice
//
//  Created by Xuanwei Zhang on 9/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstRandom = getRandomImageName()
        let secondRandom = getRandomImageName()
        setImage(firstName: firstRandom.1, secondName: secondRandom.1)
        scoreLabel.text = "Your Score = \(score)"
    }


    @IBAction func below7Guess(_ sender: Any) {
        let firstRandom = getRandomImageName()
        let secondRandom = getRandomImageName()
        setImage(firstName: firstRandom.1, secondName: secondRandom.1)
        if firstRandom.0 + secondRandom.0 < 7 {
            score += 1
        }
        scoreLabel.text = "Your Score = \(score)"
    }
    @IBAction func lucky7Guess(_ sender: Any) {
        let firstRandom = getRandomImageName()
        let secondRandom = getRandomImageName()
        setImage(firstName: firstRandom.1, secondName: secondRandom.1)
        if firstRandom.0 + secondRandom.0 == 7 {
            score += 7
        }
        scoreLabel.text = "Your Score = \(score)"
    }
    @IBAction func above7Guess(_ sender: Any) {
        let firstRandom = getRandomImageName()
        let secondRandom = getRandomImageName()
        setImage(firstName: firstRandom.1, secondName: secondRandom.1)
        if firstRandom.0 + secondRandom.0 > 7 {
            score += 1
        }
        scoreLabel.text = "Your Score = \(score)"
    }
    
    func getRandomImageName() -> (Int,String){
        let num = Int.random(in: 1...6)
        let imageName = "Dice\(num)"
        return (num, imageName);
    }
    
    func setImage(firstName: String, secondName: String) {
        firstDice.image = UIImage(named: firstName)
        secondDice.image = UIImage(named: secondName)
    }
}

