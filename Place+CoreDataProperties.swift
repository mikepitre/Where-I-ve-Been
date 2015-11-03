//
//  Place+CoreDataProperties.swift
//  WhereIveBeen
//
//  Created by Mike Pitre on 11/3/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Place {

    @NSManaged var image: NSData?
    @NSManaged var name: String?
    @NSManaged var desc: String?
    @NSManaged var company: String?

}
