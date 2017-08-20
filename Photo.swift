//
//  Photo.swift
//  SwiftyCats
//
//  Created by Elle Ti on 2017-08-19.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

import UIKit

class Photo: NSObject
{
    var photoServer : String
    var photoFarm : String
    var photoID : String
    var photoSecret : String
    var photoTitle : String
    
    init(farm : String, server : String, photoID : String, secret : String, title : String)
    {
        self.photoFarm = farm
        self.photoServer = server
        self.photoID = photoID
        self.photoSecret = secret
        self.photoTitle = title
    }
    
}
