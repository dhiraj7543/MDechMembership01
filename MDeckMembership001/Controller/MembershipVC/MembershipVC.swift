//
//  MembershipVC.swift
//  MDeckMembership001
//
//  Created by Dheeraj on 24/06/19.
//  Copyright © 2019 Dheeraj. All rights reserved.
//


import UIKit
import AVFoundation
import AVKit

class MembershipVC: UIViewController {
    
    //MARK:- Outlet's
    @IBOutlet weak var videosTableView: UITableView!
    
    //MARK:- constant, variables, bool
    var membershipViewModel = MembershipViewModel()
    
    var player: AVPlayer!
    var playerController: AVPlayerViewController!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let videoCellNib = UINib(nibName: Constants.videoCellNibName, bundle: nil)
        videosTableView.register(videoCellNib, forCellReuseIdentifier: Constants.videoCellName)
       // videosTableView.rowHeight = 360
        
    
        videosTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
   
}

extension MembershipVC: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return membershipViewModel.itemNameArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = videosTableView.dequeueReusableCell(withIdentifier: Constants.videoCellName) as! VideoCellXib
        setupVideoPlayer(cell)
        return cell
    }
    
    
    
    
}

extension MembershipVC: AVPlayerViewControllerDelegate{
    
    func setupVideoPlayer(_ cell: VideoCellXib) {
        
        DispatchQueue.main.async {
            let url = URL(string: "https://cdn.dvidshub.net/media/video/1906/DOD_106930730/DOD_106930730-512x288-442k.mp4")
            let player = AVPlayer(url: url!)
            self.playerController = AVPlayerViewController()
            
         //   NotificationCenter.default.addObserver(self, selector: #selector(MembershipVC.didfinishplaying(note:)),name:NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player.currentItem)
            self.playerController.player = player
            let cellBounds = cell.videoPlayerContainer!
            self.playerController.view.frame = CGRect(x: 0, y: 0, width: cellBounds.frame.width, height: cellBounds.frame.height)
          //  self.playerController.view.center = cell.videoPlayerContainer.center
            self.playerController.videoGravity = .resizeAspectFill
            self.addChild(self.playerController)
            cell.videoPlayerContainer.addSubview(self.playerController.view)
            self.playerController.allowsPictureInPicturePlayback = true
            self.playerController.delegate = self
            
        }
        
        
    }
    
    @objc func didfinishplaying(note : NSNotification){
        
        if player != nil{
            player.currentItem!.seek(to: CMTime.zero)
            self.playerController.player?.play()
        }
        
    }
    
    
}
