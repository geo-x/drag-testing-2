//
//  Mic1View.swift
//  test drag 2
//
//  Created by george on 9/19/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa



 let rect_1 = NSRect(x: 0, y: 0, width: 80, height: 80) //note that layer.position will be default centre anchor point

class Mic1CustomView: NSView {
    
    var micPosition: CGPoint = CGPoint(x: 0, y: 0) // initialize a value
    var targetPoint: CGPoint = soundSourcePosition
    
    
    
     override func awakeFromNib() {
       
       self.frame.origin = NSPoint(x: 200, y: 200)
        
        
           }
    

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        
        mic1Layer.frame = rect_1
        self.layer?.addSublayer(mic1Layer)
        
        mic1Layer.borderWidth = 1.0
        mic1Layer.borderColor = NSColor.green.cgColor
        mic1Layer.masksToBounds = false
        mic1Layer.shadowColor = NSColor.black.cgColor
        mic1Layer.shadowOffset = CGSize(width:5, height: -5)
        mic1Layer.shadowOpacity = 0.2
        mic1Layer.shadowRadius = 3.0
        
        mic1Layer.contents = NSImage(named: "microphone_icon_80x80")
        mic1Layer.contentsGravity = kCAGravityCenter
        
        
        
        

        self.layer?.backgroundColor = CGColor(
            red: 0.1,
            green: 0.1,
            blue: 1.0,
            alpha: 0.5)
        
        self.layer?.borderWidth = 1
        self.layer?.borderColor = NSColor.black.cgColor

        
        
    }
    
}



