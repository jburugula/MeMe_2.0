//
//  MeMeDetailViewController.swift
//  MeMe_2.0
//
//  Created by Janaki Burugula on Oct/12/2015.
//  Copyright © 2015 janaki. All rights reserved.
//

import Foundation
import UIKit

class MeMeDetailViewController: UIViewController{
    
    var detailedMeMeImage : Meme!
    var editInd: Int? = nil
    
    
    @IBOutlet weak var receivedMeMeImage: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // Assign the selected image from table/collection cell to received image picker on Detail view
        
        receivedMeMeImage.contentMode = UIViewContentMode.ScaleAspectFill
        receivedMeMeImage.image = detailedMeMeImage.memedImage
        
        
    }
    
}