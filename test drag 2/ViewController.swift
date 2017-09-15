//
//  ViewController.swift
//  test drag 2
//
//  Created by george on 9/14/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa












class ViewController: NSViewController {

    @IBOutlet weak var mic1View: NSImageView!
    
    var mic1Position:CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mic1Position = mic1View.frame .origin
        let dragMic1 = NSPanGestureRecognizer(target: self, action: #selector(handleDragMic1(sender:)))
        mic1View.addGestureRecognizer(dragMic1) //add the gesture recognizer just created to mic1View
        
     mic1View.frame.origin.x = 0
    mic1View.frame.origin.y=0
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    func handleDragMic1(sender: NSPanGestureRecognizer ){
        
        let mic1Translation = sender.translation(in: view)
       // Swift.print("dragged \(mic1Translation)")
        let dragView =  sender.view  // just a handle for the view that's going to be dragged
        let translation = sender.translation(in: view)
        mic1View.frame.origin = CGPoint(x: mic1View.frame.origin.x + translation.x, y: mic1View.frame.origin.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
        //mic1View.setNeedsDisplay()
        
    } // end dragMic1 func
    
    
    
    
}

