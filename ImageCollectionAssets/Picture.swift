//
//  Picture.swift
//  ImageCollectionAssets
//
//  Created by Raman Kozar on 30/12/2022.
//

import Foundation

// Model in the MVC
//
struct Picture {
    
    var image: String = ""
    var name: String = ""
    
    init(image: String, name: String) {
        self.image = image
        self.name = name
    }
    
}
