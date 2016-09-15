//
//  BoggleViewController.swift
//  Strangeloop Boggle
//
//  Created by Neem Serra on 9/14/16.
//  Copyright © 2016 Neem Serra. All rights reserved.
//

import Foundation
import UIKit

class BoggleViewController: UIViewController, BoggleViewProtocol {
    
    var boggleView: BoggleView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boggleView = view as? BoggleView
        boggleView?.setObserver(self)
    }
    
    func resetButtonPressed() {
        print("Cupcake")
    }
}
