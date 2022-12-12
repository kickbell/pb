//
//  ControllerInterface.swift
//  MVC Pattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation

protocol ControllerInterface {
    func start()
    func stop()
    func increaseRate()
    func decreaseRate()
    func setRate(_ rate: Float)
}

class BeatController: ControllerInterface {
    lazy var view: DjView = DjView(model, self)
    let model: BeatModelInterface
    
    init(_ model: BeatModelInterface) {
        self.model = model
        model.initialize()
    }
    func start() {
        model.on()
    }
    
    func stop() {
        model.off()
    }
    
    func increaseRate() {
        let rate = model.getRate()
        model.setRate(rate + 0.25)
    }
    
    func decreaseRate() {
        let rate = model.getRate()
        model.setRate(rate - 0.25)
    }
    
    func setRate(_ rate: Float) {
        model.setRate(rate)
    }
}
