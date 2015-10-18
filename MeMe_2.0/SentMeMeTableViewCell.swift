//
//  SentMeMeTableViewCell.swift
//  MeMe_2.0
//
//  Created by Janaki Burugula on Oct/17/2015.
//  Copyright © 2015 janaki. All rights reserved.
//

import UIKit

class SentMeMeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var memeImage: UIImageView!
    @IBOutlet weak var memeText: UILabel!
    
    var memes = [Meme]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
