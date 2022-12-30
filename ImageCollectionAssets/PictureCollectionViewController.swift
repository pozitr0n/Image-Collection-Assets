//
//  PictureCollectionViewController.swift
//  ImageCollectionAssets
//
//  Created by Raman Kozar on 30/12/2022.
//

import UIKit

class PictureCollectionViewController: UICollectionViewController {
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue){
        
    }
    
    // Array of pictures with description
    private var pictures : [Picture] = [Picture(image: "pic1", name: "Notebook"),
                                        Picture(image: "pic2", name: "Flamingo"),
                                        Picture(image: "pic3", name: "TV"),
                                        Picture(image: "pic4", name: "Words"),
                                        Picture(image: "pic5", name: "Stars"),
                                        Picture(image: "pic6", name: "Casset"),
                                        Picture(image: "pic7", name: "Workspace"),
                                        Picture(image: "pic8", name: "Text"),
                                        Picture(image: "pic9", name: "Ball"),
                                        Picture(image: "pic10", name: "Lamp"),
                                        Picture(image: "pic11", name: "Earphones"),
                                        Picture(image: "pic12", name: "iMac"),
                                        Picture(image: "pic13", name: "Printer"),
                                        Picture(image: "pic14", name: "Orange"),
                                        Picture(image: "pic15", name: "Camera"),
                                        Picture(image: "pic16", name: "Pinterest"),
                                        Picture(image: "pic17", name: "Facebook"),
                                        Picture(image: "pic18", name: "Instagram"),
                                        Picture(image: "pic19", name: "MMM"),
                                        Picture(image: "pic20", name: "VK"),
                                        Picture(image: "pic21", name: "Youtube"),
                                        Picture(image: "pic22", name: "Line"),
                                        Picture(image: "pic23", name: "Wordpress"),
                                        Picture(image: "pic24", name: "Linkedin")]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return pictures.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! PictureCollectionViewCell
    
        // Configure the cell
        //
        let pic = pictures[indexPath.row]
        cell.pictureImageView.image     = UIImage(named: pic.image)
        cell.pictureNameLabel.text      = pic.name

        return cell
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPaths = collectionView.indexPathsForSelectedItems{
                let destinationController = segue.destination as! PictureDetailViewController
                destinationController.picture = pictures[indexPaths[0].row]
                collectionView.deselectItem(at: indexPaths[0], animated: false)
            }
        }
    }
    
}
