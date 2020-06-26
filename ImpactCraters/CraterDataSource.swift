//
//  CraterDataSource.swift
//  ImpactCraters
//
//  Created by Lorin on 4/6/20.
//  Copyright © 2020 Lorin. All rights reserved.
//

import UIKit

struct Crater {
    let name: String
    let country: String
    let diameterInKm: Float
    
    var icon: UIImage {
        var pointSize: CGFloat
        let color: UIColor = ThemeColours.largeCraterColour
        
        pointSize = CGFloat(diameterInKm/CraterDataSource.maxDiameter * 42)
        if pointSize < 5 {
            pointSize = 5.0
        }
        
        // Logging
        print(name, pointSize)
        
        guard var image = UIImage(systemName: "circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: pointSize)) else {
            return UIImage()
        }
        
        image = image.withTintColor(color, renderingMode: .alwaysOriginal)
            
        return image
    }
}

struct CraterDataSource {
    
    static let craters: [Crater] = [
//        Crater(name: "Vredefort", country: "South Africa", diameterInKm: 300),
        Crater(name: "Chicxulub", country: "Mexico", diameterInKm: 150),
        Crater(name: "Sudbury", country: "Canada", diameterInKm: 130),
        Crater(name: "Popigai", country: "Russia", diameterInKm: 100),
        Crater(name: "Manicouagan", country: "Canada", diameterInKm: 100),
        Crater(name: "Acraman", country: "Australia", diameterInKm: 90),
        Crater(name: "Morokweng", country: "South Africa", diameterInKm: 70),
        Crater(name: "Kara", country: "Russia", diameterInKm: 65),
        Crater(name: "Beaverhead", country: "United  States", diameterInKm: 60),
        Crater(name: "Tookoonooka", country: "Australia", diameterInKm: 55),
        Crater(name: "Charlevoix", country: "Canada", diameterInKm: 54),
        Crater(name: "Siljan Ring", country: "Sweden", diameterInKm: 52),
        Crater(name: "Karakul", country: "Tajikistan", diameterInKm: 52),
        Crater(name: "Montagnais", country: "Canada", diameterInKm: 45),
        Crater(name: "Araguainha", country: "Brazil", diameterInKm: 40),
        Crater(name: "Chesapeake Bay", country: "United States", diameterInKm: 40),
        Crater(name: "Mjølnir", country: "Norway", diameterInKm: 40),
        Crater(name: "Puchezh-Katunki", country: "Russia", diameterInKm: 40),
        Crater(name: "Saint Martin", country: "Canada", diameterInKm: 40),
        Crater(name: "Woodleigh", country: "Australia", diameterInKm: 40),
        Crater(name: "Carswell", country: "Canada", diameterInKm: 39),
        Crater(name: "Clearwater West", country: "Canada", diameterInKm: 36),
        Crater(name: "Manson", country: "United  States", diameterInKm: 35),
        Crater(name: "Slate Islands", country: "Canada", diameterInKm: 30),
        Crater(name: "Yarrabubba", country: "Australia", diameterInKm: 30),
        Crater(name: "Keurusselkä", country: "Finland", diameterInKm: 30),
        Crater(name: "Shoemaker", country: "Australia", diameterInKm: 30),
        Crater(name: "Mistastin", country: "Canada", diameterInKm: 28),
        Crater(name: "Clearwater East", country: "Canada", diameterInKm: 26),
        Crater(name: "Kamensk", country: "Russia", diameterInKm: 25),
        Crater(name: "Steen River", country: "Canada", diameterInKm: 25),
        Crater(name: "Strangways", country: "Australia", diameterInKm: 25),
        Crater(name: "Tunnunik", country: "Canada", diameterInKm: 25),
        Crater(name: "Boltysh", country: "Ukraine", diameterInKm: 24),
        Crater(name: "Nördlinger Ries", country: "Germany", diameterInKm: 24),
        Crater(name: "Presqu'île", country: "Canada", diameterInKm: 24),
        Crater(name: "Haughton", country: "Canada", diameterInKm: 23),
        Crater(name: "Lappajärvi", country: "Finland", diameterInKm: 23),
        Crater(name: "Rochechouart", country: "France", diameterInKm: 23),
        Crater(name: "Gosses Bluff", country: "Australia", diameterInKm: 22),
        Crater(name: "Amelia Creek", country: "Australia", diameterInKm: 20),
        Crater(name: "Logancha", country: "Russia", diameterInKm: 20),
        Crater(name: "Obolon'", country: "Ukraine", diameterInKm: 20),
        Crater(name: "Dhala", country: "India", diameterInKm: 11),
        Crater(name: "Bosumtwi", country: "Ghana", diameterInKm: 10),
        Crater(name: "Elgygytgyn", country: "Russia", diameterInKm: 18),
        Crater(name: "Bigach", country: "Kazakhstan", diameterInKm: 8),
        Crater(name: "Karla", country: "Russia", diameterInKm: 10),
        Crater(name: "Karakul", country: "Tajikistan", diameterInKm: 52),
        Crater(name: "Tenoumer", country: "Mauritania", diameterInKm: 1.9),
        Crater(name: "Meteor Crater", country: "United States", diameterInKm: 1.2),
        Crater(name: "Xiuyan", country: "China", diameterInKm: 1.8),
        Crater(name: "Lonar", country: "India", diameterInKm: 1.8),
        Crater(name: "Agoudal", country: "Morocco", diameterInKm: 3),
        Crater(name: "Tswaing", country: "South Africa", diameterInKm: 1.1),
        Crater(name: "Zhamanshin", country: "Kazakhstan", diameterInKm: 14),
        Crater(name: "Wabar", country: "Saudi Arabia", diameterInKm: 0.1),
        Crater(name: "Kaali", country: "Estonia", diameterInKm: 0.1),
        Crater(name: "Campo del Cielo", country: "Argentina", diameterInKm: 0.1),
        Crater(name: "Henbury", country: "Australia", diameterInKm: 0.2),
        Crater(name: "Morasko", country: "Poland", diameterInKm: 0.1),
        Crater(name: "Boxhole", country: "Australia", diameterInKm: 0.2),
        Crater(name: "Macha", country: "Russia", diameterInKm: 0.3),
        Crater(name: "Rio Cuarto (disputed)", country: "Argentina", diameterInKm: 4.5),
        Crater(name: "Ilumetsa", country: "Estonia", diameterInKm: 0.08)
    ]
    
    static var maxDiameter: Float {
        return cratersSortedByDiameter
            .first?
            .diameterInKm ?? 0.0
    }
    
    private static var cratersSortedByDiameter: [Crater] {
        return craters.sorted {
            $0.diameterInKm > $1.diameterInKm
        }
    }
}
