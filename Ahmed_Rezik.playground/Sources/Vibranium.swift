import Foundation
import SpriteKit
import UIKit
import PlaygroundSupport

public class Vibranium: UIView {
    
    var QuestionLabel = UITextView()
    var Choice1 = UIButton()
    var Choice2 = UIButton()
    var Choice3 = UIButton()
    var Choice4 = UIButton()
    var ViewBar = UniverseBar(AtViewNumber: 6)
    var BarView = SKView()
    var BackgroundImage = UIImageView()
   
    
    
    
    
    public  init(frame: UIView) {
        super.init(frame: CGRect(x: 0, y: 0, width: 720, height: 580))
        ViewSetup()
        IntializeButtons()
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func ViewSetup(){
        
        BackgroundImage.image = UIImage(named: "vibranium.jpg")
        BackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        BackgroundImage.contentMode = .scaleAspectFill
        
        self.addSubview(BackgroundImage)
        
//        ViewBar.size = CGSize(width: 1000, height: 300)
//        ViewBar.position = CGPoint(x: self.frame.minX, y: self.frame.minY)
//        BarView.presentScene(ViewBar)
//        self.addSubview(BarView)
        
        QuestionLabel.translatesAutoresizingMaskIntoConstraints = false
        QuestionLabel.font = UIFont(name: "Helvetica", size: 25)
        QuestionLabel.text = "What electronic component was a huge accelrator to Computers in the same sense as Vibranium was to the Avengers and Wakanda ?"
        QuestionLabel.backgroundColor = .clear
        QuestionLabel.textColor = UIColor.red
        self.addSubview(QuestionLabel)
        
        
        
        
        NSLayoutConstraint.activate([
            BackgroundImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0),
            BackgroundImage.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1.0),
            BackgroundImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            BackgroundImage.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            ])

        
        NSLayoutConstraint.activate([
            
            QuestionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 25),
            QuestionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 17),
            QuestionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10) , QuestionLabel.heightAnchor.constraint(equalToConstant: 150)
            ])
        
        
        
    }
    func IntializeButtons(){
        
        Choice1.translatesAutoresizingMaskIntoConstraints = false
        Choice2.translatesAutoresizingMaskIntoConstraints = false
        Choice3.translatesAutoresizingMaskIntoConstraints = false
        Choice4.translatesAutoresizingMaskIntoConstraints = false
        
        
        Choice1.setTitle("Arithmetic Logic Unit", for: .normal)
        Choice2.setTitle("GPU", for: .normal)
        Choice3.setTitle("MicroProcessors", for: .normal)
        Choice4.setTitle("Transistors", for: .normal)
        Choice1.setTitleColor(UIColor.black, for: .normal)
        Choice2.setTitleColor(UIColor.black, for: .normal)
        Choice3.setTitleColor(UIColor.black, for: .normal)
        Choice4.setTitleColor(UIColor.black, for: .normal)
        
        
        Choice1.layer.cornerRadius = 15
        Choice1.clipsToBounds = true
        Choice2.layer.cornerRadius = 15
        Choice2.clipsToBounds = true
        Choice3.layer.cornerRadius = 15
        Choice3.clipsToBounds = true
        Choice4.layer.cornerRadius = 15
        Choice4.clipsToBounds = true
        Choice1.backgroundColor = UIColor.white
        Choice2.backgroundColor = UIColor.white
        Choice3.backgroundColor = .white
        Choice4.backgroundColor = .white
        Choice1.addTarget(self, action: #selector(Choice1Clicked), for: .touchUpInside)
        Choice2.addTarget(self, action: #selector(Choice2Clicked), for: .touchUpInside)
        Choice3.addTarget(self, action: #selector(Choice3Clicked), for: .touchUpInside)
        Choice4.addTarget(self, action: #selector(Choice4Clicked), for: .touchUpInside)
        
        self.addSubview(Choice1)
        self.addSubview(Choice2)
        self.addSubview(Choice3)
        self.addSubview(Choice4)
        
        NSLayoutConstraint.activate([
            // choice 2 button constraints
            Choice2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            Choice2.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -35),
            Choice2.widthAnchor.constraint(equalToConstant: 200),
            Choice2.heightAnchor.constraint(equalToConstant: 45),
            
            // choice 1 button constraints
            Choice1.leadingAnchor.constraint(equalTo: Choice2.leadingAnchor, constant: 0),
            Choice1.bottomAnchor.constraint(equalTo: Choice2.topAnchor, constant: -45),
            Choice1.widthAnchor.constraint(equalTo: Choice2.widthAnchor, multiplier: 1.0),
            Choice1.heightAnchor.constraint(equalTo: Choice2.heightAnchor, multiplier: 1.0),
            
            
            //Choice 4 Constraints
            Choice4.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -35),
            Choice4.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -35),
            Choice4.widthAnchor.constraint(equalToConstant: 200),
            Choice4.heightAnchor.constraint(equalToConstant: 45),
            
            //Choice 3 Constraint
            Choice3.trailingAnchor.constraint(equalTo: Choice4.trailingAnchor, constant: 0),
            Choice3.bottomAnchor.constraint(equalTo: Choice4.topAnchor, constant: -45),
            Choice3.widthAnchor.constraint(equalTo: Choice4.widthAnchor, multiplier: 1.0),
            Choice3.heightAnchor.constraint(equalTo: Choice4.heightAnchor, multiplier: 1.0)
            
            ])
        
        
    }
    
    
    @objc func ButtonPressed() {
        self.removeFromSuperview()
        PlaygroundPage.current.liveView = CorrectAnswerVib(frame: UIView())
        
    }
    
    
    @objc func Choice4Clicked(){
        
        UIView.animate(withDuration: 0.7, delay: 0.3, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            self.Choice4.backgroundColor =  UIColor.green
            
        }), completion: { _ in
            self.Choice4.backgroundColor = UIColor.white
        })
        
        Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(ButtonPressed), userInfo: nil, repeats: true)
        
    }
    
    
    @objc func Choice2Clicked(){
        
        
        UIView.animate(withDuration: 0.7, delay: 0.3, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            self.Choice2.backgroundColor =  UIColor.red
            
        }), completion: { _ in
            self.Choice2.backgroundColor = UIColor.white
        })
        
        
    }
    
    @objc func Choice1Clicked(){
        
        
        UIView.animate(withDuration: 0.7, delay: 0.3, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            self.Choice1.backgroundColor =  UIColor.red
            
        }), completion: { _ in
            self.Choice1.backgroundColor = UIColor.white
        })
        
    }
    @objc func Choice3Clicked(){
        
        
        UIView.animate(withDuration: 0.7, delay: 0.3, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            self.Choice3.backgroundColor =  UIColor.red
            
            
        }), completion: { _ in
            self.Choice3.backgroundColor = UIColor.white
        })
        
        
    }
}

