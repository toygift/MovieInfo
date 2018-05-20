//
//  TopRateMovie.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 4..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import MKProgress

class TopRateMovie: Movies, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Movie_TopRateRequest().requestAPI { (response) in
            if let result = response.result.value {
                MKProgress.hide()
                self.movies = result
            }
        }
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "TopRate")
    }
}
