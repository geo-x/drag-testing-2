//
//  mainContainerView.swift
//  test drag image
//
//  Created by george on 9/12/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa




@IBDesignable


class mainContainerView: NSView {
   
     let rotationAngle: CGFloat = 1.0
   

//    override func awakeFromNib() {
//        

//    }
    
    override func draw(_ dirtyRect: NSRect) {
        
        super.draw(dirtyRect)
      
        self.layer?.backgroundColor = CGColor(
            red: 0.2,
            green: 0.5,
            blue: 0.8,
            alpha: 0.08)
        
        self.layer?.borderWidth = 1
        self.layer?.borderColor = NSColor.black.cgColor
        
        
 
       

    }
    
    
  
        
        
    } //end class





        
    
    
    
    
    

