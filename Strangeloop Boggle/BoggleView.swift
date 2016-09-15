//
//  BoggleView.swift
//  Strangeloop Boggle
//
//  Created by Neem Serra on 9/14/16.
//  Copyright © 2016 Neem Serra. All rights reserved.
//

import Foundation
import UIKit

protocol BoggleViewProtocol: class {
    func resetButtonPressed()
}

class BoggleView: UIView {
    private weak var observer: BoggleViewProtocol?
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var boggleButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    func setObserver(observer: BoggleViewProtocol) {
        self.observer = observer
    }
    
    @IBAction func resetTapped(sender: AnyObject) {
        self.observer?.resetButtonPressed()
    }
    
    func setButtonTitles(buttonTitles: Array<String>) {
        var int = 0
        for button in buttons {
            button.setTitle(buttonTitles[int], forState: UIControlState.Normal)
            int += 1
        }
        
    }
}