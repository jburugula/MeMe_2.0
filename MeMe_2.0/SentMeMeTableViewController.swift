//
//  SentMeMeTableViewController.swift
//  MeMe_2.0
//
//  Created by Janaki Burugula on Oct/12/2015.
//  Copyright © 2015 janaki. All rights reserved.
//

import Foundation
import UIKit

class SentMeMeTableViewController: UITableViewController{
    
    // initialize Meme Structure
    
    var memes: [Meme]!{
        return (UIApplication.sharedApplication().delegate as! AppDelegate).memes
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        self.tableView.reloadData()
        
    }
    
    // Default number of sections in Table to one
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // Return number of Rows
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    // set details for the selected Cell
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("SentMeMeTableViewCell") as! SentMeMeTableViewCell
        let cellmeme = memes[indexPath.row]
        
        
        cell.memeText.text  = cellmeme.TopText! + " ... " + cellmeme.BottomText!
        
        cell.memeImage.image = cellmeme.memedImage
        
        return cell
    }
    
    // create outlet for the Table View
    
    @IBOutlet weak var memetableView: UITableView!
    
    
    // Drill down to specific MeMe image
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        
        
        let detailVC = storyboard?.instantiateViewControllerWithIdentifier("memeDetail") as! MeMeDetailViewController
        
        
        detailVC.detailedMeMeImage = memes[indexPath.row]
        
        
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    
    
}
