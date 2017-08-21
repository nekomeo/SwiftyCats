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
        let urlString = "https://api.flickr.com/services/rest/?method=flickr.photos.search&format=json&nojsoncallback=1&api_key=759da7ef2198dfc69eeaac5f46dd486f&tags=kittens"
        
//        let urlRequest = URLRequest.init(url: urlString)
        
//        NSURL *url = [NSURL URLWithString:@"https://api.flickr.com/services/rest/?method=flickr.photos.search&format=json&nojsoncallback=1&api_key=759da7ef2198dfc69eeaac5f46dd486f&tags=kittens"];
//        NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];
//        
//        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
//        NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
//        
//        NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//            
//            if (!error)
//            {
//            NSError *jsonError = nil;
//            
//            NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
//            NSDictionary *photoDictionary = jsonDictionary[@"photos"];
//            NSMutableArray *photoArray = photoDictionary[@"photo"];
//            
//            for (NSDictionary *flickr in photoArray)
//            {
//            Flickr * image = [[Flickr alloc] initWithDictionary:flickr];
//            [self.flickrArray addObject:image];
//            }
//            [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//            [self.collectionView reloadData];
//            }];
//            }
//            }];
//        [dataTask resume];
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

