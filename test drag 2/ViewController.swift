//
//  ViewController.swift
//  test drag 2
//
//  Created by george on 9/14/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa




let mic1Layer = CALayer()
//let mic1ViewLayer = CALayer()

let soundSourcePosition =  CGPoint(x: 400, y: 500)


class ViewController: NSViewController {


    
    @IBOutlet weak var mic1View: NSView!
    
   
   
    
    
    var currentMicrophoneAngle:CGFloat = 0
    
    //var mic1Position:CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mic1ViewLayer = mic1View.layer
        mic1ViewLayer?.contents = NSImage(named: "microphone_icon_80x80")
        mic1ViewLayer?.contentsGravity = kCAGravityResize  //kCAGravityCenter
        mic1ViewLayer?.display()
                Swift.print("the view layer is \(mic1ViewLayer)")
                Swift.print("the view contents is \(mic1ViewLayer?.contents)")
        
//mic1ViewLayer.setAffineTransform(CGAffineTransform(rotationAngle: CGFloat(70.degreesToRadians) ))

        mic1View.setNeedsDisplay(mic1View.frame)
        
        
        let dragMic1 = NSPanGestureRecognizer(target: self, action: #selector(handleDragMic1(sender:)))
        mic1View.addGestureRecognizer(dragMic1) //add the gesture recognizer just created to mic1View
        
    
     
        
         
//        mic1View.frame.origin.x = 550
//        mic1View.frame.origin.y = 450
        
        
        
       
        
        
//        currentMicrophoneAngle = atan2((soundSourcePosition.y - mic1View.frame.origin.y), (soundSourcePosition.x - mic1View.frame.origin.x ))
//        Swift.print("theta = \(currentMicrophoneAngle.radiansToDegrees)")
//        mic1View.frameRotation = currentMicrophoneAngle.radiansToDegrees-90
        
        
    } //end veiw did load
    
    
    
    
    
    
    
    
    

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    func handleDragMic1(sender: NSPanGestureRecognizer ){
//        
//        
//        Swift.print("xxxxxxx")
//        
        let translation = sender.translation(in: view)
        mic1View.frame.origin = CGPoint(x: mic1View.frame.origin.x + translation.x, y: mic1View.frame.origin.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
//        
//        //currentMicrophoneAngle = calculateMicAimAngle(micPositon:mic1View.frame.origin)
//        //mic1View.frameRotation = currentMicrophoneAngle.radiansToDegrees-90
//        
//        
    } // end handleDragMic1 func
//    
//    
//    func calculateMicAimAngle(micPositon:CGPoint) -> CGFloat {
//        
//        Swift.print("rotate func")
//        //currentMicrophoneAngle = atan2((soundSourcePosition.y - micPositon.y), (soundSourcePosition.x - micPositon.x))
//        return (currentMicrophoneAngle)
//        
//        
//    }
    
    
    
  
} //end class




