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
    
    private let paleGrey = UIColor(red: 230/255.0, green: 224/255.0, blue: 224/255.0, alpha: 1)
 
    override func layoutSubviews() {
        super.layoutSubviews()
        iconContainer.backgroundColor = paleGrey
        iconContainer.layer.cornerRadius = 5.0
    }
}
