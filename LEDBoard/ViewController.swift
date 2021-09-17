//
//  ViewController.swift
//  LEDBoard
//
//  Created by 이성주 on 2021/09/16.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {

    @IBOutlet weak var contentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentsLabel.textColor = .yellow
    }
    
    //segue way로 화면전환을 구현 하였기 때문에 prepare 메서드를 override 해줘야함
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.delegate = self
            settingViewController.ledText = self.contentsLabel.text
            settingViewController.textColor = self.contentsLabel.textColor
            settingViewController.backgroundColor = self.view.backgroundColor ?? .black
        }
    }
    
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text { //text가 String? 이기 때문에 옵셔널 바인딩 사용
            self.contentsLabel.text = text
        }
        self.contentsLabel.textColor = textColor
        self.view.backgroundColor = backgroundColor
    }


}

