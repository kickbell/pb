//
//  BeatModel.swift
//  MVC Pattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation
import AVFoundation

class BeatModel: BeatModelInterface {
    var beatObservers: [BeatObserver] = []
    var rateObservers: [RateObserver] = []
    var rate: Float = 1.0
    var stop: Bool = false
    var player: AVAudioPlayer?
     
    func initialize() {
        guard let url = Bundle.main.url(forResource: "soundName", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func on() {
        guard let player = player else { return }
        player.rate = 1.0
        player.play()
    }
    
    func off() {
        player?.stop()
    }
    
    func setRate(_ rate: Float) {
        player?.rate = rate
    }
    
    func getRate() -> Float {
        return rate
    }
    
//    func registerObserver(_ ob: BeatObserver) {
//        <#code#>
//    }
//
//    func removeObserver(_ ob: BeatObserver) {
//        <#code#>
//    }
//
//    func registerObserver(_ ob: RateObserver) {
//        <#code#>
//    }
//
//    func removeObserver(_ ob: RateObserver) {
//        <#code#>
//    }
}
