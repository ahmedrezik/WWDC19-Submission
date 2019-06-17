
import Foundation
import  UIKit
import PlaygroundSupport
import SpriteKit

public class DrStrange: UIView{
    
    var BackgroundImage = UIImageView()
    var QuestionLabel = UILabel()
    var Choice1 = UIButton()
    var Choice2 = UIButton()
    var Choice3 = UIButton()
    var Choice4 = UIButton()
    var ViewBar = UniverseBar(AtViewNumber: 5)
    var BarView = SKView()

    
    
    
    public init(scene: UIView) {
      super.init(frame: CGRect(x: 0, y: 0, width: 720, height: 580))
        ViewSetup()
        IntializeButtons()
    }
    
    //required intializer
    public required init?(coder aDecoder: NSCoder) {
        fatalError("Missing constructor")
    }
    
    
    
    //Setting up the view
    func ViewSetup(){
        
        //Background Image
        BackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        BackgroundImage.image = UIImage(named: "DRStrange3.jpg")
        BackgroundImage.contentMode = .scaleAspectFill
        
        self.addSubview(BackgroundImage)
        //Questionn
        QuestionLabel.text = "Which Person from the Computer Sceience Universe mosrt resembles Dr. Strange?"
        QuestionLabel.translatesAutoresizingMaskIntoConstraints = false
        QuestionLabel.font = UIFont(name: "Helvetica", size: 18)
        QuestionLabel.backgroundColor = .clear
        QuestionLabel.textColor = UIColor.red
        self.addSubview(QuestionLabel)
        //Background image constraints
        NSLayoutConstraint.activate([
            BackgroundImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0),
            BackgroundImage.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1.0),
            BackgroundImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            BackgroundImage.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            ])
        
        //Question Text constraints
        NSLayoutConstraint.activate([
            
            QuestionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            QuestionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            QuestionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5) , QuestionLabel.heightAnchor.constraint(equalToConstant: 150)
            ])

        
    }
    
    
    func IntializeButtons(){
        
        
        Choice1.translatesAutoresizingMaskIntoConstraints = false
        Choice2.translatesAutoresizingMaskIntoConstraints = false
        Choice3.translatesAutoresizingMaskIntoConstraints = false
        Choice4.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        Choice1.setTitle("Alan Turing", for: .normal)
        Choice2.setTitle("Claude Shannon", for: .normal)
        Choice3.setTitle("Muhammed Ali", for: .normal)
        Choice4.setTitle("von Nueman", for: .normal)
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
        Choice1.tintColor = UIColor.blue
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
        PlaygroundPage.current.liveView = CorrectAnswerAlanTuring(frame: UIView())
        
    }
    
    
    @objc func Choice1Clicked(){
        
        UIView.animate(withDuration: 0.7, delay: 0.3, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            self.Choice1.backgroundColor =  UIColor.green
            
        }), completion: { _ in
            self.Choice1.backgroundColor = UIColor.white
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
    
    @objc func Choice3Clicked(){
        
        
        UIView.animate(withDuration: 0.7, delay: 0.3, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            self.Choice3.backgroundColor =  UIColor.red
            
        }), completion: { _ in
            self.Choice3.backgroundColor = UIColor.white
        })
        
    }
    @objc func Choice4Clicked(){
        
        
        UIView.animate(withDuration: 0.7, delay: 0.3, options: UIView.AnimationOptions.curveEaseOut, animations: ({
            self.Choice4.backgroundColor =  UIColor.red
            
            
        }), completion: { _ in
            self.Choice4.backgroundColor = UIColor.white
        })
        
        
    }
    
    
    
    
    
}



//Correct Answer View

public class CorrectAnswerAlanTuring: UIView{
    
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
         background.image = UIImage(named: "drstrange4.jpg")
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
            CorrectLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            CorrectLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            CorrectLabel.widthAnchor.constraint(equalToConstant: 170),
            CorrectLabel.heightAnchor.constraint(equalToConstant: 100)
            
            ])
        
        
        //Image View 1
        
        
        Image1.image = UIImage(named: "Alan_Turing_Aged_16.jpg")
        Image1.contentMode = .scaleAspectFill
        Image1.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(Image1)
        NSLayoutConstraint.activate([
            Image1.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            Image1.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            Image1.widthAnchor.constraint(equalToConstant: 278),
            Image1.heightAnchor.constraint(equalToConstant: 255)
            
            ])
        
        
        Imag1Label.translatesAutoresizingMaskIntoConstraints = false
        Imag1Label.text = "Alan Turing at 16 years of age"
        Imag1Label.backgroundColor = .white
        self.addSubview(Imag1Label)
        NSLayoutConstraint.activate([
            
            Imag1Label.topAnchor.constraint(equalTo: Image1.bottomAnchor, constant: 65),
            Imag1Label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            Imag1Label.widthAnchor.constraint(equalToConstant: 270),
            Imag1Label.heightAnchor.constraint(equalToConstant: 13)
            
            
            ])
        
        //IMage view 2
        
        
        Image2.translatesAutoresizingMaskIntoConstraints = false
        Image2.image = UIImage(named: "Lego_Turing_Machine.jpg")
        Image2.contentMode = .scaleAspectFill
        self.addSubview(Image2)
        NSLayoutConstraint.activate([
            Image2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            Image2.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50),
            Image2.topAnchor.constraint(equalTo: Imag1Label.bottomAnchor, constant: 35),
            Image2.widthAnchor.constraint(equalToConstant: 278),
            Image2.heightAnchor.constraint(equalToConstant: 255)
            
            ])
        
        Image2Label.text = "A Turinng Machine Model"
        Image2Label.translatesAutoresizingMaskIntoConstraints = false
        Image2Label.backgroundColor = .white
        self.addSubview(Image2Label)
        NSLayoutConstraint.activate([
            
            Image2Label.topAnchor.constraint(equalTo: Image2.bottomAnchor, constant: 18),
            Image2Label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            Image2Label.widthAnchor.constraint(equalToConstant: 270),
            Image2Label.heightAnchor.constraint(equalToConstant: 13)
            
            
            ])
        
        //The explanation Text View
        
        explanation.text = "AlanTuring was an English mathematician, computer scientist, logician, cryptanalyst, and philosopher. Turing was highly influential in the development of theoretical computer science, providing a formalisation of the concepts of algorithm and computation with the Turing machine, which can be considered a model of a general-purpose computer. Turing is widely considered to be the father of theoretical computer science and artificial intelligence. As ingenious and smart as Dr. Strange, Turing led the efforts during World War 2 to crack enigma. Fun Fact: Actor Benedict Cumberbatch played both Dr.Starnge and Alan Turing in film "
        explanation.isEditable = false
        explanation.backgroundColor = .clear
        explanation.font = UIFont.boldSystemFont(ofSize: 14)
        
        explanation.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(explanation)
        NSLayoutConstraint.activate([ explanation.topAnchor.constraint(equalTo: CorrectLabel.bottomAnchor, constant: 40),
                                      
                                      explanation.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100), explanation.widthAnchor.constraint(equalToConstant: 278),
                                      explanation.heightAnchor.constraint(equalToConstant: 600)
            ])
        
        
        
        //The Next View Button
        
        NextView.setTitle("Next Question", for: .normal)
        //NextView.titleLabel?.font = UIFont(name: "Starjedi.ttf", size: 30)
        NextView.tintColor = .blue
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
        let nextview = Vibranium(frame: UIView())
        PlaygroundPage.current.liveView = nextview
    }
}


