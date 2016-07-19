//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Ehsan Zaman on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
    
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool {return speed > 0 && altitude > 0}
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff() {
        if altitude == 0 {
        speed = maxSpeed/10
        altitude = maxAltitude/10
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight {
            altitude += maxAltitude * 0.1
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
              decelerate()
        }
    }
    
    func dive() {
        if altitude > 0 {
            altitude -= maxAltitude * 0.1
            if altitude < 0 {
                altitude = 0
            }
            accelerate()
        }
    }
    
    func bankRight() {
        if inFlight {
        heading = (heading + 45) % 360
        speed = speed * 0.9
        }
    }
    
    func bankLeft() {
        if inFlight {
        heading = (heading + 315) % 360
        speed = speed * 0.9
        }
    }
}