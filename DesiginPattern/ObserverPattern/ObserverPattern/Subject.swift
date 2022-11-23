//
//  Subject.swift
//  ObserverPattern
//
//  Created by jc.kim on 11/22/22.
//

import Foundation

protocol Subject {
    func registerObserver(ob: Observer)
    func removeObserver(ob: Observer)
    func notifyObservers()
}
