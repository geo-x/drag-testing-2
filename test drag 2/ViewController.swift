//
//  ViewController.swift
//  test drag 2
//
//  Created by george on 9/14/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa




let mic1Layer = CALayer()




class ViewController: NSViewController {

    
    
    
    
    
    
    
    @IBOutlet weak var mic1View: NSImageView!
   
  
   
    
    var mic1Position:CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
 
        
     
        
        
        let dragMic1 = NSPanGestureRecognizer(target: self, action: #selector(handleDragMic1(sender:)))
        mic1View.addGestureRecognizer(dragMic1) //add the gesture recognizer just created to mic1View
        
    
     
        
         
        mic1View.frame.origin.x = 0
        mic1View.frame.origin.y=0
        
        Swift.print(" centre = \(soundSourceCenter)")
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
        
        
        Swift.print("xxxxxxx")
        
        let translation = sender.translation(in: view)
        mic1View.frame.origin = CGPoint(x: mic1View.frame.origin.x + translation.x, y: mic1View.frame.origin.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
        
        var micRotation = rotateFrame(micPositon: mic1View.referencePoint)
        
        Swift.print("the mic referencePoint --- \(mic1View.referencePoint)")
        Swift.print("the mic rotation is --- \(micRotation)")
        Swift.print("the mic rotation returned to calling --- \(rotateFrame(micPositon: mic1View.referencePoint))")

        
        mic1View.frameRotation = micRotation + 90// degrees
        
    } // end dragMic1 func
    
    
    
    
    
    
  
} //end class

func rotateFrame(micPositon:NSPoint) -> CGFloat {
    
    
    
    let sideUp =  (micPositon.y - soundSourceCenter.y)
    let sideAcross = (micPositon.x - soundSourceCenter.x)
    
    Swift.print(" mic origin position + \(micPositon)")
    Swift.print(" deltaY + \(micPositon.y - soundSourceCenter.y)")
    Swift.print(" deltaX + \(micPositon.x - soundSourceCenter.x)")
    
    //Swift.print(" return value vv \((atan (-1.0) as Float).radiansToDegrees) ")    //atan returns radians
    
    Swift.print(" return value \(atan(sideUp / sideAcross).radiansToDegrees) ")
    
    return atan(sideUp / sideAcross).radiansToDegrees
    
}

