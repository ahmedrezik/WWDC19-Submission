//
//  UniverseBar.swift
//  
//
//  Created by Ahmed Rezik on 3/17/19.
//

import Foundation
import UIKit
import PlaygroundSupport
import SpriteKit

public class UniverseBar: SKScene{

    
    public init(AtViewNumber: Int){
        super.init(size: CGSize(width: 900, height: 100) )
        prepView(AtViewNumber)
    }
    
    public init(current page: Int, frame: CGRect){
        super.init(size: frame.size)
        prepView(page,frame)
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    func prepView(_ CurrentView: Int, _ frame: CGRect = .zero){

       self.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        
        self.drawLine(from: CGPoint(x: 0, y: frame.size.height / 2), to: CGPoint(x: frame.size.width, y: frame.size.height / 2))
        generateCircles(CurrentView, frame)


    }
    
    
    func drawLine(from: CGPoint, to: CGPoint) {

        let line = SKShapeNode()
        let path = CGMutablePath()
        path.addLines(between: [from, to])
        line.path = path
        line.strokeColor = .white
        line.lineWidth = 4
        addChild(line)
        
    }
    
    func generateCircles(_ CurrentPage: Int, _ frame: CGRect){
        var startPosition: CGFloat = ((frame.size.width) / 8) / 2
        for  i in 0..<8 {
            let multiplier: CGFloat = CurrentPage-1 == i ? 0.3 : 0.2
            
            let circle = SKShapeNode(circleOfRadius: frame.size.height * multiplier)
            let point = CGPoint(x: startPosition, y: frame.size.height / 2)
            
            circle.position = point
            circle.fillColor = SKColor.cyan
            circle.strokeColor = SKColor.yellow
//            switch(i){
//
//            case 1: circle.fillTexture = SKTexture(image: UIImage(named: "UniverseBG.jpg")!)
//                break
//            case 2: circle.fillTexture = SKTexture(image: UIImage(named: "infStonesAnswer.jpg")!)
//                break
//            case 3: circle.fillTexture = SKTexture(image: UIImage(named: "ironman2.jpg")!)
//                break
//            case 4: circle.fillTexture = SKTexture(image: UIImage(named: "shuri.jpg")!)
//                break
//            case 5: circle.fillTexture = SKTexture(image: UIImage(named: "drstrange4.jpg")!)
//                break
//            case 6: circle.fillTexture = SKTexture(image: UIImage(named: "vibranium.jpg")!)
//                break
//            case 7: circle.fillTexture = SKTexture(image: UIImage(named: "QuantumRealm.png")!)
//                break
//            default: break
//
//            }
          self.addChild(circle)
            startPosition += (frame.size.height * multiplier) * 2 + ((frame.size.width) / 8) / 2
            
          
        }
        
      
    }
}



