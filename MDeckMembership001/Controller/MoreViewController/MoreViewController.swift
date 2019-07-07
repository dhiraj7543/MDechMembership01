//
//  MoreViewController.swift
//  MDeckMembership001
//
//  Created by Dheeraj on 13/06/19.
//  Copyright © 2019 Dheeraj. All rights reserved.
//

import UIKit

class MoreViewController: BaseVC {

    @IBOutlet weak var settingTableView: UITableView!
    
    var dataViewModel = MoreDataViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let settingTableNib = UINib(nibName: Constants.settingNibName, bundle: nil)
        settingTableView.register(settingTableNib, forCellReuseIdentifier: Constants.settingCellName)
    }
}

extension MoreViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataViewModel.getAllData().0.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = settingTableView.dequeueReusableCell(withIdentifier: Constants.settingCellName) as! MoreCellXib
        cell.setCellData(dataViewModel.getAllData().0[indexPath.row], dataViewModel.getAllData().1[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let vc = initVC(storyBoardName.More.rawValue, AboutViewController.self)
            openVC(vc, true)
        }
    }
}

