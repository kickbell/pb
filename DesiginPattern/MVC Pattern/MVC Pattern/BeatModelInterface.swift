//
//  RateModelInterface.swift
//  MVC Pattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation

protocol BeatModelInterface {
    func initialize()
    func on()
    func off()
    func setRate(_ rate: Float)
    func getRate() -> Float 
//    func registerObserver(_ ob: BeatObserver)
//    func removeObserver(_ ob: BeatObserver)
//    func registerObserver(_ ob: RateObserver)
//    func removeObserver(_ ob: RateObserver)
}

protocol BeatObserver {
    func updateBeat()
}

protocol RateObserver {
    func updateRate()
}
