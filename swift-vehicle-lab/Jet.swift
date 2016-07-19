//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Ehsan Zaman on 7/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    
    override func climb() {
        if inFlight {
            altitude = altitude + (maxAltitude * 0.2)
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
        }
        decelerate()
    }
    
    override func dive() {
        if inFlight{
        altitude -= maxAltitude * 0.2
            if altitude < 0 {
                altitude = 0
            }
        }
        accelerate()
    }
    
    func afterburner() {
        if speed == maxSpeed && inFlight{
        speed = maxSpeed * 2
        }
    }
}
