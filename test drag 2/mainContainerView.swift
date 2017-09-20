//
//  mainContainerView.swift
//  test drag image
//
//  Created by george on 9/12/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa





 var soundSourceCenter = NSPoint(x: 0, y: 0)




class mainContainerView: NSView {
    
   
   
     let rotationAngle: CGFloat = 1.0
   

//    override func awakeFromNib() {
//        

//    }
    
    override func draw(_ dirtyRect: NSRect) {
        
        super.draw(dirtyRect)
        
        soundSourceCenter = NSPoint(x: self.frame.width/2, y: self.frame.height * 0.75)
        
        drawSoundSource(center: soundSourceCenter)
        
        self.layer?.backgroundColor = CGColor(
            red: 0.2,
            green: 0.5,
            blue: 0.8,
            alpha: 0.08)
        
        self.layer?.borderWidth = 1
        self.layer?.borderColor = NSColor.black.cgColor
        
        
 
       

    }
    
    
    func drawSoundSource(center: NSPoint) -> Void {
        
        let soundSourceIcon = NSBezierPath()
        soundSourceIcon.appendArc(withCenter: center, radius: 5, startAngle: 0, endAngle: 360)
        soundSourceIcon.move(to: NSPoint(x: center.x + 10, y: center.y ))
        soundSourceIcon.appendArc(withCenter: center, radius: 10, startAngle: 0, endAngle: 360)
        
        
        soundSourceIcon.lineWidth = 2
        soundSourceIcon.stroke()
        soundSourceIcon.fill()
        
    }
        
    } //end class





        
    
    
    
    
    

