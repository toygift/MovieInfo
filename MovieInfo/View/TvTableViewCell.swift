//
//  TvTableViewCell.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 12..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit

class TvTableViewCell: UITableViewCell {

    @IBOutlet var original_name: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var first_on_air_date: UILabel!
    @IBOutlet var poster_path: UIImageView!
    @IBOutlet var overView: UILabel!
    @IBOutlet var origin_country: UILabel!
    @IBOutlet var vote_average: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setData(data: TvResult) {
        self.original_name.text = data.originalName
        self.name.text = data.name
        self.first_on_air_date.text = data.firstAirDate
        self.poster_path.kf.setImage(with: URL(string: TMDB_POSTER + data.posterPath))
        self.overView.text = data.overview
        self.origin_country.text = "\(data.originCountry)"
        self.vote_average.text = "\(data.voteAverage)"
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
