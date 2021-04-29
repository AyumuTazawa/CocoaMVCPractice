//
//  CounterModel.swift
//  CocoaMVCPractice
//
//  Created by 田澤歩 on 2021/04/14.
//

import Foundation

class CountModel {
    static let notifcationName = "CounterModelChanged"
    let notificationCounter = NotificationCenter()
    
    internal var count: Int = 0 {
        
        didSet {
            
            notificationCounter.post(name: .init(rawValue: CountModel.notifcationName), object: count)
        }
    }
    
    func countUp() {
        count = count + 1
    }
    
    func countDown() {
        count -= 1
    }
    
}
