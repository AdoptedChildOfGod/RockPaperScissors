//
//  RPSImageView.swift
//  RockPaperScissors
//
//  Created by Bethany Morris on 5/20/20.
//  Copyright © 2020 Shannon Draeker. All rights reserved.
//

import UIKit

class RPSRoundedImageView: UIImageView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
    func setUpViews() {
        layer.cornerRadius = 10
        layer.masksToBounds = true
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
}
