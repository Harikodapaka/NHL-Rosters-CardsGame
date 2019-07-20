//
//  Players.swift
//  CardsGame
//
//  Created by Chaitanya Kodapaka on 2019-05-22.
//  Copyright © 2019 Chaitanya Kodapaka. All rights reserved.
//

import Foundation

class Player {
    
    let id: Int
    let name: String
    let born: String
    let goals: Int
    let assets: Int
    let points: Int
    let salary: String
    let gamesPlayed: Int
    let timeonIce: Int
    let imgurl: String
    
    
    init() {
        id = 0
        name = ""
        born = ""
        goals = 0
        assets = 0
        points = 0
        salary = ""
        gamesPlayed = 0
        timeonIce = 0
        imgurl = ""
    }
    
    init(id: Int, name: String, born: String, goals: Int, assets: Int,
         points: Int, salary: String, gamesPlayed: Int, timeonIce: Int, imgurl:String) {
        self.id = id
        self.name = name
        self.born = born
        self.goals = goals
        self.assets = assets
        self.points = points
        self.salary = salary
        self.gamesPlayed = gamesPlayed
        self.timeonIce = timeonIce
        self.imgurl = imgurl
    }
    
}
