//
//  Result.swift
//  test
//
//  Created by 平松蒼惟 on 2023/10/19.
//

import UIKit

class Result: UIViewController {
    
    var userDefaults = UserDefaults.standard
    var point : Int = 0
    var jyan = Audio()
    var zannen = Audio()
    var terere = Audio()
    @IBOutlet weak var correctNum: UILabel!
    @IBOutlet weak var rank: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jyan.set(named: "jyan")
        zannen.set(named: "zannen")
        terere.set(named: "terere")
        getResult()
        
        
        
        

        
    }
    
    func getResult(){
        point = userDefaults.integer(forKey: "points")
        
        print(point)
        
        if point == 3 {
            jyan.play()
            rank.text = "伝説のクリームソーダマスター！"
        } else if point == 2 {
            terere.play()
            rank.text = "半人前クリームソーダマスター"
        } else if point == 1{
            terere.play()
            rank.text = "駆け出しクリームソーダマスター"
        } else{
            zannen.play()
            rank.text = "まだまだね..."
        }
        
        
        correctNum.text = String(point)
    }
    

}
