//
//  ViewController.swift
//  Counter
//
//  Created by Руслан Руцкой on 05.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    private var count = 0
    
    
    @IBOutlet weak var counterLogs: UITextView!
    private var logCounter: String?
    private var currentDate = Date()
      
    @IBAction func buttonDidTap(_ sender: Any) {
        count += 1
        counterLabel.text = "Число: \(count)"
        counterLogs.text += "\n [\(currentDate)]: значение изменено на +1 \n"
    }
    
    @IBAction func buttonDidTapMinus(_ sender: Any) {
        if count > 0 {
            count -= 1
            counterLabel.text = "Число: \(count)"
            counterLogs.text += "\n [\(currentDate)]: значение изменено на -1 \n"
        } else {
            count = 0
            counterLogs.text += "\n [\(currentDate)]: попытка уменьшить значение счётчика ниже 0 \n"
            counterLabel.text = "Число: \(count)"
        }
    }
    
    @IBAction func refreshCounter(_ sender: Any) {
        count = 0
        counterLabel.text = "Число: \(count)"
        counterLogs.text += "\n [\(currentDate)]: значение сброшено \n"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLogs.tintColor = .lightGray
        counterLabel.text = "Число: \(count)"
    }
}
