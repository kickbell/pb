//
//  CurrentConditionsDisplay.swift
//  ObserverPattern
//
//  Created by jc.kim on 11/22/22.
//

import Foundation

class CurrentConditionsDisplay: Observer, DisplayElement {
    
    private var weatherData: WeatherData
    private var temp: Float?
    private var humidity: Float?
    
    init(_ weatherData: WeatherData) {
        self.weatherData = weatherData
        weatherData.registerObserver(ob: self)
    }
    
    func update() {
        self.temp = weatherData.getTemp()
        self.humidity = weatherData.getHumidity()
        display()
    }
    
    func display() {
        print("현재 상태: 온도 \(self.temp ?? 0.0)F, 습도 \(self.humidity ?? 0.0)%")
    }
}
