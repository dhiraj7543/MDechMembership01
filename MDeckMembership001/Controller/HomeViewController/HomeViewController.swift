//
//  HomeViewController.swift
//  MDeckMembership001
//
//  Created by Dheeraj on 13/06/19.
//  Copyright © 2019 Dheeraj. All rights reserved.
//

import UIKit

class HomeViewController: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBasicCat(_ sender: Any) {
        let vc = initVC(storyBoardName.Home.rawValue, MembershipVC.self)
        vc.title = "BASIC"
        openVC(vc, true)
    }
    
    @IBAction func btnPlusCat(_ sender: Any) {
        let vc = initVC(storyBoardName.Home.rawValue, MembershipVC.self)
        vc.title = "PLUS"
        openVC(vc, true)
    }
    
    @IBAction func btnPremiumCat(_ sender: Any) {
        let vc = initVC(storyBoardName.Home.rawValue, MembershipVC.self)
        vc.title = "PREMIUM"
        openVC(vc, true)
    }
    
    @IBAction func btnBusiness(_ sender: Any) {
        let vc = initVC(storyBoardName.Home.rawValue, MembershipVC.self)
        vc.title = "BUSINESS"
        openVC(vc, true)
    }
    
    @IBAction func btnGoldCat(_ sender: Any) {
        let vc = initVC(storyBoardName.Home.rawValue, MembershipVC.self)
        vc.title = "GOLD"
        openVC(vc, true)
    }
    
    
    @IBAction func btnPlatinumCat(_ sender: Any) {
        let vc = initVC(storyBoardName.Home.rawValue, MembershipVC.self)
        vc.title = "PLATINUM"
        openVC(vc, true)
    }
    
    
}
