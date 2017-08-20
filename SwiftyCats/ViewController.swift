//
//  ViewController.swift
//  SwiftyCats
//
//  Created by Elle Ti on 2017-08-19.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource
{
    @IBOutlet weak var collectionView: UICollectionView!
    var photoArray = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        URLSetup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func URLSetup()
    {
        
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return photoArray.count
    }
    
    
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        return cell
    }

}

