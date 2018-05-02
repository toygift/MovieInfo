//
//  BoxOfficeParent.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 2..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class BoxOfficeParent: SegmentedPagerTabStripViewController {
    
    @IBAction func search() {
        print("DDD")
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // change segmented style
        settings.style.segmentedControlColor = UIColor.lightGray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let daily = UIStoryboard(name: "BoxOffice", bundle: nil).instantiateViewController(withIdentifier: "Daily")
        let weekend = UIStoryboard(name: "BoxOffice", bundle: nil).instantiateViewController(withIdentifier: "Weekend")
        let weekday = UIStoryboard(name: "BoxOffice", bundle: nil).instantiateViewController(withIdentifier: "Weekday")
        let weekly = UIStoryboard(name: "BoxOffice", bundle: nil).instantiateViewController(withIdentifier: "Weekly")
        return [daily, weekend, weekday, weekly]
    }
}
