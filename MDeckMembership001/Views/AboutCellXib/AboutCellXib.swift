//
//  AboutCellXib.swift
//  MDeckMembership001
//
//  Created by Dheeraj on 20/06/19.
//  Copyright © 2019 Dheeraj. All rights reserved.
//

import UIKit

class AboutCellXib: UITableViewCell {

    //Mark:- Outlets
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setAboutData(_ data: AboutModel){
        lblTitle.text = data.title
        lblDescription.text = data.description
        
    }
}
