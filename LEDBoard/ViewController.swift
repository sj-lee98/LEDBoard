//
//  ViewController.swift
//  LEDBoard
//
//  Created by 이성주 on 2021/09/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentsLabel.textColor = .yellow
    }


}

