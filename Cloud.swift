//
//  Cloud.swift
//  WeatherApp
//
//  Created by lavinia.binisor on 05.12.2023.
//

import Foundation

class Cloud {
    enum Thickness: CaseIterable {
        case none, thin, light, regular, ultra
    }
    
    var position: CGPoint
    let imageNumber: Int
    let speed = Double.random(in: 5...10)
    let scale: Double
    
    init(imageNumber: Int, scale: Double) {
        self.imageNumber = imageNumber
        self.scale = scale
        
        let startX = Double.random(in: -200...200)
        let startY = Double.random(in: -20...100)
        position = CGPoint(x: startX, y: startY)
    }
}
