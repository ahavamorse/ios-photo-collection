//
//  Photo.swift
//  PhotoCollection
//
//  Created by Ahava on 4/16/20.
//  Copyright © 2020 Ahava. All rights reserved.
//

import Foundation

struct Photo: Equatable, Codable {
    var imageData: Data
    var title: String
}
