//
//  ViewController.swift
//  test drag 2
//
//  Created by george on 9/14/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa






var centerMainView:NSPoint = NSPoint(x: 0, y: 0)





class ViewController: NSViewController {

    
    
    
    
    
    
    
    @IBOutlet weak var mic1View: NSImageView!
    
    var mic1Position:CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerMainView =  NSPoint(x: self.view.frame.width/2, y: self.view.frame.size.height/2)

        
        mic1Position = mic1View.frame.origin
        let dragMic1 = NSPanGestureRecognizer(target: self, action: #selector(handleDragMic1(sender:)))
        mic1View.addGestureRecognizer(dragMic1) //add the gesture recognizer just created to mic1View
        
        mic1View.frame.origin.x = 0
        mic1View.frame.origin.y=0
        
        Swift.print(" centre = \(centerMainView)")
        Swift.print(" origin = \(mic1View.frame.origin)")
        Swift.print(" frame = \(mic1View.frame)")
        Swift.print(" reference point = \(mic1View.referencePoint)")
        

        
    }
    
    
    
    
    
    
    
    
    

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    func handleDragMic1(sender: NSPanGestureRecognizer ){
        
        let translation = sender.translation(in: view)
        mic1View.frame.origin = CGPoint(x: mic1View.frame.origin.x + translation.x, y: mic1View.frame.origin.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
       var micRotation = rotateFrame(micPositon: mic1View.frame.origin)
        micRotation = micRotation * 57.2958
        Swift.print(micRotation)
        mic1View.frameRotation = micRotation
        
    } // end dragMic1 func
    
    
    func rotateFrame(micPositon:NSPoint) -> CGFloat {
        
        var sideUp = abs(micPositon.y - centerMainView.y)
        var sideAcross = abs(micPositon.x - centerMainView.x)
        return atan( sideUp / sideAcross)
        
        
        
    }
    
    
    
  
} //end class

