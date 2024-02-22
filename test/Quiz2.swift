//
//  Quiz2.swift
//  test
//
//  Created by 平松蒼惟 on 2023/10/19.
//

import UIKit

class Quiz2: UIViewController {

    @IBOutlet weak var ox: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but3: UIButton!
    @IBOutlet var go2: UIButton!
    
    var userDefaults = UserDefaults.standard
    var count2 : Int = 0
    var correct = Audio()
    var wrong = Audio()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ox.isHidden = true
        go2.isHidden = true
        count2 = userDefaults.integer(forKey: "points")
        score2.text = String(count2) + "/3"
        
        // Do any additional setup after loading the view.
        
        but1.isEnabled = true
        but2.isEnabled = true
        but3.isEnabled = true
        
        
        correct.set(named: "correct")
        wrong.set(named: "wrong2")
    }
    
    
    @IBAction func tap1(_ sender: Any) {
        ox.text = "正解！"
        ox.isHidden = false
        go2.isHidden = false
        correct.play()
        count2 += 1
        score2.text = String(count2) + "/3"
        userDefaults.set(count2, forKey: "points")
        print(count2)
        
        but1.isEnabled = false
        but2.isEnabled = false
        but3.isEnabled = false
    }
    
    
    @IBAction func tap2(_ sender: Any) {
        ox.text = "残念！正解は1番です！"
        ox.isHidden = false
        go2.isHidden = false
        wrong.play()
        score2.text = String(count2) + "/3"
        userDefaults.set(count2, forKey: "points")
        print(count2)
        
        but1.isEnabled = false
        but2.isEnabled = false
        but3.isEnabled = false
    }
    
    
    @IBAction func tap3(_ sender: Any) {
        ox.text = "残念！正解は1番です！"
        ox.isHidden = false
        go2.isHidden = false
        wrong.play()
        score2.text = String(count2) + "/3"
        userDefaults.set(count2, forKey: "points")
        print(count2)
        
        but1.isEnabled = false
        but2.isEnabled = false
        but3.isEnabled = false
    }
  
}
