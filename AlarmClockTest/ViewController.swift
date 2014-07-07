//
//  ViewController.swift
//  AlarmClockTest
//
//  Created by traveler on 7/3/14.
//  Copyright (c) 2014 traveler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var alarmText : UILabel
    
    @IBAction func alarmTest(sender : AnyObject) {
        alarmText.text = "Button was clicked"
//        var alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.Alert)
//        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
//        self.presentViewController(alert, animated: true, completion: nil)
        setNotification()
    }
    
    
    var currentDate = ""
    
//    func createTime() -> String {
//        var dateTest = NSDate()
//        var dateFormatter = NSDateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd 'at' HH:mm:ss"
//        return dateFormatter.stringFromDate(NSDate())
//    }
    
//    func update() {
//        var updateTime = createTime()
//        timeText.text = createTime()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setNotification() {
        var localNotification = UILocalNotification()
        localNotification.alertBody = "ALERT TEST"
        localNotification.fireDate = NSDate().dateByAddingTimeInterval(3)
        localNotification.soundName = "alarm.wav"
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
    }

    

    


}

