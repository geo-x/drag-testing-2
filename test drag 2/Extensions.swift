//
//  Extensions.swift
//  test drag 2
//
//  Created by george on 9/18/17.
//  Copyright © 2017 george. All rights reserved.
//

import Foundation


extension Int {
    var degreesToRadians: Double { return Double(self) * .pi / 180 }
}
extension FloatingPoint {
    var degreesToRadians: Self { return self * .pi / 180 }
    var radiansToDegrees: Self { return self * 180 / .pi }
}



// ********* example usage *****************************
//45.degreesToRadians            // 0.7853981633974483
//Double(45).degreesToRadians    // 0.7853981633974483
//CGFloat(45).degreesToRadians   // 0.785398163397448
//Float(45).degreesToRadians     // 0.7853981
//Float80(45).degreesToRadians   // 0.785398163397448278999


//************* another approach ************************
//let result = Measurement(value: 180, unit: UnitAngle.degrees)
//    .converted(to: .radians).value
