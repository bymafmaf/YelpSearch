//
//  BusinessCell.swift
//  Yelp
//
//  Created by monus on 2/21/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit
import AFNetworking

class BusinessCell: UITableViewCell {

    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var reviewImage: UIImageView!
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var foodTypesLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    var business: Business! {
        didSet {
            if let imageUrl = business.imageURL{
                restaurantImage.setImageWith(imageUrl)
            }
            restaurantName.text = business.name
            reviewCountLabel.text = String(describing: business.reviewCount!) + " reviews"
            addressLabel.text = business.address
            foodTypesLabel.text = business.categories
            distanceLabel.text = business.distance
            reviewImage.setImageWith(business.ratingImageURL!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        restaurantImage.layer.cornerRadius = 3.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
