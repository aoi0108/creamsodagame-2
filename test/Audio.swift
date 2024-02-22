//
//  Audio.swift
//  creamsoda2
//
//  Created by 平松蒼惟 on 2023/10/21.
//

import AVFoundation

class Audio {
    var player: AVAudioPlayer?
    
    init() {
  
    }
    
    func set(named soundName: String) {
        guard let path = Bundle.main.path(forResource: soundName, ofType: "mp3") else {
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
        } catch {
            print("Error setting audio: \(error.localizedDescription)")
        }
    }
    
    func play() {
        player?.play()
    }
    
    func pause() {
        player?.pause()
    }
    
    func stop() {
        player?.stop()
        player?.currentTime = 0
    }
}

