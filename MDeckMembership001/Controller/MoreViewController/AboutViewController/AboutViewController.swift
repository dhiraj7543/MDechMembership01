//
//  AboutViewController.swift
//  MDeckMembership001
//
//  Created by Dheeraj on 20/06/19.
//  Copyright © 2019 Dheeraj. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var aboutTableView: UITableView!
    
    let aboutViewModel = AboutViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let aboutCellNib = UINib(nibName: Constants.aboutCellNibName, bundle: nil)
        aboutTableView.register(aboutCellNib, forCellReuseIdentifier: Constants.aboutCellName)
    }
    
}

extension AboutViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aboutViewModel.getAboutData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = aboutTableView.dequeueReusableCell(withIdentifier: Constants.aboutCellName) as! AboutCellXib
        cell.setAboutData(aboutViewModel.getAboutData()[indexPath.row])
        return cell
    }
}
