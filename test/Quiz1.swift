//
//  Quiz1.swift
//  test
//
//  Created by 平松蒼惟 on 2023/10/19.
//

import UIKit

class Quiz1: UIViewController {


    @IBOutlet weak var ox: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but3: UIButton!
    @IBOutlet var go: UIButton!
    
    
    var userDefaults = UserDefaults.standard
    var count : Int = 0
    var correct = Audio()
    var wrong = Audio()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ox.isHidden = true
        go.isHidden = true
        score.text = String(count) + "/3"
       
        but1.isEnabled = true
        but2.isEnabled = true
        but3.isEnabled = true
        
        correct.set(named: "correct")
        wrong.set(named: "wrong2")
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tap1(_ sender: Any) {
        ox.text = "残念！正解は3番です！"
        ox.isHidden = false
        go.isHidden = false
        wrong.play()
        score.text = String(count) + "/3"
        userDefaults.set(count, forKey: "points")
        print(count)
        
        but1.isEnabled = false
        but2.isEnabled = false
        but3.isEnabled = false
    }
    
    
    @IBAction func tap2(_ sender: Any) {
        ox.text = "残念！正解は3番です！"
        ox.isHidden = false
        go.isHidden = false
        wrong.play()
        score.text = String(count) + "/3"
        userDefaults.set(count, forKey: "points")
        print(count)
        
        but1.isEnabled = false
        but2.isEnabled = false
        but3.isEnabled = false
        
    }
    
    @IBAction func tap3(_ sender: Any) {
        ox.text = "正解！"
        ox.isHidden = false
        go.isHidden = false
        correct.play()
        count += 1
        score.text = String(count) + "/3"
        userDefaults.set(count, forKey: "points")
        print(count)
        
        but1.isEnabled = false
        but2.isEnabled = false
        but3.isEnabled = false
    }
    
    


}
