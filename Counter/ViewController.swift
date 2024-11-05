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
    
      
    @IBAction func buttonDidTap(_ sender: Any) {
        count += 1
        counterLabel.text = "Число: \(count)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "Число: \(count)"
    }
}
