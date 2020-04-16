//
//  PhotoController.swift
//  PhotoCollection
//
//  Created by Ahava on 4/16/20.
//  Copyright © 2020 Ahava. All rights reserved.
//

import Foundation

class PhotoController {
    var photos: [Photo] = []
    
    func createNewPhoto(imageData: Data, title: String) {
        let photo = Photo(imageData: imageData, title: title)
        photos.append(photo)
    }
    
    func updatePhoto(photo: Photo, newData: Data, newTitle: String) {
        
    }
}