public class CorrectAnswerVib: UIView{
    
    var CorrectLabel = UILabel() //
    var Image1 = UIImageView() //
    var Imag1Label = UILabel() //
    var Image2 = UIImageView() //
    var Image2Label = UILabel() //
    var explanation = UITextView() //
    var background = UIImageView()//
    var NextView = UIButton()//
    
    
    
    public init(frame: UIView) {
        super.init(frame: CGRect(x: 0, y: 0, width: 720, height: 580))
       
        
        SetUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func SetUpView(){
        //Background
        
        
        background.translatesAutoresizingMaskIntoConstraints = false
        background.image = UIImage(named: "VibraniumCorrectAnswer.jpg")
        background.contentMode = .scaleAspectFill
        self.addSubview(background)
        
        NSLayoutConstraint.activate([
            background.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1.0), background.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0),
            background.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            background.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0)
            
            
            ])
        
        // MARK: View setup for Correct Label
        CorrectLabel.text = "Correct!"
        CorrectLabel.textColor = UIColor.green
          CorrectLabel.font = UIFont(name: "Helvetica", size: 25)
        
        
        CorrectLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(CorrectLabel)
        NSLayoutConstraint.activate([
            CorrectLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            CorrectLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            CorrectLabel.widthAnchor.constraint(equalToConstant: 170),
            CorrectLabel.heightAnchor.constraint(equalToConstant: 100)
            
            ])
        
        
        //Image View 1
        
        
        Image1.image = UIImage(named: "Transbauformen.jpg")
        Image1.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(Image1)
        NSLayoutConstraint.activate([
            Image1.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            Image1.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            Image1.widthAnchor.constraint(equalToConstant: 278),
            Image1.heightAnchor.constraint(equalToConstant: 255)
            
            ])
        
        Imag1Label.text = "Transistor shapes and sizes"
        Imag1Label.translatesAutoresizingMaskIntoConstraints = false
        Imag1Label.textColor = .white
        Imag1Label.font = UIFont.systemFont(ofSize: 10)
        self.addSubview(Imag1Label)
        //Image1 Label Constraints
        NSLayoutConstraint.activate([
            
            Imag1Label.topAnchor.constraint(equalTo: Image1.bottomAnchor, constant: 10), Imag1Label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            Imag1Label.widthAnchor.constraint(equalToConstant: 300),
            Imag1Label.heightAnchor.constraint(equalToConstant: 15)
            
            
            ])
        
        //IMage view 2
        
        
        Image2.translatesAutoresizingMaskIntoConstraints = false
        Image2.image = UIImage(named: "Moore'sLaw.png")
        self.addSubview(Image2)
        NSLayoutConstraint.activate([
            Image2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            Image2.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50), Image2.topAnchor.constraint(equalTo: Imag1Label.bottomAnchor, constant: 35),
            Image2.widthAnchor.constraint(equalToConstant: 278),
            Image2.heightAnchor.constraint(equalToConstant: 255)
            
            ])
        
        Image2Label.text = "Moore's Law depicts the number of transistors per square inch on an IC"
        Image2Label.textColor = .white
        Image2Label.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(Image2Label)
        NSLayoutConstraint.activate([
            
            Image2Label.topAnchor.constraint(equalTo: Image2.bottomAnchor, constant: 10), Image2Label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            Image2Label.widthAnchor.constraint(equalToConstant: 300),
            Image2Label.heightAnchor.constraint(equalToConstant: 15)
            
            
            ])
        
        //The explanation Text View
        
        explanation.text = "A transistor is a semiconductor device used to amplify or switch electronic signals and electrical power.The transistor is the fundamental building block of modern electronic devices, and is ubiquitous in modern electronic systems.The transistor revolutionized the field of electronics, and paved the way for smaller and cheaper radios, calculators, and computers, among other things. Before transistors were developed, vacuum (electron) tubes  were the main active components in electronic equipment. Since Vibranium was a crucial part in the development of Captain America’s Shield and Black Panther’s suit, it’s safe to say that it’s analogous to the transistors in the Computer world because of the drastic powers it have enabled the Avengers to possess."
        explanation.isEditable = false
        explanation.backgroundColor = .clear
        explanation.textColor = .white
        explanation.font = UIFont.systemFont(ofSize: 16)
        explanation.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(explanation)
        NSLayoutConstraint.activate([ explanation.topAnchor.constraint(equalTo: CorrectLabel.bottomAnchor, constant: 100),
                                      
                                      explanation.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100), explanation.widthAnchor.constraint(equalToConstant: 278),
                                explanation.heightAnchor.constraint(equalToConstant: 500)
            ])
        
        
        
        //The Next View Button
        
        NextView.setTitle("Next Question", for: .normal)
        NextView.backgroundColor = .red
        NextView.translatesAutoresizingMaskIntoConstraints = false
        NextView.addTarget(self, action: #selector(NextViewAppear), for: .touchUpInside)
        self.addSubview(NextView)
        
        NSLayoutConstraint.activate([
            NextView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
            NextView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            
            NextView.widthAnchor.constraint(equalToConstant: 150),
            NextView.heightAnchor.constraint(equalToConstant: 30)
            
            
            ])
        
        
        
        
        
        
    }
    
    
    //Nexxt View func
    
    @objc func NextViewAppear(){
        self.removeFromSuperview()
        PlaygroundPage.current.liveView = EndGame(scene: UIView())
    }
}
