//
//  PhotoDetailViewController.swift
//  PhotoCollection
//
//  Created by Ahava on 4/16/20.
//  Copyright © 2020 Ahava. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageTitleTextField: UITextField!
    
    var photoController: PhotoController?
    var photo: Photo?
    var themeHelper: ThemeHelper?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addPhoto(_ sender: UIButton) {
    }
    
    @IBAction func savePhoto(_ sender: UIBarButtonItem) {
    }
}
