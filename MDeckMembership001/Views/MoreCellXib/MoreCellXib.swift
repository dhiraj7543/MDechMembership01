//
//  MoreCellXib.swift
//  MDeckMembership001
//
//  Created by Dheeraj on 15/06/19.
//  Copyright © 2019 Dheeraj. All rights reserved.
//

import UIKit

class MoreCellXib: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var lblSettingName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setCellData(_ constant: String, _ bgColor: UIColor){
        lblSettingName.text = constant
        containerView.backgroundColor = bgColor
    }

    
}
