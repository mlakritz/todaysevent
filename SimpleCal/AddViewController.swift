//
//  AddViewController.swift
//  SimpleCal
//
//  Created by Melissa Lakritz on 10/25/15.
//  Copyright © 2015 Melissa Lakritz. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descTextView: UITextView!
    
    @IBAction func addEventDone(sender: AnyObject) {
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    @IBAction func addDone(sender: AnyObject) {
//    
//        let userDefault:NSUserDefaults = NSUserDefaults.standardUserDefaults()
//        
//        var itemList:NSMutableArray? = userDefault.objectForKey("itemList") as? NSMutableArray
//        
//        let dataSet:NSMutableDictionary = [:]
//        dataSet.setObject(nameTextField.text!, forKey: "eventName")
//        dataSet.setObject(descTextView.text!, forKey: "itemDesc")
//        
//        if ((itemList) != nil){
//            
//            let newList:NSMutableArray = NSMutableArray();
//            
//            for dict:AnyObject in itemList! {
//                newList.addObject(dict as! NSDictionary)
//                
//            }
//        
//            userDefault.removeObjectForKey("itemList")
//            newList.addObject(dataSet)
//            userDefault.setObject(newList, forKey: "itemList")
//            
//        } else{
//            userDefault.removeObjectForKey("itemList")
//            itemList! = NSMutableArray()
//            itemList!.addObject(dataSet)
//            userDefault.setObject(itemList, forKey: "itemList")
//            
//        }
//        
//        userDefault.synchronize()
//        
//        
//    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let destinationVC = segue.destinationViewController as! MasterTableViewController
            destinationVC.todayEvents.append("\(nameTextField.text!)")
    }
    

}

