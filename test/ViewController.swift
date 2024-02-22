//
//  ViewController.swift
//  test
//
//  Created by 平松蒼惟 on 2023/06/29.
//

import UIKit

class ViewController: UIViewController {

    var start1 = Audio()
    var start2 = Audio()
    var gameStart = Audio()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        start1.set(named: "pi")
        start2.set(named: "pi")
        gameStart.set(named: "don")
    }

    
    @IBAction func sakuranbo(_ sender: Any) {
        start1.play()
    }
    
    @IBAction func master(_ sender: Any) {
        start2.play()
    }
    
    @IBAction func start(_ sender: Any) {
        gameStart.play()
    }
    

    
}

