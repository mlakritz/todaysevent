//
//  EventViewController.swift
//  SimpleCal
//
//  Created by Melissa Lakritz on 10/25/15.
//  Copyright © 2015 Melissa Lakritz. All rights reserved.
//

import UIKit

class EventViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate{
    @IBOutlet weak var eventTextField: UITextField!
    @IBOutlet weak var descTextField: UITextView!
    
    var name = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.eventTextField.delegate = self
        self.descTextField.delegate = self
        
        eventTextField.placeholder = name

    }


        
    @IBAction func deleteEvent(sender: AnyObject) {
        self.performSegueWithIdentifier("deleteEvent", sender: self)
    }




    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destinationVC = segue.destinationViewController as! MasterTableViewController
    
        destinationVC.todayEvents.removeAtIndex(destinationVC.todayEvents.count - 1)
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}



