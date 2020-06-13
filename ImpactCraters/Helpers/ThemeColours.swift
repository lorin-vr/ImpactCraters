//
//  ThemeColours.swift
//  ImpactCraters
//
//  Created by Lorin on 13/6/20.
//  Copyright © 2020 Lorin. All rights reserved.
//

import UIKit

struct ThemeColours {
    
    static let craterBackgroundColour = colour(r: 230, g: 224, b: 224)
    
    static let largestCraterColour = colour(r: 255, g: 178, b: 102)
    static let largerCraterColour = colour(r: 255, g: 153, b: 51)
    static let largeCraterColour = colour(r: 255, g: 128, b: 0)
    static let smallCraterColour = colour(r: 204, g: 102, b: 0)
    
    private static func colour(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        let max: CGFloat = 255.0
        let alpha: CGFloat = 1.0
        
        guard r <= max, g <= max, b <= max else {
            return UIColor.systemOrange
        }
        
        return UIColor(red: r/max, green: g/max, blue: b/max, alpha: alpha)
    }
}
