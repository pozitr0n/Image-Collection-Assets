//
//  PictureDetailViewController.swift
//  ImageCollectionAssets
//
//  Created by Raman Kozar on 30/12/2022.
//

import UIKit

class PictureDetailViewController: UIViewController {
    
    var picture: Picture?
    
    @IBOutlet var pictureImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pictureImageView.image = UIImage(named: picture?.image ?? "")
        
    }

}
