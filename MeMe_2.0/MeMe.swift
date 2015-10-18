//
//  MeMe.swift
//  MeMe_2.0
//
//  Created by Janaki Burugula on Oct/12/2015.
//  Copyright © 2015 janaki. All rights reserved.
//

import Foundation
import UIKit

/*
Structire to store MeMe images. It stores Top ,Bottom texts,original image and MeMed image
*/

struct Meme {
    var TopText:String?
    var BottomText:String?
    var originalImage:UIImage?
    var memedImage:UIImage!
}