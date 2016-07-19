//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Ehsan Zaman on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class RaceCar: Car {
    
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {self.driver = driver
        self.sponsors = sponsors
       super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
       
    }
    
    override func accelerate() {
        speed += maxSpeed * 0.2
        if speed > maxSpeed {
            speed = maxSpeed
        }
    }
    override func decelerate() {
        speed -= maxSpeed * 0.2
        if speed < 0 {
            speed = 0
        }
    }
    
    func driftRight () {
        if speed > 0 {
        heading = (heading + 90) % 360
        speed = speed * 0.75
        }
    }
    func driftLeft () {
        if speed > 0 {
        heading = (heading + 270) % 360
        speed = speed * 0.75
       }
    }

}