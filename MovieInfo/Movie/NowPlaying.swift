//
//  NowPlayinf.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 7..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import MKProgress

class NowPlaying: Movies, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Movie_NowPlayingRequest().requestAPI { (response) in
            if let result = response.result.value {
                MKProgress.hide()
                self.movies = result
            }
        }
    }

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "지금상영중")
    }

}
