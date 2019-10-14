//
//  ViewController.swift
//  stopwatch
//
//  Created by Felix 05 on 05/10/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var timer = Timer()
 var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBOutlet weak var countlabel: UILabel!
    
    
    
    @IBAction func startButton(_ sender: UIBarButtonItem) {
        
        
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(display), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    
    @objc func display()
   {
    count += 1
    countlabel.text = String(count)
    
    }
    @IBAction func pauseButton(_ sender: UIBarButtonItem) {
        timer.invalidate()
    }
    
    
    @IBAction func stopButton(_ sender: UIBarButtonItem) {
        
        timer.invalidate()
        count = 0
        countlabel.text = String(count)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

