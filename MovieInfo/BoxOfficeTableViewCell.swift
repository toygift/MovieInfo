//
//  BoxOfficeTableViewCell.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit

class BoxOfficeTableViewCell: UITableViewCell {

    @IBOutlet var movienNm: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(data: DailyBoxOfficeList) {
        self.movienNm.text = data.movieNm
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
