//
//  CraterCell.swift
//  ImpactCraters
//
//  Created by Lorin on 4/6/20.
//  Copyright © 2020 Lorin. All rights reserved.
//

import UIKit

class CraterCell: UITableViewCell {
    
    @IBOutlet weak var iconContainer: UIView!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var diameter: UILabel!
 
    override func layoutSubviews() {
        super.layoutSubviews()
        iconContainer.backgroundColor = ThemeColours.craterBackgroundColour
        iconContainer.layer.cornerRadius = 5.0
    }
    
    func update(crater: Crater) {
        name.text = "\(crater.name) - \(crater.country)"
        diameter.text = "\(crater.diameterInKm)"
        icon.image = crater.icon
    }
}
