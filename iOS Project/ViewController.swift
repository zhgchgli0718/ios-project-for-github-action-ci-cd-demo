//
//  ViewController.swift
//  iOS Project
//
//  Created by zhgchgli on 2024/12/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let caculator = Calculator()
        _ = caculator.add(1, 2)
    }


}

