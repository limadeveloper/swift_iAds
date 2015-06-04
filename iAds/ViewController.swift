//
//  ViewController.swift
//  iAds
//
//  Created by John Silva on 6/3/15.
//  Copyright (c) 2015 John Silva. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController, ADBannerViewDelegate{

    @IBOutlet var banner: ADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.banner.hidden = true
        self.banner.delegate = self
        self.canDisplayBannerAds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK:
    // MARK: banner view delegate
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        println("error!")
    }
    
    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        return true
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        self.banner.hidden = false
    }

}

