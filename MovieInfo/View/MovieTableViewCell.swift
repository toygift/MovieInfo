//
//  MovieTableViewCell.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 4..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import Kingfisher
import SwiftyJSON

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var voteRate: UILabel!
    @IBOutlet weak var popularity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setData(data: MovieTopRateList) {
        let posterURL = "https://image.tmdb.org/t/p/original"
        self.poster.kf.setImage(with: URL(string: posterURL + data.posterPath))
        self.title.text = data.title
        self.releaseDate.text = data.releaseDate
        self.voteRate.text = "\(data.voteAverage)"
        self.popularity.text = "\(data.popularity)"
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
