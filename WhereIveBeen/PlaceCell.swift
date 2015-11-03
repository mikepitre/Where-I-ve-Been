//
//  PlaceCell.swift
//  WhereIveBeen
//
//  Created by Mike Pitre on 11/3/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class PlaceCell: UITableViewCell {
    
    @IBOutlet weak var placeImg: UIImageView!
    @IBOutlet weak var placeTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(place: Place) {
        placeImg.image = place.getPlaceImg()
        placeTitle.text = place.name
    }

}
