//
//  BaseVC.swift
//  A Touch of Magic
//
//  Created by Dheeraj on 20/03/19.
//  Copyright © 2019 Dheeraj Chauhan. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    

    
    func initVC<T>(_ storyBoard: String , _ vc:T) -> UIViewController{
        let mainStory = UIStoryboard(name: storyBoard, bundle: nil)
        let vcId = String(describing: vc)
        let destVC = mainStory.instantiateViewController(withIdentifier: vcId)
        return destVC
    }
    
    func openVC(_ vc: UIViewController, _ animation:Bool){
        self.navigationController?.pushViewController(vc, animated: animation)
    }

}
