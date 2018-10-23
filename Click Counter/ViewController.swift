//
//  ViewController.swift
//  Click Counter
//
//  Created by Felipe Ribeiro on 24/09/2018.
//  Copyright © 2018 Felipe Ribeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count: Int = 0
    var label: UILabel!
    var additionalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label = UILabel()
        label.frame = CGRect(x: 100, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        
        additionalLabel = UILabel()
        additionalLabel.frame = CGRect(x: 200, y: 150, width: 60, height: 60)
        additionalLabel.text = "0"
        view.addSubview(additionalLabel)
        
        let incrementButton = UIButton()
        incrementButton.frame = CGRect(x: 50, y: 250, width: 100, height: 60)
        incrementButton.setTitle("Increment", for: .normal)
        incrementButton.setTitleColor(.blue, for: .normal)
        view.addSubview(incrementButton)
        
        incrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: .touchUpInside)
        
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 200, y: 250, width: 100, height: 60)
        decrementButton.setTitle("Decrement", for: .normal)
        decrementButton.setTitleColor(.blue, for: .normal)
        view.addSubview(decrementButton)
        
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: .touchUpInside)
        
        let toggleButton = UIButton()
        toggleButton.frame = CGRect(x: 75, y: 300, width: 200, height: 60)
        toggleButton.setTitle("Change background", for: .normal)
        toggleButton.setTitleColor(.blue, for: .normal)
        view.addSubview(toggleButton)
        
        toggleButton.addTarget(self, action: #selector(ViewController.toggleBackgroundColor), for: .touchUpInside)
    }
    
    @objc func incrementCount() {
        count += 1
        syncUI()
    }
    
    @objc func decrementCount() {
        count -= 1
        syncUI()
    }
    
    @objc func toggleBackgroundColor() {
        let newColor: UIColor = view.backgroundColor == .white ? .lightGray : .white;
        view.backgroundColor = newColor
    }
    
    func syncUI() {
        label.text = "\(count)"
        additionalLabel.text = "\(count)"
    }
}

