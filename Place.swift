//
//  Place.swift
//  WhereIveBeen
//
//  Created by Mike Pitre on 11/3/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Place: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    func setPlaceImg(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getPlaceImg() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }

}
