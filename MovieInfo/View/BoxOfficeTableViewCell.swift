//
//  BoxOfficeTableViewCell.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import Kingfisher
import SwiftyJSON

class BoxOfficeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var rank: UILabel!
    @IBOutlet weak var movienNm: UILabel!
    @IBOutlet weak var openDt: UILabel!
    @IBOutlet weak var salesAmt: UILabel!
    @IBOutlet weak var salesAcc: UILabel!
    @IBOutlet weak var audiCnt: UILabel!
    @IBOutlet weak var audiAcc: UILabel!
    @IBOutlet weak var scrnCnt: UILabel!
    @IBOutlet weak var poster: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func setData(data: BoxOfficeList) {
        self.rank.text = data.rank
        self.movienNm.text = data.movieNm
        self.openDt.text = data.openDt
        self.salesAmt.text = currencyConvert(currency: data.salesAmt) + "(\(data.salesShare)%)" + "\n" + "전일대비 : (\(currencyConvert(currency: data.salesInten)))" + "(\(data.salesChange)%)"
        self.salesAcc.text = currencyConvert(currency: data.salesAcc)
        self.audiCnt.text = thousandConvert(number: data.audiCnt) + "명" + "\n" + "전일대비 : (\(thousandConvert(number: data.audiInten))명)" + "증감비율 : (\(data.audiChange)%)"
        self.audiAcc.text = thousandConvert(number: data.audiAcc) + "명"
        self.scrnCnt.text = thousandConvert(number: data.scrnCnt) + "(\(thousandConvert(number: data.showCnt))번 상영)"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func currencyConvert(currency: String) -> String {
        let currencyFormat = NumberFormatter()
        currencyFormat.locale = Locale.current
        currencyFormat.numberStyle = .currency
        return currencyFormat.string(from: NSNumber(value:Double(currency)!))!
    }
    func thousandConvert(number: String) -> String {
        let thousandFormat = NumberFormatter()
        thousandFormat.numberStyle = .decimal
        return thousandFormat.string(from: NSNumber(value:Double(number)!))!
    }
}
