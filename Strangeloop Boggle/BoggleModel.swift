//
//  BoggleModel.swift
//  Strangeloop Boggle
//
//  Created by Neem Serra on 9/14/16.
//  Copyright © 2016 Neem Serra. All rights reserved.
//

import Foundation

class BoggleModel {
    func randomLetter() -> String {
        let letters: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let rand = Int(arc4random_uniform(26))
        let stringArray = Array(letters.characters)
        return String(stringArray[rand])
    }
}