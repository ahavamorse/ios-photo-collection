//
//  PhotosCollectionViewController.swift
//  PhotoCollection
//
//  Created by Ahava on 4/16/20.
//  Copyright © 2020 Ahava. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PhotosCollectionViewController: UICollectionViewController {
    
    let photoController = PhotoController()
    let themeHelper = ThemeHelper()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? PhotoDetailViewController else { return }
        
        if segue.identifier == "ShowPhotoDetailSegue" {
            guard let indexPathArray = collectionView.indexPathsForSelectedItems else { return }
            viewController.themeHelper = themeHelper
            viewController.photoController = photoController
            viewController.photo = photoController.photos[indexPathArray[0].row]
            
        } else if segue.identifier == "SelectThemeSegue" {
            viewController.themeHelper = themeHelper
            
        } else if segue.identifier == "AddPhotoSegue" {
            viewController.themeHelper = themeHelper
        }
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoController.photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? PhotosCollectionViewCell else { fatalError("Not a photo collection view cell") }
    
        let photo = photoController.photos[indexPath.row]
        
        cell.photo = photo
        
        return cell
    }

    func setTheme() {
        guard let theme: String = themeHelper.themePreference else { return }
        if theme == "Black" {
            collectionView.backgroundColor = .darkGray
        } else {
            collectionView.backgroundColor = .blue
        }
    }
    
    // MARK: UICollectionViewDelegate
    /*
    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
