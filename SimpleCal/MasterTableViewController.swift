//
//  MasterTableViewController.swift
//  SimpleCal
//
//  Created by Melissa Lakritz on 10/25/15.
//  Copyright © 2015 Melissa Lakritz. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    
    var todayEvents = [("Breakfast at 8:00 AM"), ("Developer Meeting"), ("Networking Lunch"), ("Study Group"), ("Dinner with Friends at 7:30 PM")]
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descTextView: UITextView!
    
    var name = ""
    //var description = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todayEvents.count
    }
    @IBAction func addEvent(sender: AnyObject) {
        self.performSegueWithIdentifier("showAddVC", sender: self)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let (eventTitle) = todayEvents[indexPath.row]
        
        cell.textLabel!.text = eventTitle
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        name = cell!.textLabel!.text!
        self.performSegueWithIdentifier("showDetail", sender: self )
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       // Get the new view controller using segue.destinationViewController.
       // Pass the selected object to the new view controller.
        
        if (segue.identifier == "showDetail") {
            let selectedIndexPath:NSIndexPath = self.tableView.indexPathForSelectedRow!
            let eventViewController:EventViewController = segue.destinationViewController as! EventViewController
            eventViewController.name = "\(name)"
            
        }
    }

}

   /*
    var eventItems:NSMutableArray = NSMutableArray();
    
    override func viewDidAppear(animated: Bool) {
        let userDefault:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        let itemListFromUserDefaults:NSMutableArray? = userDefault.objectForKey("itemList") as? NSMutableArray
        
        if ((itemListFromUserDefaults) != nil){
            eventItems = itemListFromUserDefaults!
        }
        
        self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventItems.count
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell

        let eventItem:NSDictionary = eventItems.objectAtIndex(indexPath.row)
         as! NSDictionary

        cell.textLabel!.text = (eventItem.objectForKey("eventName") as? String)!
        
        return cell
        
    }

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */


    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation


        
        
        
        
        
        
    }
    */

