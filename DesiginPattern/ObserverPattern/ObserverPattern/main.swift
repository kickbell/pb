//
//  main.swift
//  ObserverPattern
//
//  Created by jc.kim on 11/22/22.
//

import Foundation


let weatherData = WeatherData()

//구독 등록
let c = CurrentConditionsDisplay(weatherData)
let p = PressureDisplay(weatherData)

weatherData.setMeasurements(80, 65, 30)
weatherData.setMeasurements(82, 70, 29)
weatherData.setMeasurements(78, 90, 30)

//구독 해지
weatherData.removeObserver(ob: c)

weatherData.setMeasurements(88, 70, 25)




