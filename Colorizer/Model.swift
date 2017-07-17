//
//  Model.swift
//  Colorizer
//
//  Created by COBE Osijek on 17/07/2017.
//  Copyright © 2017 COBE Osijek. All rights reserved.
//

import Foundation

enum colors: UInt32 {
    case red, blue, green, yellow, orange, black, white, purple

    private var count: colors.RawValue {
        var maximumVal: UInt32 = 0
        while let _ = colors(RawValue: maximumVal) {
            maximumVal += 1
        }
        return maximumVal
    }

    func returnColor() -> colors {
        colors(RawValue: arc4random_uniform(count))!
    }
}
