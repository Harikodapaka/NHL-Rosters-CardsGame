//
//  ViewController.swift
//  CardsGame
//
//  Created by Chaitanya Kodapaka on 2019-05-17.
//  Copyright © 2019 Chaitanya Kodapaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var Players: [Player] = []
    
    @IBOutlet weak var ImgRound: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var BornLabel: UILabel!
    @IBOutlet weak var SalaryLabel: UILabel!
    @IBOutlet weak var GamesPlayedLabel: UILabel!
    @IBOutlet weak var GoalsLabel: UILabel!
    @IBOutlet weak var PointsLabel: UILabel!
    @IBOutlet weak var AssistsLabel: UILabel!
    @IBOutlet weak var TimeonIceLabel: UILabel!
    
    
    @IBAction func NextCardButton(_ sender: UIButton) {
        let number = Int.random(in: 0 ..< 11)
        print(number)
        let p = Players[number]
        NameLabel.text = p.name
        BornLabel.text = p.born
        SalaryLabel.text = p.salary
        GamesPlayedLabel.text = String(p.gamesPlayed)
        GoalsLabel.text = String(p.goals)
        PointsLabel.text = String(p.points)
        AssistsLabel.text = String(p.assets)
        TimeonIceLabel.text = String(p.timeonIce)
        ImgRound.image = UIImage(named: p.imgurl)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Image Stayles
        ImgRound.layer.cornerRadius = ImgRound.frame.size.width / 2
        ImgRound.clipsToBounds = true
        ImgRound.layer.borderWidth = 3
        ImgRound.layer.borderColor = UIColor.black.cgColor
        
        self.assignPlayers()
        
    }
    
    func assignPlayers() -> Void {
        self.Players.append(Player(id: 0, name: "Claude Giroux", born: "Jul 1, 1995", goals: 22, assets: 63,points: 85, salary: "$9,000,000", gamesPlayed: 82, timeonIce: 1759, imgurl: "Claude_Giroux.jpeg"))
        
        self.Players.append(Player(id: 1, name: "Justin Bailey", born: "JAN 12, 1988", goals: 0, assets: 1,points: 1, salary: "$600,000", gamesPlayed: 11, timeonIce: 63, imgurl: "Justin_Bailey.jpg"))
        
        self.Players.append(Player(id: 2, name: "Sean Couturier", born: "Dec 7, 1992", goals: 33, assets: 43,points: 76, salary: "$2,000,000", gamesPlayed: 80, timeonIce: 1770, imgurl: "Sean_Couturier.jpeg"))
        
        self.Players.append(Player(id: 3, name: "Oskar Lindblom", born: "Aug 15, 1996", goals: 17, assets: 16,points: 33, salary: "$1,376,774", gamesPlayed: 81, timeonIce: 1113, imgurl: "Oskar_Lindblom.jpg"))
        
        self.Players.append(Player(id: 4, name: "Corban Knight", born: "Sep 10, 1990", goals: 1, assets: 3,points: 4, salary: "$650,000", gamesPlayed: 23, timeonIce: 223, imgurl: "Corban_Knight.jpg"))
        
        self.Players.append(Player(id: 5, name: "Radko Gudas", born: "Jun 5, 1990", goals: 4, assets: 16,points: 20, salary: "$8,275,000", gamesPlayed: 77, timeonIce: 1376, imgurl: "Radko_Gudas.jpg"))
        
        self.Players.append(Player(id: 6, name: "Andrew M", born: "Sep 7, 1986", goals: 0, assets: 9,points: 9, salary: "$500,000", gamesPlayed: 47, timeonIce: 771, imgurl: "Andrew_MacDonald.jpg"))
        
        self.Players.append(Player(id: 7, name: "Robert Hagg", born: "Feb 8, 1995", goals: 5, assets: 15,points: 20, salary: "$1,150,000", gamesPlayed: 82, timeonIce: 1390, imgurl: "Robert_Hägg.jpg"))
        
        self.Players.append(Player(id: 8, name: "Jakub Voracek", born: "Aug 15, 1989", goals: 20, assets: 46,points: 66, salary: "$8,250,000", gamesPlayed: 79, timeonIce: 1456, imgurl: "Jakub_Voracek.jpg"))
        
        self.Players.append(Player(id: 9, name: "Cam Talbot", born: "Jun 5, 1987", goals: 0, assets: 1,points: 1, salary: "$4,166,666", gamesPlayed: 35, timeonIce: 211, imgurl: "cam_talbot.jpg"))
        
        self.Players.append(Player(id: 10, name: "Shayne G", born: "Apr 20, 1993", goals: 9, assets: 28,points: 37, salary: "$4,500,000", gamesPlayed: 78, timeonIce: 1533, imgurl: "Shayne_Gostisbehere.jpg"))
        
        self.Players.append(Player(id: 11, name: "Michael Raffl", born: "Dec 1, 1988", goals: 6, assets: 12,points: 18, salary: "$2,350,000", gamesPlayed: 67, timeonIce: 756, imgurl: "Michael_Raffl_Bolidenhallen.jpg"))
        
    }


}

