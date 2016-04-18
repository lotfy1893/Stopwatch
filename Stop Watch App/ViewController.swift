//
//  ViewController.swift
//  Stop Watch App
//
//  Created by Mohammad Lotfy on 2016-04-18.
//  Copyright © 2016 Mohammad Lotfy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    
    var count = 0
    var timer = NSTimer()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func play(sender: AnyObject) {
           timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
    }
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        count = 0
//        timerLabel.text = "\(count)"
        timerLabel.text = "0"
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTime(){
        count = count + 1
        timerLabel.text = "\(count)"
    }

}

