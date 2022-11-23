//
//  WeatherData.swift
//  ObserverPattern
//
//  Created by jc.kim on 11/22/22.
//

import Foundation

class WeatherData: Subject {
    
    // MARK: - Properties

    private var temp: Float? //기온
    private var humidity: Float? //습도
    private var pressure: Float? //압력
    private var observers: [String: Observer]
    
    init() {
        self.observers = [:]
    }
    
    // MARK: - Subject

    func registerObserver(ob: Observer) {
        observers[String(describing: ob.self)] = ob
        print("\(String(describing: ob.self))의 구독 등록되었습니다.")
    }
    
    func removeObserver(ob: Observer) {
        if let result = observers.removeValue(forKey: String(describing: ob.self)) {
            print("성공적으로 \(result)의 구독이 해지되었습니다.")
        } else {
            print("\(String(describing: ob.self))를 찾을 수 없습니다. 구독해지 요청이 실패했습니다.")
        }
    }
    
    func notifyObservers() {
        for observer in observers.values {
            observer.update()
        }
    }
    
    
    // MARK: - 기온, 습도, 압력 데이터가 변경되면 호출되는 메소드

    func measurementsChanged() {
        notifyObservers()
    }
    
    // MARK: - 감지 센서로부터 데이터를 받아오는 부분
    
    func setMeasurements(_ temp: Float,_ humidity: Float,_ pressure: Float) {
        self.temp = temp
        self.humidity = humidity
        self.pressure = pressure
        measurementsChanged()
    }
    
    func getTemp() -> Float {
        return self.temp ?? 0.0
    }
    
    func getHumidity() -> Float {
        return self.humidity ?? 0.0
    }
    
    func getPressure() -> Float {
        return self.pressure ?? 0.0
    }
}
