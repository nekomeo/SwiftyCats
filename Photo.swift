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
    var photoFarm : String
    var photoID : String
    var photoServer : String
    var photoSecret : String
    var photoTitle : String
    
    init(fromDictionary dictionary : [String: String])
    {
        self.photoFarm = dictionary["farm"]!
        self.photoID = dictionary["id"]!
        self.photoServer = dictionary["server"]!
        self.photoSecret = dictionary["secret"]!
        self.photoTitle = dictionary["title"]!
        
        
    }
    
}
