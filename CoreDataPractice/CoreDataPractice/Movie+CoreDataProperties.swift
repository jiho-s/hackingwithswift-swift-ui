//
//  Movie+CoreDataProperties.swift
//  CoreDataPractice
//
//  Created by 신지호 on 2020/04/10.
//  Copyright © 2020 jiho. All rights reserved.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var title: String?
    @NSManaged public var director: String?
    @NSManaged public var year: Int16

    public var wrappedTitle: String {
        title ?? "Unknown TItle"
    }
}
