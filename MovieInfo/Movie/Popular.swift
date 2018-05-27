//
//  Popular.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 7..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import  MKProgress

class Popular: Movies, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Movie_PopularRequest().requestAPI { (response) in
            if let result = response.result.value {
                MKProgress.hide()
                self.movies = result
                self.tableView.reloadData()
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "인기")
    }
}
