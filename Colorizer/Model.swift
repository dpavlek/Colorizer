//
//  Model.swift
//  Colorizer
//
//  Created by COBE Osijek on 17/07/2017.
//  Copyright © 2017 COBE Osijek. All rights reserved.
//

import Foundation
import UIKit

var colorsArray: [UIColor] = [.red, .blue, .green, .yellow, .orange, .black, .white, .purple]

func returnFromColorsArray() -> UIColor {
    return colorsArray[Int(arc4random_uniform(UInt32(colorsArray.count)))]
}

enum colors: UInt32 {
    case red, blue, green, yellow, orange, black, white, purple

    private var count: colors.RawValue {
        var maximumVal: UInt32 = 0
        while let _ = colors(rawValue: maximumVal) {
            maximumVal += 1
        }
        return maximumVal
    }

    func returnColor() -> colors {
        return colors(rawValue: arc4random_uniform(count))!
    }
}

// UIColor.white predstavlja objekt bijele boje klase UIColor
// Custom boje se mogu napraviti pomoću initializera koji prima RGBA, ali s vrijednostima od 0.00 do 1.00
