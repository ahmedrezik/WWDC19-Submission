//
//  WelcomeView.swift
//  
//
//  Created by Ahmed Rezik on 3/18/19.
//

import Foundation
import UIKit
import PlaygroundSupport
import SpriteKit


public class WelcomeView : UIView{
    
    
    var TheText = UILabel()
    var background = UIImageView()
    var NextButton = UIButton()
    var ViewBar: UniverseBar!
    var BarViewer = SKView()
    
    public init(scene: UIView) {
        super.init(frame: CGRect(x: 0, y: 0, width: 720, height: 580))
        ViewSetup()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func pressed(sender: UIButton){
        self.removeFromSuperview()
      PlaygroundPage.current.liveView = InfinityStones(scene: UIView())
    }
    
    func ViewSetup(){
        
       
        TheText.text = "A promenade in The History of the Computer Universe"
        background.image = UIImage(named: "welcomeUniverse.jpg")
       // NextButton.setImage(UIImage(named: "next.png"), for: .normal)
        NextButton.setTitle("Start Experience", for: .normal)
        
       BarViewer.translatesAutoresizingMaskIntoConstraints = false
        TheText.translatesAutoresizingMaskIntoConstraints = false
        background.translatesAutoresizingMaskIntoConstraints = false
        NextButton.translatesAutoresizingMaskIntoConstraints = false
       
        NextButton.setTitleShadowColor(UIColor.blue, for: .normal)
        background.contentMode = .scaleAspectFill
        NextButton.addTarget(self, action: #selector(startExperience), for: .touchUpInside)
        
        TheText.font = UIFont(name: "Helvetica", size: 27)
        TheText.textColor = UIColor.red
       
        self.addSubview(background)
        self.addSubview(TheText)
        self.addSubview(BarViewer)
        self.addSubview(NextButton)
        
        
                UIView.animate(withDuration: 3.0, delay: 0.3, options: UIView.AnimationOptions.curveEaseOut, animations: ({
                    self.TheText.isHidden = false
                    self.TheText.transform = CGAffineTransform(translationX: 50, y: 40)
                }), completion: nil)
        
        TheText.center = self.center
        
        
        
        
        NSLayoutConstraint.activate([
            
            //TheText
            
            TheText.widthAnchor.constraint(equalToConstant: 700),TheText.heightAnchor.constraint(equalToConstant: 100), TheText.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),TheText.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
           
         
         //The Button Constraint
         NextButton.heightAnchor.constraint(equalToConstant: 100),NextButton.widthAnchor.constraint(equalToConstant: 300),NextButton.topAnchor.constraint(equalTo: TheText.bottomAnchor, constant: 50),NextButton.bottomAnchor.constraint(equalTo: BarViewer.topAnchor, constant: 50), NextButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: self.bounds.width / 2 - 150),
         
         
         //Background constraints
         background.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1.0),background.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0),background.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),background.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0), background.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 1.0),background.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),background.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
         
         //BarViewer Constraint
            
            BarViewer.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            BarViewer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            BarViewer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            BarViewer.heightAnchor.constraint(equalToConstant: 55)
            
            ])
        
        
        ViewBar = UniverseBar(current: 1, frame: CGRect(x: 0, y: 0, width: self.bounds.width * 0.75, height: 60))
        //BarViewer.scene?.backgroundColor = SKColor.clear
        BarViewer.presentScene(ViewBar)
        
        BarViewer.allowsTransparency = true
        
        
    }
    
    @objc func startExperience(){
        self.removeFromSuperview()
        PlaygroundPage.current.needsIndefiniteExecution = false
        PlaygroundPage.current.liveView = nil
        PlaygroundPage.current.liveView = InfinityStones(scene: UIView())
    }
    
    
    
}
// Present the view controller in the Live View window
