//
//  AboutModel.swift
//  MDeckMembership001
//
//  Created by Dheeraj on 20/06/19.
//  Copyright © 2019 Dheeraj. All rights reserved.
//

import Foundation
struct AboutModel {
    var title = ""
    var description = ""
    
    init(title: String, desc: String) {
        self.title = title
        self.description = desc
    }
}
