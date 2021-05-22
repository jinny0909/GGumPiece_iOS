//
//  DetailTableViewCell.swift
//  GGumPiece
//
//  Created by 박익범 on 2021/05/23.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    static var identifier : String = "DetailTableViewCell"
    
    @IBOutlet weak var tableViewCellview: UIView!
    @IBOutlet weak var leftTableviewCell: UIView!
    @IBOutlet weak var moonImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        makeRadius()
        // Initialization code
    }

    func makeRadius(){
        tableViewCellview.clipsToBounds = true
        tableViewCellview.layer.cornerRadius = 20
        leftTableviewCell.clipsToBounds = true
        leftTableviewCell.layer.cornerRadius = 13
        leftTableviewCell.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMinXMinYCorner,.layerMinXMaxYCorner)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
        // Configure the view for the selected state
    }
    
    func setData(imageName : String, date :String, name : String, detail : String){
        if let moonImage = UIImage(named: imageName){
            moonImageView.image = moonImage
        }
        dateLabel.text = date
        nameLabel.text = name
        detailLabel.text = detail
    }

}
