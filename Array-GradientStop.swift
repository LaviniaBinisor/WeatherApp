//
//  Array-GradientStop.swift
//  WeatherApp
//
//  Created by lavinia.binisor on 07.12.2023.
//

import SwiftUI

extension Array where Element == Gradient.Stop {
    func interpolated(amount: Double) -> Color {
        guard let initialStop = self.first else {
            fatalError("Attemped to read color from empty stop array.")
        }
        
        var firstStop = initialStop
        var secondStop = initialStop
        
        for stop in self {
            if stop.location < amount {
                firstStop = stop
            } else {
                secondStop = stop
                break
            }
        }
        
        let totalDifference = secondStop.location - firstStop.location
        
        if totalDifference > 0 {
            let relativeDiffernce = (amount - firstStop.location) / totalDifference
            return firstStop.color.interpolated(to: secondStop.color, amount: relativeDiffernce)
        } else {
            return firstStop.color.interpolated(to: secondStop.color, amount: 0)
        }
    }
}
