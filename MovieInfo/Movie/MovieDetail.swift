//
//  MovieDetail.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 6. 5..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit

protocol MovieDetailDelegate {
    func sendData(data: MovieList)
}

class MovieDetail: UIViewController, MovieDetailDelegate {
    var delegate: MovieDetailDelegate?
    
    @IBOutlet weak var movieTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func sendData(data: MovieList) {
        self.movieTitle.text = data.title
    }
    
}

