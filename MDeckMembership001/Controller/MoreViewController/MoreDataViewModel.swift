//
//  MoreDataViewMode.swift
//  MDeckMembership001
//
//  Created by Dheeraj on 18/06/19.
//  Copyright © 2019 Dheeraj. All rights reserved.
//

import UIKit

struct  MoreDataViewModel{
    
    func getAllData() -> ([String], [UIColor]){
        let allName = MoreViewModel().itemNameArr
        let allColor = MoreViewModel().itemColorArr
        return (allName, allColor)
    }
}
