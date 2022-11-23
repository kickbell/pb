//
//  PressureDisplay.swift
//  ObserverPattern
//
//  Created by jc.kim on 11/22/22.
//

import Foundation

class PressureDisplay: Observer, DisplayElement {
    
    let weatherData: WeatherData
    var pressure: Float?
    
    init(_ weatherData: WeatherData) {
        self.weatherData = weatherData
        weatherData.registerObserver(ob: self)
    }
    
    func update() {
        self.pressure = weatherData.getPressure()
        display()
    }
    
    func display() {
        print("현재 기압: \(self.pressure ?? 0.0)hPa")
    }
}
