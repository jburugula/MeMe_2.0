//
//  SentMeMeCollectionViewController.swift
//  MeMe_2.0
//
//  Created by Janaki Burugula on Oct/16/2015.
//  Copyright © 2015 janaki. All rights reserved.
//

import Foundation
import UIKit

var memes: [Meme]!

class SentMeMeCollectionViewController: UICollectionViewController {
    
    
    @IBOutlet weak var collectFlow: UICollectionViewFlowLayout!
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
        memes = appDelegate.memes
        collectionView!.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let space: CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
        collectFlow.minimumInteritemSpacing = space
        collectFlow.itemSize = CGSizeMake(dimension, dimension)
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("memeCollection", forIndexPath: indexPath)
        let meme = memes[indexPath.item]
        let imageView = UIImageView(image: meme.memedImage)
        cell.backgroundView = imageView
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let detailVC = storyboard?.instantiateViewControllerWithIdentifier("memeDetail") as! MeMeDetailViewController
        
        detailVC.detailedMeMeImage = memes[indexPath.item]
        
        navigationController!.pushViewController(detailVC, animated: true)
        
    }
    
}